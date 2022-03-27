package com.example.errorlog_boot.dto;

import lombok.Getter;
import lombok.NoArgsConstructor;

@NoArgsConstructor
@Getter
public class UserDto {
    private int no;
    private String id, pw, name, phone, email, imagefile, info;

    public UserDto(int no, String id, String pw, String name, String phone, String email, String imagefile, String info){
        this.no = no;
        this.id = id;
        this.pw = pw;
        this.name = name;
        this.phone = phone;
        this.imagefile = imagefile;
        this.email = email;
        this.info = info;
    }
}
