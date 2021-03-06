<%@page import="com.summer.comm.StringUtil"%>
<%@page import="com.summer.comm.SearchVO"%>
<%@page import="org.slf4j.LoggerFactory"%>
<%@page import="org.slf4j.Logger"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%
	Logger log = LoggerFactory.getLogger(this.getClass());

	log.debug("==================================");
	log.debug("this.getClass()"+this.getClass());
	log.debug("==================================");
	
	String pageSize = "10";// 페이지 사이즈
	String pageNum = "1";// 현재페이지
	String searchWord = "";// 검색어
	String searchDiv = "";// 검색구분
	
	int totalCnt = 0;
	int bottomCnt = 10; //바닥에 보여줄 숫자
	
	SearchVO searchVO = new SearchVO();
	
	if(null != request.getAttribute("searchVO")) {
		searchVO = (SearchVO)request.getAttribute("searchVO");
	}
	log.debug("==searchVO=="+searchVO.toString());
	
	
	pageSize = StringUtil.nvl(searchVO.getPageSize(),"10");
	pageNum = StringUtil.nvl(searchVO.getPageNum(),"1");
	searchWord = StringUtil.nvl(searchVO.getSearchWord(),"");
	searchDiv = StringUtil.nvl(searchVO.getSearchDiv(),"");
	
	int o_pageSize = Integer.parseInt(pageSize);
	int o_pageNum = Integer.parseInt(pageNum);
	
	String o_totalCnt =  (null == request.getAttribute("totalCnt"))?"0":request.getAttribute("totalCnt").toString();
	
	totalCnt = Integer.parseInt(o_totalCnt);
%>
<%-- CONTEXT --%>
<c:set var="CONTEXT" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="ko">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- 위 3개의 메타 태그는 *반드시* head 태그의 처음에 와야합니다; 어떤 다른 콘텐츠들은 반드시 이 태그들 *다음에* 와야 합니다 -->
    <title>:::최저가 검색:::</title>

    <!-- 부트스트랩 -->
    <link href="${CONTEXT}/resources/css/bootstrap.min.css" rel="stylesheet">
 
    <!-- IE8 에서 HTML5 요소와 미디어 쿼리를 위한 HTML5 shim 와 Respond.js -->
    <!-- WARNING: Respond.js 는 당신이 file:// 을 통해 페이지를 볼 때는 동작하지 않습니다. -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
    
  </head>
<body>

	<div class="container">
	
	<!-- button -->
	<div class="form-inline pull-right">
		<button class="btn btn-sm" id="goodlist">조회</button>
	</div>
	
	<!-- button end -->
	
	<!-- search -->
	<form class="form-inline" name="frm" id="frm" method="get">
		<input type="hidden" name="pageNum" value="${searchVO.pageNum}"/>
		
		<table class="table">
			<tr>
				<td class="text-center">
				<div class="form-group col-lg5 col-sm6">
					<input type="text" class="form-control input-sm" name="searchWord" id="searchWord" value="${searchVO.searchWord}">
					<select name="pageSize" id="pageSize" class="form-control input-sm">
						<option value="10" <c:if test="${searchVO.pageSize == '10'}">selected='selected'</c:if>>10</option>
	  						<option value="30" <c:if test="${searchVO.pageSize == '30'}">selected='selected'</c:if>>30</option>
	  						<option value="50" <c:if test="${searchVO.pageSize == '50'}">selected='selected'</c:if>>50</option>
	  						<option value="100" <c:if test="${searchVO.pageSize == '100'}">selected='selected'</c:if>>100</option>
					</select>
				</div>
				</td>
			</tr>
		</table>
	</form>
	<!-- search end -->
	
	
	<!-- list -->
	<div class="table-responsive">
		<table class="table  table-striped table-bordered table-hover" id="listTable">
       	<thead class="bg-primary">
       		<th class="text-center">번호</th>
       		<th class="text-center">Product Name</th>
       		<th class="text-center">The lower price</th>
       	</thead>
       	<tbody>
       		<c:choose>
       		<c:when test="${list.size() > 0}">
       			<c:forEach var="goodVO" items="${list}">
		         		<tr>
		         			<td class="text-center">${goodVO.no}</td>
		         			<td class="text-left">${goodVO.goodName}</td>
		         			<td class="text-left">${goodVO.goodPrice}</td>
		         		</tr>
	         		</c:forEach>
	         	</c:when>
	         	<c:otherwise>
	         		<tr>
	         			<td colspan="99" class="text-center">no data</td>
	         		</tr>
	         	</c:otherwise>
         		</c:choose>
         	</tbody>
       </table>
	</div>
	<!-- list end -->
	
	<!-- paging -->
  	<div class="form-inline text-center">
  	<%= StringUtil.renderPaging(totalCnt, o_pageNum, o_pageSize, bottomCnt, "do_selectList.do", "search_page") %>
  	</div>
  	<!--// paging -->
	
	</div>

	<script src="${CONTEXT}/resources/js/jquery-1.12.4.js"></script>
	<script src="${CONTEXT}/resources/js/bootstrap.min.js"></script>
	<script type="text/javascript">
	
	
	</script>
</body>
</html>