package com.setup.test2.Ctr;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;

import com.setup.test2.Model.Notice.NoticeBoardVO;
import com.setup.test2.Service.AdminSrv;
import com.setup.test2.Service.Notice.NoticeBoardSrv;

@Controller
@RequestMapping("/grp_admin")
public class AdminCtr {
	
	
	
	 @Autowired
	 private AdminSrv aSrv;
		private NoticeBoardSrv boardSvc;

	//리스트
	@RequestMapping("")
    public String index(HttpServletRequest request, ModelMap modelMap) {
        
        
	
        List<?> noticeList = aSrv.selectNoticeListTop5();
        
        
       
        modelMap.addAttribute("noticeList", noticeList);
        

        return "grp_admin/grp_admin_main";
    }
	
	
}
