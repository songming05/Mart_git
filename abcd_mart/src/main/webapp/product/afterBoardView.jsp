<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>

<form method="post" id="afterBoardView" action="">

<table align="center" width="900px" height="700px" style="font-size:10pt;">

<tr style="height:100px; background-color:#e9ecef;">

<td align="center">
<div class="form-group" style="width:400px; text-align:right;">
  <strong>아이디</strong>
  <span id="id"></span>&emsp;
</div>
</td>

<td align="center">
<div class="form-group" style="width:400px; text-align:left;">
	<strong>상품만족도</strong>
	<span id="good"></span>
</div>
</td>

</tr>

<tr>
<td colspan="2">
<div class="form-group">
<br>
<div contentEditable="true" id="content">
</div>
</div>
</td>
</tr>

</table>
</form>
