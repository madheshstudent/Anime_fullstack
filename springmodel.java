package com.maddy.maddy;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.Id;
import jakarta.persistence.Table;

@Entity
@Table(name="animedata")
public class springmodel {
    @Id
    @GeneratedValue
    int sno;
    String name;
    void setsno(int sn){
        this.sno=sn;
    }
    void setname(String n){
        this.name=n;
    }
    int getsno(){
        return sno;
    }
    String getname(){
        return name;
    }
}
