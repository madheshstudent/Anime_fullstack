package com.maddy.maddy;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;
import java.util.List;



@RestController
@CrossOrigin("http://localhost:8082/")
@RequestMapping("/anime")
public class controller {
    @Autowired
    Repository repo;

    @PostMapping("/savedata")
    public String savedata(@RequestBody springmodel s) {
        //TODO: process POST request
        repo.save(s);
        return "insetion success";
    }

    @GetMapping("/getdata")
    List<springmodel> getdata(){
        return repo.findAll();
    }
    
    
}
