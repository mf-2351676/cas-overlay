package cn.service;

import java.util.Map;

/**
 * @Author: menfeng
 * @Date: 2019/12/24 10:03
 * @Version 1.0
 */
public interface UserService {

    Map<String,Object> findAllByUserName(String userName);
}
