package com.setup.test2.Ctr.teemBoard;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.io.FilenameUtils;
import org.apache.commons.lang.RandomStringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RequestPart;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.setup.test2.Model.ArticleVO;
import com.setup.test2.Model.BoardVO;
import com.setup.test2.Service.teemBoard.ArticleSrv;

import pager.Pager;

@Controller
@RequestMapping("/article")
public class ArticleCtr {
	@Autowired
	ArticleSrv aSrv;
	
	@RequestMapping("grp_article_list")
	public ModelAndView getArticleList(@RequestParam String boardCode, 
			//paging
			@RequestParam(defaultValue = "1") int curPage) {
		
		ModelAndView mav = new ModelAndView();
		
		BoardVO info = aSrv.getBoardInfo(boardCode);
		
		int count = aSrv.getArticleCount(boardCode);
		
		//*************************************����¡************************************************		
		Pager pager = new Pager(count, curPage);
		int start = pager.getPageBegin();
		int end = pager.getPageEnd();
	//*******************************************************************************************
	 
		
		
		mav.addObject("boardTitle", info.getBoardTitle());
		mav.addObject("boardColor", info.getBoardColor());
		
		mav.addObject("boardCode", boardCode);
		
		mav.addObject("count", count);
		
		mav.addObject("list", aSrv.getArticleList(boardCode, start, end));
		
		
		mav.addObject("start", start); 
		mav.addObject("end", end);  
		
		mav.addObject("blockBegin", pager.getBlockBegin());
		mav.addObject("blockEnd", pager.getBlockEnd());
		mav.addObject("curBlock", pager.getCurBlock());
		mav.addObject("totalBlock", pager.getTotBlock());
		
		mav.addObject("prevPage", pager.getPrevPage());
		mav.addObject("nextPage", pager.getNextPage());
		mav.addObject("curPage", pager.getCurPage());
		mav.addObject("totalPage", pager.getTotPage());
		
	
		mav.addObject("selected", pager.getCurPage());
		
		
		
		
		
		mav.setViewName("grp_board/grp_article_list");
		return mav;
		
	}
	
	@RequestMapping(value="grp_article_insert", method=RequestMethod.GET)
	public ModelAndView getArticleInsert(@RequestParam String boardCode) {
		ModelAndView mav = new ModelAndView();
		
		BoardVO info = aSrv.getBoardInfo(boardCode);
		
		mav.addObject("boardTitle", info.getBoardTitle());
		mav.addObject("boardColor", info.getBoardColor());
		mav.addObject("boardCode", boardCode);
		
		mav.setViewName("grp_board/grp_article_insert");
		return mav;
	}
	
	@RequestMapping(value="grp_article_insert", method=RequestMethod.POST)
	public String setArticleInsert(
			@ModelAttribute ArticleVO avo, 
			@RequestPart MultipartFile files) throws IllegalStateException, IOException {
		
		
		if( files.isEmpty() ) { 
			aSrv.setArticle(avo);
			
			
		}else { 
			String fileUrl 		= "C://upload//article//"; 
			String fileName		= files.getOriginalFilename(); 
			String fileNameEx	= FilenameUtils.getExtension(fileName).toLowerCase(); 
			
			File desFile;
			String desFileName;
			
			do {
				desFileName = RandomStringUtils.randomAlphanumeric(32) + "." + fileNameEx;
				desFile	= new File(fileUrl + desFileName);
				
			}while(desFile.exists());
				desFile.getParentFile().mkdirs(); 
				files.transferTo(desFile);
				
				avo.setFileName(desFileName);
				avo.setFileOriName(fileName);
				avo.setFileUrl(fileUrl);
			
			aSrv.setArticle(avo);
		}
		
		return "redirect:/article/grp_article_list?boardCode="+avo.getBoardCode();
	}
	
	@RequestMapping(value="grp_article_view", method=RequestMethod.GET)
	public ModelAndView getArticleView(@RequestParam String boardCode, @RequestParam int aid) {
		
		aSrv.hitUp(boardCode, aid);
		
		ModelAndView mav = new ModelAndView();
		
		BoardVO info = aSrv.getBoardInfo(boardCode);
		
		mav.addObject("boardTitle", info.getBoardTitle());
		mav.addObject("boardColor", info.getBoardColor());
		
		mav.addObject("view", aSrv.getArticleView(boardCode, aid));
		
		mav.addObject("boardCode", boardCode);
		
		mav.setViewName("grp_board/grp_article_view");
		
		return mav;
	}
	
	
	
	
	@RequestMapping(value="grp_article_reply", method=RequestMethod.GET)
	public ModelAndView getArticleReply(
			@RequestParam String boardCode, @RequestParam int aid ) {
		ModelAndView mav = new ModelAndView();
		
		BoardVO info = aSrv.getBoardInfo(boardCode);
		
		mav.addObject("boardTitle", info.getBoardTitle());
		mav.addObject("boardColor", info.getBoardColor());
		mav.addObject("boardCode", boardCode);
		mav.addObject("view", aSrv.getArticleView(boardCode, aid));
		
		mav.setViewName("grp_board/grp_article_reply");
		return mav;
	}
	
	
	
	@RequestMapping(value="grp_article_reply", method=RequestMethod.POST)
	public String setArticleReplyDo(
			@ModelAttribute ArticleVO avo, 
			@RequestPart MultipartFile files) throws IllegalStateException, IOException {
		
		
		if( files.isEmpty() ) { 
			aSrv.setArticleReply(avo);
			
			
		}else { 
			String fileUrl 		= "C://upload//article//"; 
			String fileName		= files.getOriginalFilename(); 
			String fileNameEx	= FilenameUtils.getExtension(fileName).toLowerCase(); 
			
			File desFile;
			String desFileName;
			
			do {
				desFileName = RandomStringUtils.randomAlphanumeric(32) + "." + fileNameEx;
				desFile	= new File(fileUrl + desFileName);
				
			}while(desFile.exists());
				desFile.getParentFile().mkdirs(); 
				files.transferTo(desFile);
				
				avo.setFileName(desFileName);
				avo.setFileOriName(fileName);
				avo.setFileUrl(fileUrl);
			
				aSrv.setArticleReply(avo);
		}
		
		return "redirect:/article/grp_article_list?boardCode="+avo.getBoardCode();
	}
	
	
	
	@RequestMapping(value = "/grp_article_download", method = RequestMethod.GET)
	public void fileDown(
			@ModelAttribute ArticleVO avo,
			HttpServletRequest request, 
			HttpServletResponse response)
			throws Exception {

		request.setCharacterEncoding("UTF-8");
		ArticleVO vo = aSrv.getArticleView(avo.getBoardCode(), avo.getAid());

		
		try {
			String fileUrl = vo.getFileUrl();
			fileUrl += "/";
			String savePath = fileUrl;
			String fileName = vo.getFileName();

			
			String oriFileName = vo.getFileOriName();
			InputStream in = null;
			OutputStream os = null;
			File file = null;
			boolean skip = false;
			String client = "";

			
			try {
				file = new File(savePath, fileName);
				in = new FileInputStream(file);
			} catch (FileNotFoundException fe) {
				skip = true;
			}

			client = request.getHeader("User-Agent");

			
			response.reset();
			response.setContentType("application/octet-stream");
			response.setHeader("Content-Description", "JSP Generated Data");

			if (!skip) {
				// IE
				if (client.indexOf("MSIE") != -1) {
					response.setHeader("Content-Disposition", "attachment; filename=\""
							+ java.net.URLEncoder.encode(oriFileName, "UTF-8").replaceAll("\\+", "\\ ") + "\"");
					
				} else if (client.indexOf("Trident") != -1) {
					response.setHeader("Content-Disposition", "attachment; filename=\""
							+ java.net.URLEncoder.encode(oriFileName, "UTF-8").replaceAll("\\+", "\\ ") + "\"");
				} else {
					
					response.setHeader("Content-Disposition",
							"attachment; filename=\"" + new String(oriFileName.getBytes("UTF-8"), "ISO8859_1") + "\"");
					response.setHeader("Content-Type", "application/octet-stream; charset=utf-8");
				}
				response.setHeader("Content-Length", "" + file.length());
				os = response.getOutputStream();
				byte b[] = new byte[(int) file.length()];
				int leng = 0;
				while ((leng = in.read(b)) > 0) {
					os.write(b, 0, leng);
				}
			} else {
				response.setContentType("text/html;charset=UTF-8");
				System.out.println("<script language='javascript'>alert('������ ã�� �� �����ϴ�');history.back();</script>");
			}
			in.close();
			os.close();
		} catch (Exception e) {
			System.out.println("ERROR : " + e.getMessage());
		}

	}
	
}
