package cn.service.impl;

import cn.service.IUserIdObtainService;

import java.util.ArrayList;
import java.util.List;

/**
 * @Author: menfeng
 * @Date: 2019/12/24 16:56
 * @Version 1.0
 */
public class UserIdObtainServiceImpl implements IUserIdObtainService {

    @Override
    public List<String> obtain(String clientName, String id) {
        //由于这里目前只做测试所以只返回当前的id，在正常的情况逻辑应该如下

        //根据校验client以及登录的id找到其他同一个用户的所有校验id返回，如通过邮箱登录的id，通过github登录的id等等
        List<String> ids = new ArrayList<>();
        ids.add(id);
        return ids;
    }
}
