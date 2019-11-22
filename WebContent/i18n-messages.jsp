<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>

<%@ taglib uri = "http://java.sun.com/jsp/jstl/fmt" prefix = "fmt" %>

<c:set var="theLocale" value="${not empty param.theLocale ? param.theLocale : pageContext.request.locale}" scope="session" />

<fmt:setLocale value="${theLocale}" />

<fmt:setBundle basename="com.vishal.jsp.tagdemo.i18n.resources.mylabels" />

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<a href="i18n-messages.jsp?theLocale=en_US">English (us)</a>

<a href="i18n-messages.jsp?theLocale=es_Es">Spanish (sp)</a>

<a href="i18n-messages.jsp?theLocale=de-DE">Germany (GE)</a>

<br>

<fmt:message key="label.greeting" />
<br>
<fmt:message key="label.firstname" /><i> vishal</i>
<br>
<fmt:message key="label.lastname" /><i> jha</i>
<br>
<fmt:message key="label.welcome" />
<hr>

select Locale: ${theLocale }
</body>
</html>