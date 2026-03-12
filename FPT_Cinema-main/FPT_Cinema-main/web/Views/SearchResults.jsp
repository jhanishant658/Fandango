<%-- 
    Document   : SearchResults
    Created on : Mar 21, 2025, 2:37:16 PM
    Author     : PC
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="java.util.List, Models.Film" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<%
    List<Film> searchResults = (List<Film>) request.getAttribute("searchResults");
%>

<!DOCTYPE html>
<html lang="en">
    <head>
        <title>Search Results</title>
        <link rel="stylesheet" href="Css/styleSearch.css?v=6"/> <!-- Uses the same CSS as Home.jsp -->
    </head>
    <body>
        <%@include file="/components/header.jsp"%>

        <div class="film-container"> <!-- Same container as Home.jsp -->
            <div class="container">
                <h2 class="section-title">Search Results</h2>

                <% if (searchResults != null && !searchResults.isEmpty()) { %>
                <div class="movies-grid">  <!-- Matches the "Upcoming Movies" section -->
                    <% for (Film film : searchResults) { %>
                    <div class="movie-card">
                        <div class="movie-poster">
                            <img src="/Project_PRJ301/img/<%= film.getImageUrl() %>" alt="<%= film.getTitle() %>">
                            <div class="movie-overlay"></div>
                            <a href="Films?movie=<%= film.getId() %>" class="view-details">View Details</a>
                        </div>
                        <div class="movie-details">
                            <h3 class="movie-title"><%= film.getTitle() %></h3>
                            <p class="movie-meta"><%= film.getCategory() %> | <%= film.getPublishTime() %></p>
                        </div>
                    </div>
                    <% } %>
                </div>
                <% } else { %>
                <p class="no-results">No movies found matching your search.</p>
                <% } %>
            </div>
        </div>

        <%@include file="/components/footer.jsp"%>
    </body>
</html>

