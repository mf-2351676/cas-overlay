package cn.service;

import java.util.List;

/**
 * @Author: menfeng
 * @Date: 2019/12/24 16:55
 * @Version 1.0
 */
public interface IUserIdObtainService {

    public List<String> obtain(String clientName, String id);

}
