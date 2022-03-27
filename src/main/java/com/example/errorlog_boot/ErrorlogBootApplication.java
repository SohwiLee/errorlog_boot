package com.example.errorlog_boot;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.data.jpa.repository.config.EnableJpaAuditing;

@EnableJpaAuditing
@SpringBootApplication
public class ErrorlogBootApplication {

    public static void main(String[] args) {
        SpringApplication.run(ErrorlogBootApplication.class, args);
    }

}
