<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html
PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN"
"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
<head>
<title>404 not find</title>
<% response.setStatus(200); %>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<meta name="format-detection" content="telephone=no" />
<meta name = "viewport" content ="width=device-width,initial-scale=1.0,user-scalable=no,target-densitydpi=device-dpi"/>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/error/css/404.css" />
</head>
<body>
    <div class="dmaku-error-main">
        <div class="w-1200 clear">
            <div class="error-l fl">
                <h1>
                    <span class="box">
                    	<p>404</p>
                    </span>
                </h1>
                <div class="l-tex">
                    <p>
                       	 您所访问的网页不存在
                    </p>
                    <a href="javascript:history.go(-1);">
                                                                    返回首页
                    </a>
                </div>
                <div class="clear">
                </div>
            </div>
            <div class="error-r fr">
                <img src="${pageContext.request.contextPath}/error/images/jsdaima-error-1.png">
            </div>
        </div>
    </div>
</body>
</html>