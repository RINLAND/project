package com.setup.test2.Ctr;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/grp_admin")
public class AdminCtr {
	
	@RequestMapping("") //localhost:5678/grp/grp_admin -> �����ڷ� �α��ν� �̵�
	public String grpAdmin() {
		return"grp_admin/grp_admin.main";
	}

}
