<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<HTML>
<HEAD>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" href="css/style.css">

<SCRIPT language=javascript>
function checkValid() {
    var f = window.document.writeForm;
		
	if ( f.starScore.value == "") {
	    alert( "별점을 선택해주세요." );
	    f.starScore.focus();
		return false;
    }
	if ( f.content.value == "" ) {
		alert( "리뷰내용을 입력해 주세요." );
		f.content.focus();
		return false;
	}
	
    return true;
}
</SCRIPT>


</HEAD>
<BODY>

<form name="writeForm" method="post" action="${pageContext.request.contextPath}/front?command=updateReview" 
  onSubmit='return checkValid()' enctype="multipart/form-data" target="_parent">
<input type="hidden" name="gymCode" value="${review.gymCode}">
<input type="hidden" name="oldFile" value="${review.fileName}">
<input type="hidden" name="reviewCode" value="${review.code }">
<table align="center" cellpadding="5" cellspacing="2" width="600" border="1" >
  
    <tr>
        <td width="1220" height="20" colspan="2" bgcolor="orange">
            <p align="center"><font color="white" size="3"><b> 리뷰 수정  </b></font></p>
        </td>
    </tr>
    <tr>
        <td width="150" height="20" >
            <p align="right"><b><span style="font-size:9pt;">별점</span></b></p>
        </td>
        <td width="450" height="20">
        <b>
        <span style="font-size:9pt;">
			<input type="radio" name="starScore" value="1"> 1
			<input type="radio" name="starScore" value="2"> 2
			<input type="radio" name="starScore" value="3"> 3
			<input type="radio" name="starScore" value="4"> 4
			<input type="radio" name="starScore" value="5"> 5
		</span>
		</b>
		</td>
    </tr>
    
    
    <tr>
        <td width="150" height="20">
            <p align="right"><b><span style="font-size:9pt;">리뷰 내용</span></b></p>
        </td>
        <td width="450" height="20"><b><span style="font-size:9pt;">
		<textarea name="content" cols="50" rows="10">${review.content}</textarea></span></b></td>
    </tr>
    
    
     <tr>
        <td width="150" height="20">
            <p align="right"><b><span style="font-size:9pt;">*파일첨부</span></b></p>
        </td>
        <td width="450" height="20">
        	<b><span style="font-size:9pt;">
        		 <input type="file" name="file" maxlength="60" size="40">
        	   </span></b>
        </td>
    </tr>
    
    
    <tr>
        <td width="450" height="20" colspan="2" align="center"><b><span style="font-size:9pt;"><input type=submit value=글쓰기 name=btn > 
        <input type=reset value=다시쓰기></span></b></td>
    </tr>
</table>

</form>



</BODY>
</HTML>

