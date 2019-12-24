package cn.config;

import org.mybatis.spring.annotation.MapperScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.stereotype.Component;

/**
 * @Author: menfeng
 * @Date: 2019/12/24 9:59
 * @Version 1.0
 */
@Configuration
@MapperScan(value = {"cn.dao.**"})
@Component
public class MybatisConfig {

}
