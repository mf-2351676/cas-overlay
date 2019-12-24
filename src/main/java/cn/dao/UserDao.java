package cn.dao;


import cn.entity.User;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import java.util.Map;
@Mapper
public interface UserDao {

    public Map<String, Object> findAllByUserName(@Param("userName") String userName);
}