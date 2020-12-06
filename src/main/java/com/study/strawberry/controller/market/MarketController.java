package com.study.strawberry.controller.market;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.validation.Valid;

import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class MarketController {

	/* Example - market write
	 * GET 요청시 글쓰기 페이지 반환하고 POST요청으로 접속시 폼전송으로 판단하여 DTO에 집어넣습니다.
	 * DTO에 있는 필드네임과 폼전송시 넘어온 네임필드 값과 일치해야하니 참고하시고
	 * 네임필드 값은 WriteFormData.java 참고해주시면 됩니다.
	 * 테스트 가능할 정도만 기능 넣어두었으니 베이스로 깔고 만드시면 될꺼 같습니다! */
	@RequestMapping(value = "market/write", method = {RequestMethod.GET, RequestMethod.POST})
	public ModelAndView marketWrite(HttpServletRequest request, HttpServletResponse response,
			@ModelAttribute("marketWriteForm") @Valid WriteFormData dto, BindingResult result) {
		
		ModelAndView mav = new ModelAndView("market/write");
		
		if(request.getMethod().contentEquals("POST")) {
			System.out.println("post 진입");
			
			if(result.hasErrors()) return mav;
			else {
				System.out.println(dto);
			}
		}
		
		mav.addObject("marketWriteForm", null);
		return mav;
	}
	
	/*Example - ckeditor4 image upload.
	 * 이것또한 마찬가지로 테스트 가능할정도의 기능만 넣어두었으니 참고만 하시고
	 * ckeditor4에서 이미지 업로드 후 반환값이 json형식으로 {uploaded:1, fileName:"파일이름.확장자", url:"/~/파일이름.확장자"}
	 * 위와같이 반환되어야 ckeditor iframe안에 들어가게 되니 준수해서 넘기시면 됩니다.
	 * 아래는 코드는 그냥 어떤 파일을 업로드요청하던 테스트파일만 반환해주니 저런 형식인걸로 참고해주심 됩니다.
	 * */
	@PostMapping(value = "util/upload")
	public ModelAndView fileUpload(HttpServletRequest request, HttpServletResponse response, 
			MultipartHttpServletRequest file) {
		ModelAndView mav = new ModelAndView("jsonView");
		
		System.out.println(file.getFile("upload").getOriginalFilename());
		
		mav.addObject("uploaded",1);
		mav.addObject("fileName","제목 없음.jpg");
		mav.addObject("url","/resources/image/test/제목 없음.jpg");
		return mav;
	}
	
	/* etc) 뷰단에서 javascript로 에러날만한 부분들 다 잡아놓고 서버에서 보낸 에러내역 출력해주어야하는데 
	 * 생각없이 레이아웃을 꾸미다보니 에러를 넣을만한 공간이 안나오더라구요... 기능 뻇습니다... 에러 발생시 따로 에러페이지를 리턴시켜주세요..*/
}
