package com.kanadem.controlcabin;

import org.mybatis.spring.annotation.MapperScan;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

@SpringBootApplication
@MapperScan("com.kanadem.controlcabin.Dao")
public class ControlcabinApplication {

  public static void main(String[] args) {
    SpringApplication.run(ControlcabinApplication.class, args);
  }

}
