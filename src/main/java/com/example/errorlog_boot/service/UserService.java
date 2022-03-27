package com.example.errorlog_boot.service;

import com.example.errorlog_boot.repository.*;
import com.example.errorlog_boot.table.*;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

@RequiredArgsConstructor
@Service
public class UserService {
    private final UserRepository userRepository;

    // 모든 유저 가져오기
    public List<User> getUsers() {
        List<User> users = null;
        users = userRepository.findAll();
        return users;
    }

    // 아이디로 로그인 가능한지 확인하기
    public boolean checkLogin(HttpServletRequest request) {
        String id = (String) request.getParameter("id");
        String pw = (String) request.getParameter("pw");

        List<User> users = getUsers();
        boolean logCheck = false;

        // 로그인 성공 여부에 따라 알림창
        for (User user : users) {
            if (user.getId().equals(id) && user.getPw().equals(pw)) { // 로그인 성공

               logCheck = true;
               HttpSession session = request.getSession();
               session.setAttribute("log", id);
            }
        }
        return logCheck;
    }
}
