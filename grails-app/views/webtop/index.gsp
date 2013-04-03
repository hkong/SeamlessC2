<%--
  Created by IntelliJ IDEA.
  User: hkong
  Date: 3/27/13
  Time: 3:12 PM
  To change this template use File | Settings | File Templates.
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title></title>
    <script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/1.6.0/jquery.min.js"></script>
</head>

<body>
<h1>Test 2:  invoking a dashboard from HTML</h1>
<p><a href="https://localhost:8443/owf/#guid=332ae8df-c25a-2db2-34a1-f27361f0e072">Dashboard:  SeamlessC2 Test</a></p>
<p><a href="https://localhost:8443/owf/#guid=7c239192-e93d-a28b-3a01-1ce05f5972f0">Dashboard:  Kruse</a></p>

<h1>Test 1:  Using IFrame</h1>
<div class="result-container">There will be your content from some file.</div>
<p>
    <a class="result-loader" href="#">click here</a>
    <script type="text/javascript">
        $(".result-loader").click(function() {
            //Replace path/to/your/file.html and #id_of_element_to_fetch with appropriate values
//            $('.result-container').load('http://localhost:8081/SeamlessC2');
            $('.result-container').load('http://localhost:8081/SeamlessC2/webtop/testpage');
            return false;
        });
    </script>
</p>
</body>