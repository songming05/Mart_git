package board.bean;

import java.util.Map;

import org.springframework.stereotype.Component;

import lombok.Data;

@Component
@Data
public class BoardPaging {
	private int currentPage;
	private int pageBlock;
	private int pageSize;
	private int totalA; 
	private String prdtCode;
	private StringBuffer pagingHTML;
	
	public void makePagingHTML() {
		pagingHTML = new StringBuffer();
		int totalP = (totalA+pageSize-1)/pageSize;
		
		int startPage = (currentPage-1)/pageBlock*pageBlock+1;
			
		int endPage = startPage+pageBlock-1;
			
		if(endPage > totalP) {endPage = totalP;}
			
		if(startPage > pageBlock) {
			pagingHTML.append("<a id='paging' href='javascript:void(0)' style='border:solid red; font-size:10pt; background-color:red; color:white;'>이전</a>&nbsp;"); 
		}
		
		for(int i=startPage; i<=endPage; i++) {
			if(i==currentPage) {
				pagingHTML.append("<a id='currentPaging' href='javascript:void(0)' style='border:solid red; font-size:10pt; background-color:red; font-weight:bold; color:white;'>"+i+"</a>&nbsp;");
			}else {
				pagingHTML.append("<a id='paging' href='javascript:void(0)' style='border:solid red; font-size:10pt; background-color:red; color:white;'>"+i+"</a>&nbsp;");
			}
		}
		
		if(totalP > endPage) {
			pagingHTML.append("<a id='paging' href='javascript:void(0)' style='border:solid red; font-size:10pt; background-color:red; color:white;'>다음</a>&nbsp;"); 
		}
		
	}

	public void makeSearchPagingHTML() {
		pagingHTML = new StringBuffer();
		int totalP = (totalA+pageSize-1)/pageSize;//����������
		
		int startPage = (currentPage-1)/pageBlock*pageBlock+1;
			
		int endPage = startPage+pageBlock-1;
			
		if(endPage > totalP) {endPage = totalP;}
			
		if(startPage > pageBlock) {
			pagingHTML.append("[<span id='paging' onclick=boardSearch("+(startPage-1)+")>����</span>]"); //������ ������ ���� ���������� ���� �������� �����ش�.
		}
		
		for(int i=startPage; i<=endPage; i++) {
			if(i==currentPage) {
				pagingHTML.append("[<span id='currentPaging' onclick=boardSearch("+i+")>"+i+"</span>]");
			}else {
				pagingHTML.append("[<span id='paging' onclick=boardSearch("+i+")>"+i+"</span>]");
			}
		}
		
		if(totalP > endPage) {
			pagingHTML.append("[<span id='paging' onclick=boardSearch("+(endPage+1)+")>����</span>]"); //������ ������ �������������� ó���� �����ش�.
		}
		
	}
	
}//class
