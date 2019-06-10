<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>

<form method="post" id="afterBoardView" action="">

<table align="center" style="font-size:10pt;">
<tr>
<td>
<div class="form-group">
  <label for="id">아이디</label>
  <input type="text" class="form-control" id="id" autocomplete="off"  readonly>
</div>

</td>
<td align="center">
<div class="form-check-inline">
    <input type="radio" class="form-check-input" id="radio1" name="whereToBuy" value="온라인" checked> 온라인
    &emsp;
    <input type="radio" class="form-check-input" id="radio2" name="whereToBuy" value="오프라인"> 오프라인
</div>
</td>
<tr>
<td colspan="2">
<div class="form-group">
  <label for="subject">제목</label>
  <input type="text" class="form-control" id="subject" autocomplete="off" readonly>
</div>
</td>
</tr>

<tr>
<td colspan="2">
<div class="form-group">
  <label for="content">내용</label>
  <div contentEditable="true" id="content">
  
  </div>
</div>
</td>
</tr>

<tr>
<td>
<div class="form-group">
  <label for="good">상품만족도</label>
  <input type="text" class="form-control" id="good" autocomplete="off" readonly>
</td>
</tr>
</table>
</form>
