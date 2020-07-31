package cn.config;


import cn.service.UserService;
import lombok.extern.slf4j.Slf4j;
import org.apereo.cas.support.oauth.util.OAuth20Utils;
import org.apereo.cas.support.oauth.web.views.OAuth20UserProfileViewRenderer;
import org.springframework.beans.factory.annotation.Autowired;
import org.apereo.cas.ticket.accesstoken.AccessToken;

import java.util.Map;

/**
 * @Author: menfeng
 * @Date: 2019/12/24 13:34
 * @Version 1.0
 */
@Slf4j
public class UserManages implements OAuth20UserProfileViewRenderer {
    @Autowired
    private UserService userService;

    @Override
    public String render(Map<String, Object> model, AccessToken accessToken) {
        String userName = (String) model.get("id");
        log.error("userName = {}", userName);
        if (!"".equals(userName) && null != userName) {
            return OAuth20Utils.jsonify(userService.findAllByUserName(userName));
        }
        return null;
    }
}
