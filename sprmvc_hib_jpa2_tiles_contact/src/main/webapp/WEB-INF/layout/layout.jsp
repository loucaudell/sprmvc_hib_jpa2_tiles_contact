<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ include file="../layout/taglib.jsp"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles" %>
<%@ taglib uri="http://tiles.apache.org/tags-tiles-extras" prefix="tilesx" %>
<%
 String contextPath = request.getContextPath();
%>
<!DOCTYPE html>
<html>
 <head>
 <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
 <title><tiles:getAsString name="title"/> </title>
 
  <!-- Must use c:out or spring:url, or js/css wont load.  -->
 <script src="<spring:url value="/resources/theme1/js/jquery-2.1.0.min.js"/>"           type="text/javascript" ></script>
 <script src="<spring:url value="/resources/theme1/js/jquery-1.11.1.validate.min.js"/>" type="text/javascript" ></script>
 <script src="<spring:url value="/resources/theme1/js/bootstrap-3.11.min.js"/>"         type="text/javascript" ></script>
 <link href="<spring:url value="/resources/theme1/css/bootstrap-3.11-theme.min.css"/>" rel="stylesheet">
 <link href="<spring:url value="/resources/theme1/css/bootstrap.3.11.min.css"/>" rel="stylesheet">

 <title><tiles:getAsString name="title" /></title>
 </head>
 <body>
<tilesx:useAttribute name="current"/>

<div class="container">

  <!-- Static navbar -->
      <div class="navbar navbar-default" role="navigation">
        <div class="container-fluid">
          <div class="navbar-header">
            <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
              <span class="sr-only">Toggle navigation</span>
              <span class="icon-bar"></span>
              <span class="icon-bar"></span>
              <span class="icon-bar"></span>
            </button>
            <a class="navbar-brand">US</a>
          </div>
          <div class="navbar-collapse collapse">
            <ul class="nav navbar-nav">
              <spring:url value="/index.html" context="${pageContext.request.contextPath}" var="indexPage"/>
              <spring:url value="/contact.html" context="${pageContext.request.contextPath}" var="contactPage"/>
              <spring:url value="/contactList.html" context="${pageContext.request.contextPath}" var="contactListPage"/>
            
              <li class="${current == 'index' ? 'active' : ''}"> <a href="${indexPage}"> Home </a> </li>             
              <li class="${current == 'contact' ? 'active' : ''}"><a href="${contactPage}"> Contact </a></li>              
              <li class="${current == 'contactlist' ? 'active' : ''}"><a href="${contactListPage}"> Contact List</a></li>
            </ul>
          </div><!--/.nav-collapse -->
        </div><!--/.container-fluid -->
      </div>
 
 <tiles:insertAttribute name="body" />
 <br>
 <%-- <p>ContextRoot="<c:out value="${contextPath}"/>"</p> --%>
 <br>
 <tiles:insertAttribute name="footer" />
 </div>
 </body>
</html>