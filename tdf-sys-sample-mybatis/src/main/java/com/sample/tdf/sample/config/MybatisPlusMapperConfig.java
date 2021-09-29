package com.sample.tdf.sample.config;

import org.mybatis.spring.annotation.MapperScan;
import org.springframework.context.annotation.Configuration;

@Configuration
@MapperScan(basePackages = {"com.sample.tdf.*.mapper"})
public class MybatisPlusMapperConfig {

}