package com.example.errorlog_boot.controller;

import com.example.errorlog_boot.service.UserService;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RestController;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

@RequiredArgsConstructor
@RestController
@Controller
public class UserController {
    private final UserService userService;

    // 로그인
    public String checkLogin(HttpServletRequest request, HttpServletResponse response) throws IOException {
        String url = null;

        response.setContentType("text/html; charset=UTF-8");
        PrintWriter out = response.getWriter();

        if(userService.checkLogin(request)){
            out.println("<script>alert('로그인되었습니다'</script>");
            url = "main";
        }else{
            out.println("<script>alert('로그인 실패'</script>");
            url = "index";
        }
        out.flush();
        return url;
    }
}
