package com.code.rts;

import lombok.extern.slf4j.Slf4j;
import org.mybatis.spring.annotation.MapperScan;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.scheduling.annotation.EnableAsync;
import org.springframework.scheduling.annotation.EnableScheduling;
import org.springframework.transaction.annotation.EnableTransactionManagement;

@ComponentScan(basePackages = "com.code.rts")
@MapperScan(basePackages = "com.code.rts.dao")
@EnableAsync
@EnableScheduling
@EnableTransactionManagement
@Slf4j
@SpringBootApplication
public class RTSApplication {

    public static void main(String[] args) {
        SpringApplication.run(RTSApplication.class, args);
    }

}
