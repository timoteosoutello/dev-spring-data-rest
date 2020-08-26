package com.github;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.web.servlet.support.SpringBootServletInitializer;

/**
 * Spring initialization class
 * 
 * @author Timóteo Soutello
 *
 */
@SpringBootApplication
public class SpringMain extends SpringBootServletInitializer {
  public static void main(final String[] args) {
    SpringApplication.run(SpringMain.class, args);
  }
}
