<%@ page import="seamlessc2.NavigatorController" %>
<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title></title>
    <script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/1.6.0/jquery.min.js"></script>
</head>

<body>

<h1>Navigator Technology Proofs of Concept Widget</h1>
%{--<p>json:  ${dashboardsJson}</p>--}%
%{--<p>dashboards:  ${dashboards}</p>--}%
%{--<p>params:  ${params}</p>--}%
<%
    println dashboards
%>
<h2>Available Dashboards using Grails Controller to access URL (File)</h2>
<ul>
<g:each in="${dashboards}" var="dashboard">
    <li><a href="${dashboard.url}">${dashboard.stack?dashboard.stack+'/':''}${dashboard.name}</a></li>
</g:each>
</ul>

</body>