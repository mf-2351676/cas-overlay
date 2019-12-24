package cn.service.impl;

import cn.dao.UserDao;
import cn.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.Map;

/**
 * @Author: menfeng
 * @Date: 2019/12/24 10:03
 * @Version 1.0
 */
@Service
public class UserServiceImpl implements UserService {

    @Autowired
    private UserDao userDao;

    @Override
    public Map<String,Object> findAllByUserName(String userName){
        return userDao.findAllByUserName(userName);
    }

}
