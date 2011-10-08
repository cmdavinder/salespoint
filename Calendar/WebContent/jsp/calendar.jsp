<%@page import="org.joda.time.DateTime"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

<!DOCTYPE html>

<html>
<head>
<meta http-equiv="content-type" content="text/html; charset=UTF-8" />
<link rel="stylesheet" type="text/css"
	href="<c:url value="/res/css/style.css" />" />
<title>Salespoint 5 - Calendar</title>
</head>
<body>
	<h1>Welcome ${user.identifier}</h1>
	<h2>${monthTxt} ${year}</h2>
	<table class="calendar">
		<c:set var="days" value="WEEK,MON,TUE,WED,THU,FRI,SAT,SUN" />
		<tr class="calHead">
			<c:forEach var="col" items="${days}">
				<th>${col}</th>
			</c:forEach>
		</tr>
		<c:forEach var="week" items="${weekNumbers}">
			<tr>
				<th id="kwCell">KW ${week}</th>
				<c:forEach begin="1" end="7" varStatus="x">
					<td id="dayCell"></td>
				</c:forEach>
			</tr>
		</c:forEach>
	</table>
	<div align="center">
	    <a href="
            <c:url value="calendar">
                <c:param name="year" value="${year-1}" />
                <c:param name="month" value="${month}" />
            </c:url>">
            Last Year
        </a>
        |
        <a href="
            <c:url value="calendar">
                <c:param name="year" value="${year}" />
                <c:param name="month" value="${month-1}" />
            </c:url>">
            Last Month
        </a>
        |
		<a href="<c:url value="newEntry" />">Create New</a>
		|
		<a href="
            <c:url value="calendar">
                <c:param name="year" value="${year}" />
                <c:param name="month" value="${month+1}" />
		    </c:url>">
		    Next Month
	    </a>
		|
		<a href="
            <c:url value="calendar">
                <c:param name="year" value="${year+1}" />
                <c:param name="month" value="${month}" />
            </c:url>">
            Next Year
		</a>
		
		<p>
		<a href="<c:url value="logout" />">Logout</a>
		</p>
	</div>
</body>
</html>