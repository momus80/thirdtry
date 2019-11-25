<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

		<h1>Tables</h1>
	    <div>
	     <table cellspacing="0">
	       <thead>
	         <tr>
	           <th>#번호</th>
	           <th>제목</th>
	           <th>작성자</th>
	           <th>작성일</th>
	           <th>수정일</th>
	         </tr>
	       </thead>
	       <tbody>
	       <c:forEach items="${list }" var="board">
			<tr>
			  	<td><c:out value="${board.bno }"/></td>
				<td><a class="move" href='/board/get?bno=<c:out value="${board.bno }"/>'>
				<c:out value="${board.title }"/></a></td>
				<td><c:out value="${board.w_id }"/></td>
				<td><fmt:formatDate pattern="yyyy-MM-dd" value="${board.regdate }" /></td>
				<td><fmt:formatDate pattern="yyyy-MM-dd" value="${board.updatedate }" /></td>
			</tr>
			</c:forEach>
           </tbody>
         </table>
		</div>
  
 	  <script src="http://code.jquery.com/jquery-latest.js"></script>
      <script type="text/javascript">
			
      </script>