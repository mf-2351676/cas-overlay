package cn.config;

import cn.listener.TGTCreateEventListener;
import cn.service.TriggerLogoutService;
import cn.service.impl.UserIdObtainServiceImpl;
import org.apereo.cas.CentralAuthenticationService;
import org.apereo.cas.configuration.CasConfigurationProperties;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.context.properties.EnableConfigurationProperties;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;

/**
 * @Author: menfeng
 * @Date: 2019/12/24 16:58
 * @Version 1.0
 */
@Configuration("singleLogoutTriggerConfiguration")
@EnableConfigurationProperties(CasConfigurationProperties.class)
public class SingleLogoutTriggerConfiguration {

    @Autowired
    private CentralAuthenticationService centralAuthenticationService;

    /**
     * 触发登出服务
     *
     * @return 触发登出服务
     */
    @Bean
    protected TriggerLogoutService triggerLogoutService() {
        return new TriggerLogoutService(centralAuthenticationService);
    }

    @Bean
    //注册事件监听tgt的创建
    protected TGTCreateEventListener tgtCreateEventListener() {
        TGTCreateEventListener listener = new TGTCreateEventListener(triggerLogoutService(), new UserIdObtainServiceImpl());
        return listener;
    }
}
