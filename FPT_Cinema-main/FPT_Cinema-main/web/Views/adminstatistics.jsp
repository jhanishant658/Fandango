<%-- 
    Document   : adminstatistics
    Created on : Mar 20, 2025, 8:17:38 AM
    Author     : PC
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%@include file="/components/header.jsp"%>
        <div class="page">
            <div class="sidebar">
                <h2>Menu</h2>
                <ul>
                    <li><a href="AdminController">Tài khoản</a></li>
                    <!--                    <li><a href="AdminEditMembership">Quản Lý Thành Viên</a></li>-->
                    <li><a href="AdminEditFilm">Quản lí phim</a></li>
                    <li><a href="AdminEditRoom">Quản lí phòng chiếu</a></li>
                    <li><a href="">Quản lí thời gian chiếu</a></li>
                    <li><a href="">Quản lí ghế ngồi</a></li>
                    <li><a href="">Quản lí tin tức </a></li>
                    <li><a href="AdminEditTicket">Quản lí suất chiếu</a></li>
                    <li><a href="AdminStatistics">Quản lí thống kê</a></li>
                </ul>
            </div>
            <div class="content">
                <h1>Thống kê</h1>
                <div class="form-container">
                    <h2>Statistics Dashboard</h2>

                    <div class="stats-section">
                        <h3>Total Revenue</h3>
                        <p>$${totalRevenue}</p>
                    </div>

                    <div class="stats-section">
                        <h3>Most Popular Movies</h3>
                        <ul>
                            <c:forEach var="movie" items="${popularMovies}">
                                <li>${movie}</li>
                                </c:forEach>
                        </ul>
                    </div>

                    <div class="stats-section">
                        <h3>Most Active Users</h3>
                        <ul>
                            <c:forEach var="user" items="${activeUsers}">
                                <li>${user}</li>
                                </c:forEach>
                        </ul>
                    </div>

                    <div class="stats-section">
                        <h3>Most Used Rooms</h3>
                        <ul>
                            <c:forEach var="room" items="${usedRooms}">
                                <li>${room}</li>
                                </c:forEach>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </body>
</html>
