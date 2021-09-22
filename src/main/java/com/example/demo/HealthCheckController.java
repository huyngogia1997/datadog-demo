package com.example.demo;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import java.util.concurrent.ThreadLocalRandom;

@RestController
public class HealthCheckController {
    @GetMapping("/check-health")
    public String checkHealth(){
        return "OK";
    }

    @GetMapping("/random-deplay")
    public String ramdomDeplay() throws InterruptedException {
        int ramdomInt = ThreadLocalRandom.current().nextInt(-3, 3 + 1);
        Thread.sleep(ramdomInt*1000);
        return "Sleep: "+ramdomInt;
    }
}
