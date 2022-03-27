package com.example.errorlog_boot.controller;

import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@RequiredArgsConstructor
@Controller
public class MainController {

    private final UserController userController;

    @GetMapping("/")
    public String goIndex() {
        return "index";
    }

    @GetMapping("/goMain")
    public String goMain() {
        return "main";
    }

////    @GetMapping("/goTest") // 마크다운 테스트용
////    public String goTest(){
////        return "user/test";
////    }
//
//
//    @GetMapping("/goWriteFeed")
//    public String goWriteFeed() {
//        return "feed/write";
//    }
//
//    @GetMapping("/goAllFeed")
//    public String goAllFeed() {
//        return "feed/allFeed";
//    }
//
//    @RequestMapping("/goFeed/no={no}")
//    public String goFeed(Model model, @PathVariable int no){
//        model.addAttribute("no",no);
//        return "feed/Feed";
//    }
//
//    @GetMapping("/goJoin")
//    public String goJoin() {
//        return "user/join";
//    }
//
//    @GetMapping("/goTetris")
//    public String goTetris() {
//        return "game/tetris";
//    }
//
    @PostMapping("/goLogin")
    public String goLogin(HttpServletRequest request, HttpServletResponse response) throws IOException {
        return userController.checkLogin(request, response);
    }
//    @GetMapping("/goMarkdown")
//    public String goMarkdown(){
//        return "user/markdown";
//    }
//
//    @GetMapping("/all-members")
//    public String selectMembers(Model model) {
//        List<MemberDto> memberList = memberService.selectMembers();
//        model.addAttribute("memberList", memberList);
//        System.out.println("컨트롤러 리!턴!");
//        return "viewAllUser";
//    }
//
//    @PostMapping("/post-feed")
//    public String writeFeed(HttpServletRequest request) throws UnsupportedEncodingException {
//        request.setCharacterEncoding("utf-8");
//        String id = request.getParameter("id");
//        String imagefile = request.getParameter("imagefile");
//        String content = request.getParameter("content");
//
//        FeedDto feed = new FeedDto(id,imagefile,content);
//        System.out.println(feed);
//        feedRestController.writeFeed(feed);
//        return "feed/allFeed";
//    }
}
