<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>

<table align="center" style="font-size:10pt;">
<tr>
<td>
<div class="form-group">
  <label for="id">아이디</label>
  <input type="text" class="form-control" id="id" autocomplete="off">
</div>

</td>
<td align="center">
<div class="form-check-inline">
    <input type="radio" class="form-check-input" id="radio1" name="whereToBuy" value="온라인" size="20" checked> 온라인
    &emsp;
    <input type="radio" class="form-check-input" id="radio2" name="whereToBuy" value="오프라인"> 오프라인
</div>
</td>
<tr>
<td colspan="2">
<div class="form-group">
  <label for="subject">제목</label>
  <input type="text" class="form-control" id="subject" autocomplete="off">
</div>
</td>
</tr>

<tr>
<td colspan="2">
 <label for="사진">사진</label>
 <div class="form-group">
		<form method="post" id="afterBoardImage" enctype="multipart/form-data" action="/abcd_mart/board/afterBoardImage">
      	<input type="file" class="form-control-file border" id="uploadImage1" name="img1[]" multiple>
      	</form>
    </div>
</td>
</tr>


<tr>
<td colspan="2">
<div class="form-group">
  <label for="content">내용</label>
  <textarea class="form-control" cols="70" rows="10" id="content" style="resize:none;"></textarea>
</div>
</td>
</tr>

<tr>
<td>
<div class="form-group">
  <label for="good">상품만족도</label>
  <input type="text" class="form-control" id="good" autocomplete="off" placeholder="1~100">
</td>
</tr>
</table>

