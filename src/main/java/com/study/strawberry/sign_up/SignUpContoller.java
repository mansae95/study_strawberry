package com.study.strawberry.sign_up;
import java.util.HashMap;
import java.util.Map;
import java.util.UUID;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
// #### 이용약관 체크시 토큰 처리 컨트롤러
public class SignUpContoller {

    @Autowired
    private SqlSession sqlSession;

    @RequestMapping(value = "member/sign_up")
    public ModelAndView signUP(HttpServletRequest request, HttpServletResponse response) throws Exception {

        return new ModelAndView("member/signup/agreement");
    }


    @RequestMapping(value = "member/signup/emailCheckForm")
    public ModelAndView emailCheckForm(HttpServletRequest request, HttpServletResponse response) throws Exception {
        return new ModelAndView("member/signup/emailCheckForm");
    }

    @RequestMapping(value = "member/signup/nicknameCheckForm")
    public ModelAndView nicknameCheckForm(HttpServletRequest request, HttpServletResponse response) throws Exception {
        return new ModelAndView("member/signup/nicknameCheckForm");
    }

    @RequestMapping(value = "member_join")
    public ModelAndView memberJoin(HttpServletRequest request, HttpServletResponse response) throws Exception {
        //mybatis 세션 호출
        SignUpMapper mapper = sqlSession.getMapper(SignUpMapper.class);

        //토큰 생성
        UUID uuid = UUID.randomUUID();
        String token = uuid.toString();

        //클라이언트 ip 추출
        String ip = request.getHeader("X-Forwarded-For");

        if (ip == null) {
            ip = request.getHeader("Proxy-Client-IP");
        }
        if (ip == null) {
            ip = request.getHeader("WL-Proxy-Client-IP");
        }
        if (ip == null) {
            ip = request.getHeader("HTTP_CLIENT_IP");
        }
        if (ip == null) {
            ip = request.getHeader("HTTP_X_FORWARDED_FOR");
        }
        if (ip == null) {
            ip = request.getRemoteAddr();
        }

        //선택정보 수신여부(체크박스 값) 입력
        String ad_agree_yn = request.getParameter("ad_agree_yn");
        if(ad_agree_yn!=null && ad_agree_yn.equals("on")){
            ad_agree_yn = "Y";
        }else{
            ad_agree_yn = "N";
        }

        //토큰정보 입력 Map
        Map<String,Object> param = new HashMap<String,Object>();
        param.put("token", token);
        param.put("ip", ip);
        param.put("ad_agree_yn",ad_agree_yn);
        
        //토큰정보 db 입력
        mapper.insertToken(param);
        
        //토큰 담긴 view 지정
        ModelAndView mv = new ModelAndView();
        mv.addObject("token",token);
        mv.setViewName("member/signup/member_join");
        
        return mv;
    }


}
