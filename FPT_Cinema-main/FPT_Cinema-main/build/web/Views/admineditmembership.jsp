<%-- 
    Document   : admineditmembership
    Created on : Mar 16, 2025, 8:48:18 PM
    Author     : PC
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.List" %>
<%@page import="Models.Account" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <title>FPT Cinema</title>
        <link rel="stylesheet" href="Css/styleAdmin.css"/>
        <link rel="icon" type="image/x-icon" href="https://th.bing.com/th/id/R.e15d750fe41eb99350f0c56e6b66b653?rik=QJI66s2o67Q7jw&pid=ImgRaw&r=0">
    </head>
    <body>
        <%@include file="/components/header.jsp"%>

        <div class="page">
            <!-- Sidebar Menu -->
            <div class="sidebar">
                <h2>Menu</h2>
                <ul>
                    <li><a href="AdminController">Tài khoản</a></li>
                    <li><a href="AdminEditFilm">Quản lí phim</a></li>
                    <li><a href="AdminEditRoom">Quản lí phòng chiếu</a></li>
                    <li><a href="">Quản lí thời gian chiếu</a></li>
                    <li><a href="">Quản lí ghế ngồi</a></li>
                    <li><a href="">Quản lí tin tức </a></li>
                    <li><a href="AdminEditTicket">Quản lí suất chiếu</a></li>
                    <li><a href="AdminEditMembership">Quản lí thành viên</a></li>
                </ul>
            </div>

            <!-- Main Content -->
            <div class="content">
                <h1>Quản Lý Thành Viên</h1>

                <div class="filter-section">
                    <label for="sort">Sắp xếp theo:</label>
                    <select id="sort" onchange="changeSort()">
                        <option value="desc" ${param.sort == 'desc' ? 'selected' : ''}>Cao đến thấp</option>
                        <option value="asc" ${param.sort == 'asc' ? 'selected' : ''}>Thấp đến cao</option>
                    </select>
                </div>

                <div class="form-container">
                    <!-- Left Column: Membership Table -->
                    <div class="left-column">
                        <table class="account">
                            <thead>
                                <tr>
                                    <th>ID</th>
                                    <th>Username</th>
                                    <th>Total Spent</th>
                                    <th>Membership</th>
                                    <th></th>
                                    <th></th>
                                </tr>
                            </thead>
                            <tbody>
                                <c:forEach items="${accounts.accList}" var="acc">
                                    <tr>
                                        <td>${acc.account_id}</td>
                                        <td>${acc.username}</td>
                                        <td>${acc.total_spent} VND</td>
                                        <td>${acc.getMembershipStatus()}</td>
                                        <td><a href="AdminEditMembership?type=0&id=${acc.account_id}" class="btn-update">Update</a></td>
                                        <td><a href="AdminEditMembership?type=1&id=${acc.account_id}" class="btn-remove" onclick="return confirm('Bạn có chắc chắn muốn xóa?')">Remove</a></td>
                                    </tr>
                                </c:forEach>
                            </tbody>
                        </table>
                    </div>

                    <!-- Right Column: Membership Edit Form -->
                    <div class="right-column">
                        <form action="AdminEditMembership" method="post">
                            <input type="hidden" name="account_id" value="${detailaccount.account_id}">

                            <div class="row">
                                <div class="label">Username:</div>
                                <div class="input"><input type="text" name="username" value="${detailaccount.username}" ></div>
                            </div>

                            <div class="row">
                                <div class="label">Total Spent:</div>
                                <div class="input"><input type="text" name="totalSpent" value="${detailaccount.total_spent} VND" ></div>
                            </div>

                            <div class="row">
                                <div class="label">Membership:</div>
                                <div class="input">
                                    <select name="membership">
                                        <option value="Member" ${detailaccount.membershipStatus == 'Member' ? 'selected' : ''}>Member</option>
                                        <option value="VIP" ${detailaccount.membershipStatus == 'VIP' ? 'selected' : ''}>VIP</option>
                                        <option value="VVIP" ${detailaccount.membershipStatus == 'VVIP' ? 'selected' : ''}>VVIP</option>
                                    </select>
                                </div>
                            </div>

                            <input type="submit" value="Update Membership" name="btnInUp" class="btnInUp">
                        </form>
                    </div>
                </div>
            </div>
        </div>

        <script>
            function changeSort() {
                let sortValue = document.getElementById("sort").value;
                window.location.href = "AdminEditMembership?sort=" + sortValue;
            }
        </script>
    </body>
</html>
