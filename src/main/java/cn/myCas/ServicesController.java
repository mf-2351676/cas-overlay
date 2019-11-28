package cn.myCas;

import com.sun.corba.se.spi.activation.ServerManager;
import lombok.extern.slf4j.Slf4j;
import org.apereo.cas.services.RegexRegisteredService;
import org.apereo.cas.services.RegisteredService;
import org.apereo.cas.services.ReturnAllAttributeReleasePolicy;
import org.apereo.cas.services.ServicesManager;
import org.apereo.cas.support.oauth.services.OAuthRegisteredService;
import org.apereo.cas.support.oauth.web.flow.OAuth20RegisteredServiceUIAction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.web.bind.annotation.*;

import java.net.URL;
import java.util.HashMap;
import java.util.Map;

/**
 * @Author: menfeng
 * @Date: 2019/11/12 17:58
 * @Version 1.0
 */
@RestController
public class ServicesController {

    @Autowired
    @Qualifier("servicesManager")
    private ServicesManager servicesManager;

    @RequestMapping(value = "/addClient",method = RequestMethod.POST)
    public Object addClient(String serviceId,int id,String name) {
        try {
            String url = "^(https|imaps|http)://.*";
            if (!"".equals(serviceId) && null!=serviceId){
                url="^(https|imaps|http)://"+serviceId+".*";
            }
            RegexRegisteredService service = new RegexRegisteredService();
            ReturnAllAttributeReleasePolicy re = new ReturnAllAttributeReleasePolicy();
            service.setServiceId(url);
            service.setId(id);
            service.setAttributeReleasePolicy(re);
            service.setName(name);
            //这个是为了单点登出而作用的
            if (!"".equals(serviceId) && null!=serviceId){
                service.setLogoutUrl(new URL("http://"+serviceId));
            }
            servicesManager.save(service);
            //执行load让他生效
            servicesManager.load();
            Map<String, Object> map = new HashMap<>();
            map.put("code",200);
            map.put("message","添加成功");
            return map;
        } catch (Exception e) {
            Map<String, Object> map = new HashMap<>();
            map.put("code",500);
            map.put("message","添加失败");
            System.out.println(e);
            return map;
        }
    }

    /**
     * 删除service异常
     * @param serviceId
     * @return
     */
    @RequestMapping(value = "/deleteClient",method = RequestMethod.DELETE)
    public Object deleteClient(@RequestParam("serviceId") String serviceId) {
        try {
            String url="http://"+serviceId;
//            RegexRegisteredService service = new RegexRegisteredService();
//            service.setServiceId(url);
//            service.setId(id);
            RegisteredService service = servicesManager.findServiceBy(url);
            servicesManager.delete(service);
            //执行load生效
            servicesManager.load();
            Map<String, Object> map = new HashMap<>();
            map.put("code",200);
            map.put("message","删除成功");
            return map;
        } catch (Exception e) {
            Map<String, Object> map = new HashMap<>();
            map.put("code",500);
            map.put("message","删除失败");
            System.out.println(e);
            return map;
        }
    }

    @RequestMapping(value = "/addOAuth",method = RequestMethod.POST)
    public Object addOAuth(String serviceId,String clientId,String name,String clientSecret){
        try{
            String url = "^(https|imaps|http)://.*";
            if (!"".equals(serviceId) && null!=serviceId){
                url="^(https|imaps|http)://"+serviceId+".*";
            }
            OAuthRegisteredService service = new OAuthRegisteredService();
            ReturnAllAttributeReleasePolicy re = new ReturnAllAttributeReleasePolicy();
            service.setServiceId(url);
            service.setClientId(clientId);
            service.setClientSecret(clientSecret);
            service.setAttributeReleasePolicy(re);
            service.setName(name);
            //这个是为了单点登出而作用的
            if (!"".equals(serviceId) && null!=serviceId){
                service.setLogoutUrl(new URL("http://"+serviceId));
            }
            servicesManager.save(service);
            //执行load让他生效
            servicesManager.load();
            Map<String, Object> map = new HashMap<>();
            map.put("code",200);
            map.put("message","添加成功");
            return map;
        }catch (Exception e){
            Map<String, Object> map = new HashMap<>();
            map.put("code",500);
            map.put("message","添加失败");
            System.out.println(e);
            return map;
        }
    }

}
