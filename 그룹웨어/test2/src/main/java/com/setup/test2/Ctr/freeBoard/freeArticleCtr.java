package com.setup.test2.Ctr.freeBoard;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.List;

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
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.setup.test2.Model.ArticleVO;
import com.setup.test2.Model.freeBoard.freeArticleVO;
import com.setup.test2.Model.freeBoard.freeBoardVO;
import com.setup.test2.Service.freeBoard.freeArticleSrv;

import pager.Pager;

@Controller
@RequestMapping("/freeArticle")
public class freeArticleCtr {
	@Autowired
	freeArticleSrv freeArticleSrv;
	
	@RequestMapping("/grp_article_list")
	public ModelAndView getArticleList(
			@RequestParam(defaultValue = "1") int curPage,
			@RequestParam(defaultValue = "") String words, 
			@RequestParam(defaultValue = "subject") String searchOpt, 
			@RequestParam String boardCode) {
		
		int count = freeArticleSrv.getArticleTotalCount(words, searchOpt, boardCode);
		
		Pager pager = new Pager(count, curPage);
		
		int start = pager.getPageBegin();
		int end = pager.getPageEnd();
		
		freeBoardVO fvo = freeArticleSrv.getBoardOne(boardCode);
		List<freeArticleVO> list = freeArticleSrv.getArticleList(start, end, words, searchOpt, boardCode);

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
		mav.addObject("boardCode", boardCode);
		mav.addObject("boardColor", fvo.getBoardColor());
		mav.addObject("boardTitle", fvo.getBoardTitle());
		
		mav.setViewName("grp_freeboard/grp_freeboard_list");
		return mav;
	}
	
	@RequestMapping(value = "/grp_article_insert", method = RequestMethod.GET)
	public ModelAndView getArticleInsert(@RequestParam String boardCode) {
		ModelAndView mav = new ModelAndView();
		mav.addObject("boardCode", boardCode);
		
		freeBoardVO fvo = freeArticleSrv.getBoardOne(boardCode);
		mav.addObject("boardColor", fvo.getBoardColor());
		mav.addObject("boardTitle", fvo.getBoardTitle());
		mav.addObject("boardWrite", fvo.getBoardWrite());
		
		mav.setViewName("grp_freeboard/grp_freeboard_insert");
		return mav;
	}
	
	@RequestMapping(value = "/grp_article_insert", method=RequestMethod.POST)
	public String setArticleDo(
			@ModelAttribute freeArticleVO fvo,
			@RequestPart MultipartFile files) throws IllegalStateException, IOException {
		
		//System.out.println(vo.getBoardCode());
		
		if (files.isEmpty()) { // 업로드할 파일이 없을 시
			freeArticleSrv.setArticle(fvo);
			
		} else {
			String fileName = files.getOriginalFilename();
			String fileNameExtension = FilenameUtils.getExtension(fileName).toLowerCase();
			File destinationFile;
			String destinationFileName;
			String fileUrl = "c://upload//fileUpload//";

			do {
				destinationFileName = RandomStringUtils.randomAlphanumeric(32) + "." + fileNameExtension;
				destinationFile = new File(fileUrl + destinationFileName);
			} while (destinationFile.exists());

				destinationFile.getParentFile().mkdirs();
				files.transferTo(destinationFile);
	
				fvo.setFileName(destinationFileName);
				fvo.setFileOriName(fileName);
				fvo.setFileUrl(fileUrl);
			freeArticleSrv.setArticle(fvo);
		}
		
		return "redirect:/freeArticle/grp_article_list?boardCode="+fvo.getBoardCode();
	}
	
	@RequestMapping(value = "/grp_article_reply", method = RequestMethod.GET)
	public ModelAndView getArticleReply(@ModelAttribute freeArticleVO vo) {
		freeArticleVO fvo = freeArticleSrv.getArticleOne(vo);
		freeBoardVO fbvo = freeArticleSrv.getBoardOne(vo.getBoardCode());
		
		ModelAndView mav = new ModelAndView();
		
		if( fvo != null ) {
			mav.addObject("article", fvo);
			mav.addObject("boardCode", vo.getBoardCode());
			mav.addObject("boardTitle", fbvo.getBoardTitle());
			mav.addObject("boardColor", fbvo.getBoardColor());
			mav.addObject("boardReply", fbvo.getBoardReply());
			
			mav.setViewName("grp_freeboard/grp_freeboard_reply");
		}

		return mav;
	}
	
	
	@RequestMapping(value = "/grp_article_reply", method=RequestMethod.POST)
	public String setArticleReply(
			@ModelAttribute freeArticleVO fvo,
			@RequestPart MultipartFile files) throws Exception {
		
		
		if (files.isEmpty()) { // 업로드할 파일이 없을 시
			freeArticleSrv.setArticleReply(fvo);
			
		} else {
			String fileName = files.getOriginalFilename();
			String fileNameExtension = FilenameUtils.getExtension(fileName).toLowerCase();
			File destinationFile;
			String destinationFileName;
			String fileUrl = "c://upload//fileUpload//";

			do {
				destinationFileName = RandomStringUtils.randomAlphanumeric(32) + "." + fileNameExtension;
				destinationFile = new File(fileUrl + destinationFileName);
			} while (destinationFile.exists());

				destinationFile.getParentFile().mkdirs();
				files.transferTo(destinationFile);
	
				fvo.setFileName(destinationFileName);
				fvo.setFileOriName(fileName);
				fvo.setFileUrl(fileUrl);
				freeArticleSrv.setArticleReply(fvo);
		}
		
		return "redirect:/freeArticle/grp_article_list?boardCode="+fvo.getBoardCode();
	}
	
	
	@RequestMapping(value = "/grp_article_modify", method = RequestMethod.GET)
	public ModelAndView getArticleModify(@ModelAttribute freeArticleVO vo) {
		freeArticleVO fvo = freeArticleSrv.getArticleOne(vo);
		freeBoardVO fbvo = freeArticleSrv.getBoardOne(vo.getBoardCode());
		
		ModelAndView mav = new ModelAndView();
		mav.addObject("modifyArticle", fvo);
		mav.addObject("boardColor", fbvo.getBoardColor());
		mav.addObject("boardTitle", fbvo.getBoardTitle());
		mav.addObject("boardCode", vo.getBoardCode());
		mav.setViewName("grp_freeboard/grp_freeboard_modify");
		return mav;
	}
	
	@RequestMapping(value = "/grp_article_delete", method = RequestMethod.GET)
	public String getArticleDelete() {
		return "grp_freeboard/grp_article_delete";
	}
	
	@RequestMapping(value = "/grp_article_delete", method = RequestMethod.POST)
	@ResponseBody
	public String setArtcileDelete(@ModelAttribute freeArticleVO vo) {
		
		freeArticleVO fvo = freeArticleSrv.getArticleOne(vo);
		if( fvo.getFileName() != null ) {
			String fileUrl = "c://upload//fileUpload//";
			File file = new File(fileUrl + fvo.getFileName());
			if( file.exists() ) {
				file.delete();
			}
		}
		freeArticleSrv.setArticleDelete(vo.getAid(), vo.getBoardCode());
		return "success";
	}
	
	@RequestMapping(value = "/grp_article_view", method = RequestMethod.GET)
	public ModelAndView getArticleView(@ModelAttribute freeArticleVO vo) {
		freeArticleVO fvo = freeArticleSrv.getArticleOne(vo);
		freeBoardVO fbvo = freeArticleSrv.getBoardOne(vo.getBoardCode());
		ModelAndView mav = new ModelAndView();
		freeArticleSrv.hitUp(vo);
		mav.addObject("article", fvo);
		mav.addObject("boardCode", vo.getBoardCode());
		mav.addObject("boardTitle", fbvo.getBoardTitle());
		mav.addObject("boardColor", fbvo.getBoardColor());
		mav.addObject("boardRead", fbvo.getBoardRead());
		
		
		mav.setViewName("grp_freeboard/grp_freeboard_view");
		
		return mav;
	}
	
	@RequestMapping(value = "/grp_article_download", method = RequestMethod.GET)
	public void fileDown(
			@ModelAttribute freeArticleVO fvo,
			HttpServletRequest request, 
			HttpServletResponse response)
			throws Exception {

		request.setCharacterEncoding("UTF-8");
		freeArticleVO vo = freeArticleSrv.getArticleOne(fvo);

		// 파일 업로드된 경로
		try {
			String fileUrl = vo.getFileUrl();
			fileUrl += "/";
			String savePath = fileUrl;
			String fileName = vo.getFileName();

			// 실제 내보낼 파일명
			String oriFileName = vo.getFileOriName();
			InputStream in = null;
			OutputStream os = null;
			File file = null;
			boolean skip = false;
			String client = "";

			// 파일을 읽어 스트림에 담기
			try {
				file = new File(savePath, fileName);
				in = new FileInputStream(file);
			} catch (FileNotFoundException fe) {
				skip = true;
			}

			client = request.getHeader("User-Agent");

			// 파일 다운로드 헤더 지정
			response.reset();
			response.setContentType("application/octet-stream");
			response.setHeader("Content-Description", "JSP Generated Data");

			if (!skip) {
				// IE
				if (client.indexOf("MSIE") != -1) {
					response.setHeader("Content-Disposition", "attachment; filename=\""
							+ java.net.URLEncoder.encode(oriFileName, "UTF-8").replaceAll("\\+", "\\ ") + "\"");
					// IE 11 이상.
				} else if (client.indexOf("Trident") != -1) {
					response.setHeader("Content-Disposition", "attachment; filename=\""
							+ java.net.URLEncoder.encode(oriFileName, "UTF-8").replaceAll("\\+", "\\ ") + "\"");
				} else {
					// 한글 파일명 처리
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
				System.out.println("<script language='javascript'>alert('파일을 찾을 수 없습니다');history.back();</script>");
			}
			in.close();
			os.close();
		} catch (Exception e) {
			System.out.println("ERROR : " + e.getMessage());
		}

	}
	
	@RequestMapping(value = "/grp_article_delete_all", method = RequestMethod.POST)
	@ResponseBody
	public String setArticleDeleteAll(
			@ModelAttribute freeArticleVO fvo,
			@RequestParam(value = "chkArr[]") List<String> chkArr) {
		
		int aid;
		
		String fileUrl = "c://upload//fileUpload//";
		File files = null;
		for(String list : chkArr) {
			aid = Integer.parseInt(list);
			fvo.setAid(aid);
			fvo.setBoardCode(fvo.getBoardCode());
			
			freeArticleVO vo = freeArticleSrv.getArticleOne(fvo);
			files = new File(fileUrl + vo.getFileName());
			if( files.exists() ) {
				files.delete();
			}
			freeArticleSrv.setArticleDeleteAll(aid, fvo.getBoardCode());
		}
		
		return "success";
	}

}
