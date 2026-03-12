<%-- 
    Document   : adminstatistics2
    Created on : Mar 20, 2025, 7:40:47 PM
    Author     : PC
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Admin Statistics</title>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css" />
        <!-- Include your existing admin CSS -->
        <link rel="stylesheet" href="${pageContext.request.contextPath}/Css/styleAdmin.css?v=2">
        <!-- Include additional CSS just for statistics display -->
<!--        <link rel="stylesheet" href="${pageContext.request.contextPath}/Css/styleAdminStatistics.css">-->
    </head>
    <body>
        <%@include file="/components/header.jsp"%>
        <div class="page">
            <div class="sidebar">
                <h2>Menu</h2>
                <ul>
                    <li><a href="AdminController">Tài khoản</a></li>
                    <li><a href="AdminEditFilm">Quản lí phim</a></li>
                    <li><a href="AdminEditRoom">Quản lí phòng chiếu</a></li>
                    <li><a href="">Quản lí thời gian chiếu</a></li>
                    <li><a href="">Quản lí ghế ngồi</a></li>
                    <li><a href="">Quản lí tin tức</a></li>
                    <li><a href="AdminEditTicket">Quản lí suất chiếu</a></li>
                    <li><a href="AdminStatistics">Quản lí thống kê</a></li>
                </ul>
            </div>
            <div class="content">
                <h1>Thống kê</h1>

                <!-- Total Revenue Card -->
                <div class="stats-summary">
                    <div class="stat-item">
                        <div class="stat-icon revenue-icon">
                            <i class="fas fa-dollar-sign"></i>
                        </div>
                        <div class="stat-info">
                            <h3>Tổng doanh thu</h3>
                            <p>$${totalRevenue}</p>
                        </div>
                    </div>
                </div>

                <!-- Data Cards -->
                <div class="stats-grid">
                    <!-- Popular Movies Card -->
                    <div class="stats-card">
                        <div class="stats-card-header">
                            <h2 class="stats-card-title">Phim phổ biến nhất</h2>
                            <div class="stats-card-icon">
                                <i class="fas fa-film"></i>
                            </div>
                        </div>
                        <ul class="data-list">
                            <c:forEach var="movie" items="${popularMovies}">
                                <li>
                                    <span class="item-name">${movie.split(" - ")[0]}</span>
                                    <span class="item-value">${movie.split(" - ")[1]}</span>
                                </li>
                            </c:forEach>
                        </ul>
                    </div>

                    <!-- Active Users Card -->
                    <div class="stats-card">
                        <div class="stats-card-header">
                            <h2 class="stats-card-title">Người dùng tích cực nhất</h2>
                            <div class="stats-card-icon">
                                <i class="fas fa-users"></i>
                            </div>
                        </div>
                        <ul class="data-list">
                            <c:forEach var="user" items="${activeUsers}">
                                <li>
                                    <span class="item-name">${user.split(" - ")[0]}</span>
                                    <span class="item-value">${user.split(" - ")[1]}</span>
                                </li>
                            </c:forEach>
                        </ul>
                    </div>

                    <!-- Used Rooms Card -->
                    <div class="stats-card">
                        <div class="stats-card-header">
                            <h2 class="stats-card-title">Phòng chiếu được sử dụng nhiều nhất</h2>
                            <div class="stats-card-icon">
                                <i class="fas fa-door-open"></i>
                            </div>
                        </div>
                        <ul class="data-list">
                            <c:forEach var="room" items="${usedRooms}">
                                <li>
                                    <span class="item-name">${room.split(" - ")[0]}</span>
                                    <span class="item-value">${room.split(" - ")[1]}</span>
                                </li>
                            </c:forEach>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </body>
</html>


