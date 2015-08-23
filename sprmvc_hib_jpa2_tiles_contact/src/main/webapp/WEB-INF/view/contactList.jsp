<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="../layout/taglib.jsp" %>

<table class="table table-bordered table-hover table-striped">
	<thead>
		<tr><th colspan="8">Contacts</th></tr>
		<tr><th>Name</th><th>Company</th><th>Email</th><th>Phone</th><th>Message</th><th>Action</th></tr>
	</thead>
	<tbody>
		<c:forEach items="${contactList}" var="contact">
			<tr>
				<td><c:out value="${contact.name}"/></td>
				<td><c:out value="${contact.company}"/></td>
				<td><c:out value="${contact.email}"/></td>
				<td><c:out value="${contact.phone}"/></td>
				<td><c:out value="${contact.message}"/></td>
				<td><a href="<spring:url value="/contact/remove/${contact.id}.html"/>" class="btn btn-danger triggerRemove">remove</a></td>
			</tr>
		</c:forEach>
	</tbody>
</table>