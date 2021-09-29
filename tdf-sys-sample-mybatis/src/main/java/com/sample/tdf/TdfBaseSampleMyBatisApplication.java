package com.sample.tdf;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.cache.annotation.EnableCaching;
import org.springframework.transaction.annotation.EnableTransactionManagement;

@EnableTransactionManagement
@EnableCaching
@SpringBootApplication(scanBasePackages = {"com.sample.tdf", "cn.com.taiji"})
public class TdfBaseSampleMyBatisApplication {

    public static void main(String[] args) {
        SpringApplication.run(TdfBaseSampleMyBatisApplication.class, args);
    }
}
