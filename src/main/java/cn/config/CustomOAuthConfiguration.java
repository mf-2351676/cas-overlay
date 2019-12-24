package cn.config;

import cn.service.UserService;
import cn.service.impl.UserServiceImpl;
import org.apereo.cas.configuration.CasConfigurationProperties;
import org.apereo.cas.support.oauth.web.views.OAuth20UserProfileViewRenderer;
import org.springframework.boot.context.properties.EnableConfigurationProperties;
import org.springframework.cloud.context.config.annotation.RefreshScope;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;

/**
 * @Author: menfeng
 * @Date: 2019/12/24 14:11
 * @Version 1.0
 */
@Configuration("customAuthenticationConfiguration")
@EnableConfigurationProperties(CasConfigurationProperties.class)
public class CustomOAuthConfiguration {

    @Bean
    @RefreshScope
    public OAuth20UserProfileViewRenderer oauthUserProfileViewRenderer() {
        UserManages userManages = new UserManages();
        return userManages;
    }

    @Bean
    public UserService userService() {
        return new UserServiceImpl();
    }
}
