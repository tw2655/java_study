package com.one.kcar.service.buy;

import java.util.ArrayList;
import java.util.HashMap;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import com.one.kcar.dao.buy.IBrandDAO;
import com.one.kcar.dao.buy.IBuyReviewDAO;
import com.one.kcar.dto.buy.BuyReviewDTO;
	
@Service
public class buyReviewService {
	
	@Autowired
	private IBuyReviewDAO reviewDao;
	
	public String buyReivewAllList(HashMap<String,String> map,Model model) {
		String currentPage = map.get("currentPage");
		String data = map.get("data");
		
		int currentPageNum;
		try {
			currentPageNum = Integer.parseInt(currentPage);
		} catch (Exception e) {
			return "페이징번호가 int값이 아니다.";
		}
		if(map.get("data") != null) {
			if(data.equals("prev")) currentPageNum -= 1;
			if(data.equals("next")) currentPageNum += 1;
		}
		String stringCount = reviewDao.reviewCnt();
		
		if(stringCount == null) {
			stringCount = "0";
		}
		int totalCount = Integer.parseInt(stringCount);
		
		int block = 10;
		int end = currentPageNum * block;
		int start = end - block + 1;
		int totalPage = totalCount / block;
		if(totalCount % block != 0) {
			totalPage ++;
		}
		ArrayList<BuyReviewDTO> buyReviewList = reviewDao.buyReviewList(start,end);
		if(data != null) {
			String ajaxReviewList = ajaxReviewList(buyReviewList,currentPageNum,totalPage);
			return ajaxReviewList;
		}
		
		model.addAttribute("currentPage",currentPageNum);
		model.addAttribute("totalPage",totalPage);
		model.addAttribute("buyReviewList",buyReviewList);
		
		return null;
	}

	private String ajaxReviewList(ArrayList<BuyReviewDTO> buyReviewList, int currentPageNum, int totalPage) {
		String result = "<div class=\"carSellContent\">\r\n"
				+ "							<div class=\"subHeader\">\r\n"
				+ "								<h1 class=\"title\">\r\n"
				+ "									<span class=\"wtNormal\">내차사기 홈서비스가</span> 신뢰받는 이유\r\n"
				+ "								</h1>\r\n"
				+ "							</div>\r\n";
				for(BuyReviewDTO buyReview: buyReviewList) {
					result += "<div class=\"reviewList\">\r\n"
							+ "	<ul>\r\n"
							+ "		<li class=\"reviewListCon\" onclick=\"reviewModalOpen('"+buyReview.getCb_brand()+" "+buyReview.getCb_m_model()+"','"+buyReview.getM_r_title()+"','"+buyReview.getM_r_review()+"','"+buyReview.getM_r_registDate()+"','"+buyReview.getM_r_photo()+"')\"><label class=\"carLabel\"></label>\r\n"
							+ "			"+buyReview.getCb_brand()+"&nbsp;"+buyReview.getCb_m_model()+"<a\r\n"
							+ "			class=\"el-link el-link--default is-underline\"> <!----> <span\r\n"
							+ "			class=\"el-link--inner\"><h5\\r\\n\"\r\n"
							+ "			style=\"word-break: break-all;\">"+buyReview.getM_r_title()+"</h5>\r\n"
							+ "			<p style=\"word-break: break-all;\">"+buyReview.getM_r_review()+"</p>\r\n"
							+ "			<span>"+buyReview.getM_r_registDate()+"</span></span> <!---->\r\n"
							+ "			</a></li>\r\n"
							+ "		<li class=\"reviewListImg reviewListImg1\"><img \r\n"
							+ "			src=\""+buyReview.getM_r_photo()+"\" alt=\"이미지\"></li>\r\n"
							+ "	</ul>\r\n"
							+ "</div>";
				}
		result += "							<!-- 페이징처리 시작 -->\r\n"
				+ "							<div class=\"pagination -sm\">\r\n";
		if(currentPageNum > 1) {
			result += "								<button type=\"button\"\r\n"
					+ "									class=\"el-button pagePrev el-button--default\" onclick=\"reviewSend('prev','"+currentPageNum+"')\">\r\n"
					+ "									\r\n"
					+ "									\r\n"
					+ "									<span><img src=\"/images/common/pagenation-btn-left.svg\"\r\n"
					+ "										alt=\"이전\"></span>\r\n"
					+ "								</button>\r\n";
		}
			
				
		result +=  "								<div class=\"pagingNum\">\r\n"
				+ "									<span class=\"textRed\">"+currentPageNum+"</span> / "+totalPage+"\r\n"
				+ "								</div>\r\n";
		if(currentPageNum < totalPage) {		
			result += "								<c:if test=\"${currentPage != totalPage }\">\r\n"
					+ "									<button type=\"button\"\r\n"
					+ "										class=\"el-button pageNext el-button--default\" onclick=\"reviewSend('next','"+currentPageNum+"')\">\r\n"
					+ "										<!---->\r\n"
					+ "										<!---->\r\n"
					+ "										<span><img src=\"/images/common/pagenation-btn-right.svg\"\r\n"
					+ "											alt=\"다음\"></span>\r\n"
					+ "									</button>\r\n"
					+ "								</c:if>\r\n";
		}
		result += "							</div>\r\n"
				+ "						</div>";
		
		return result;
	}
}
