package service.bean;

import org.springframework.stereotype.Component;

import lombok.Data;

@Component
@Data
public class ServicePaging {
	private int currentPage;
	private int pageBlock;
	private int pageSize;
	private int totalA;
	private StringBuffer pagingHTML;
	
	public void makePagingHTML(String category){
		pagingHTML = new StringBuffer();
		
		int totalP = (totalA+pageSize-1)/pageSize;
		//int totalP = (totalA-1)/pageSize+1;
		
		int startPage = (currentPage-1)/pageBlock*pageBlock+1;
		int endPage = startPage+pageBlock-1;
		if(endPage > totalP) endPage = totalP;
		
		if(startPage > pageBlock)
			pagingHTML.append("<a id=paging href='/abcd_mart/service/faqList?page="+(startPage-1)+"&category="+category+"'>◀</a>");
		
		for(int i=startPage; i<=endPage; i++) {
			if(i==currentPage)
				pagingHTML.append("<a id=currentPaging href='/abcd_mart/service/faqList?page="+i+"&category="+category+"'>"+i+"</a>");
			else
				pagingHTML.append("<a id=paging href='/abcd_mart/service/faqList?page="+i+"&category="+category+"'>"+i+"</a>");
		}
		
		if(totalP > endPage)
			pagingHTML.append("<a id=paging href='/abcd_mart/service/faqList?page="+(endPage+1)+"&category="+category+"'>▶</a>");
	}

}