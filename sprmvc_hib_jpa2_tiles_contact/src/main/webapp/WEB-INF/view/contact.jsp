<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="../layout/taglib.jsp" %>
 <p>Contact Page</p>
 <form:form commandName="contactor" cssClass="form-horizontal registrationForm">
 
  <c:if test="${param.success eq true }">Contact Submitted Successfully!</c:if>
  
 <div class="form-group">
  <label for="name" class="col-sm-2 control-label">Name:</label>
  <div class="col-sm-10">
   <form:input path="name" cssClass="form-control"/>
   <form:errors path="name"/>
  </div>
 </div>
  
  <div class="form-group">
   <label for="company" class="col-sm-2 control-label">Company:</label>
   <div class="col-sm-10">
    <form:input path="company" cssClass="form-control"/>
    <form:errors path="company"/>
   </div>
  </div>
 
  <div class="form-group">
   <label for="email" class="col-sm-2 control-label">Email:</label>
   <div class="col-sm-10">
    <form:input path="email" cssClass="form-control"/>
    <form:errors path="email"/>
   </div>
  </div>

  <div class="form-group">
   <label for="phone" class="col-sm-2 control-label">Phone:</label>
   <div class="col-sm-10">
    <form:input path="phone" cssClass="form-control"/>
    <form:errors path="phone"/>
   </div>
  </div>
 
  <div class="form-group">
   <label for="message" class="col-sm-2 control-label">Message:</label>
   <div class="col-sm-10">
    <form:textarea path="message" cssClass="form-control"/>
    <form:errors path="message"/>
   </div>
  </div>
  
  <div class="form-group">
    <div class="col-sm-10">
     <input type="submit" value="Save" class="btn btn-lg btn-primary"/>
    </div>
  </div> 
 
 </form:form>
