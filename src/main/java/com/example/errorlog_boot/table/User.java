package com.example.errorlog_boot.table;

import com.example.errorlog_boot.dto.UserDto;
import com.example.errorlog_boot.util.TimeStamped;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.NonNull;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@NoArgsConstructor
@Getter
@Entity
@Table(name = "users")
public class User extends TimeStamped {
    @Id
    private int no;

    @NonNull
    @Column
    private String id, pw, name,  phone, email, imagefile;

    @Column
    private String info;

    public User(UserDto userDto){
        this.no = userDto.getNo();
        this.id = userDto.getId();
        this.pw = userDto.getPw();
        this.name = userDto.getName();
        this.phone = userDto.getPhone();
        this.email = userDto.getEmail();
        this.imagefile = userDto.getImagefile();
        this.info = userDto.getInfo();
    }

    // 회원정보 변경시 사용할 메서드
    public void update(UserDto userDto){
        this.pw = userDto.getPw();
        this.phone = userDto.getPhone();
        this.imagefile = userDto.getImagefile();
        this.info = userDto.getInfo();
    }

}
