package com.setup.test2.Ctr;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.setup.test2.Model.SysVO;
import com.setup.test2.Service.SysSrv;



@Controller
@RequestMapping("/system")
public class SysCtr {
	
	@Autowired
	SysSrv sysSrv;

	@RequestMapping(value="", method = RequestMethod.GET)
	public String getSystem() {
		return "grp_system/grp_system_main";
	}
	
	@RequestMapping(value="", method = RequestMethod.POST)
	@ResponseBody
	public SysVO getSystemInfo() {
		SysVO svo = sysSrv.getSystem();
		return svo;
	}
	
	@RequestMapping(value="/grp_system", method = RequestMethod.POST)
	public String getSystem(@ModelAttribute SysVO svo) {
		sysSrv.setSystem(svo);
		return "grp_system/grp_system_main";
	}

}
