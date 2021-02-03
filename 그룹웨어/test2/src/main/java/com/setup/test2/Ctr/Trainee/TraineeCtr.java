package com.setup.test2.Ctr.Trainee;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.setup.test2.Model.EmpVO;
import com.setup.test2.Model.TraineeVO;
import com.setup.test2.Srv.Trainee.TraineeSrv;

import pager.Pager;

@Controller
@RequestMapping("/Trainee")
public class TraineeCtr {
	
	@Autowired
	TraineeSrv tSrv;
	
	@Resource(name="uploadPath")
	private String uploadPath;

	@RequestMapping("")
	public String getTraineeHome() {
		return "grp_trainee/grp_trainee";
	}
	
	@RequestMapping(value="/grp_trainee_list")
	public ModelAndView getTraListAll(
			@RequestParam(defaultValue = "") String words, 
			@RequestParam(defaultValue = "trainee_name") String searchOpt,
			@RequestParam(defaultValue = "1") int curPage ) 
	
	{
		
		int count = tSrv.getTraCount(searchOpt, words);
		
		Pager pager = new Pager(count, curPage);
		
		int start = pager.getPageBegin();
		int end = pager.getPageEnd();
		
		List<TraineeVO> list = tSrv.getTraListAll(start, end, words, searchOpt);
		
		
		ModelAndView mav = new ModelAndView();
		mav.addObject("list", list);
		mav.addObject("count", count);
		mav.addObject("searchOpt", searchOpt);
		mav.addObject("words", words);
		mav.addObject("start", start);
		mav.addObject("end", end);
		mav.addObject("blockBegin", pager.getBlockBegin());
		mav.addObject("blockEnd", pager.getBlockEnd());
		mav.addObject("curBlock", pager.getCurBlock());
		mav.addObject("totalBlock", pager.getTotBlock());
		mav.addObject("prevPage", pager.getPrevPage());
		mav.addObject("nextPage", pager.getNextPage());
		mav.addObject("totalPage", pager.getTotPage());
		mav.addObject("curPage", pager.getCurPage());
		mav.addObject("selected", pager.getCurPage());
		mav.setViewName("grp_trainee/grp_trainee");
		return mav;
	}
	
	@RequestMapping(value = "/grp_trainee_delete", method = RequestMethod.POST)
	@ResponseBody
	public String setTraDeleteOne(@RequestParam int traID) {
		System.out.println(traID);
		tSrv.setTraDeleteOne(traID);
		return "success";
	}
	
	@RequestMapping(value="/grp_trainee_register", method = RequestMethod.GET)
	public String setTraRegister() {
		return "grp_trainee/grp_trainee_insert";
	}
	
	
	@RequestMapping(value="/grp_trainee_register", method = RequestMethod.POST)
	public String setTraRegister(TraineeVO tvo) {
		tSrv.setTraRegister(tvo);
		return "grp_trainee/grp_trainee";
	}

}
