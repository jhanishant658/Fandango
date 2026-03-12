/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package DAL;

import Models.*;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author PC-Phong
 */
public class Ticket_filmDAO {

    private Connection con;
    private String status = "";
    public static Ticket_filmDAO INSTANCE = new Ticket_filmDAO();

    public Ticket_filmDAO() {
        if (INSTANCE == null) {
            try {
                con = new DBContext().getConnection();
            } catch (Exception e) {
                status = "Error ar connection" + e.getMessage();
            }
        }
    }

    public Ticket_film getTicketByFilmIdAndStartHour(int film_id, String startHour) {
        Ticket_film ticket = null;
        String sql = "SELECT tf.* "
                + "FROM ticket_film_he194197 AS tf "
                + "INNER JOIN event_he194197 AS e ON tf.eventid = e.id "
                + "WHERE tf.filmid = ? AND e.startHour = ?";
        try {
            PreparedStatement ps = con.prepareStatement(sql);
            ps.setInt(1, film_id);
            ps.setString(2, startHour);
            ResultSet rs = ps.executeQuery();
            if (rs.next()) {
                ticket = new Ticket_film(
                        rs.getInt(1),
                        rs.getInt(2),
                        rs.getInt(3),
                        rs.getInt(4)
                );
            }
        } catch (SQLException e) {
            System.err.println("Error at getTicketByFilmIdAndStartHour: " + e.getMessage());
        }
        return ticket;
    }

    public boolean insertTicket(int filmId, int roomId, int eventId) {
        String sql = "INSERT INTO ticket_film_he194197(filmid, roomid, eventid) VALUES (?, ?, ?)";
        try {
            PreparedStatement ps = con.prepareStatement(sql);
            ps.setInt(1, filmId);
            ps.setInt(2, roomId);
            ps.setInt(3, eventId);

            int affectedRows = ps.executeUpdate();
            return affectedRows > 0;

        } catch (SQLException e) {
            System.err.println("Error at insertTicket: " + e.getMessage());
            return false;
        }
    }

    public List<TicketFilmDTO> getlistTicketFilmDTO() {
        List<TicketFilmDTO> list = new ArrayList<>();
        String sql = "select tf.id, f.title,e.startHour, e.date, r.name\n"
                + "from ticket_film_he194197 tf,  film_he194197 f, event_he194197 e,  room_he194197 r\n"
                + "where tf.filmid = f.id and tf.eventid=e.id and r.id=tf.roomid";
        try {
            PreparedStatement ps = con.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                TicketFilmDTO t = new TicketFilmDTO(rs.getInt(1), rs.getString(2), rs.getString(5), rs.getString(3) + " " + rs.getString(4));
                list.add(t);
            }
        } catch (SQLException e) {
            System.err.println("Error at getTicketByFilmIdAndStartHour: " + e.getMessage());
        }
        return list;
    }

    public boolean deleteTicket(int id) {
        String sql = "DELETE FROM ticket_film_he194197 WHERE id = ?";
        try {
            PreparedStatement ps = con.prepareStatement(sql);
            ps.setInt(1, id);
            int affectedRows = ps.executeUpdate();
            return affectedRows > 0;
        } catch (SQLException e) {
            System.err.println("Error at deleteTicket: " + e.getMessage());
            return false;
        }
    }

    // Total revenue calculation (corrected to use seat prices)
    public double getTotalRevenue() {
        String sql = "SELECT SUM(s.price) FROM ticket_he194197 t "
                + "JOIN seat_he194197 s ON t.seatid = s.id";
        try (PreparedStatement ps = con.prepareStatement(sql); ResultSet rs = ps.executeQuery()) {
            if (rs.next()) {
                return rs.getDouble(1);
            }
        } catch (SQLException e) {
            System.err.println("Error at getTotalRevenue: " + e.getMessage());
        }
        return 0;
    }

    // Most popular movies (by ticket sales)
    public List<String> getMostPopularMovies() {
        List<String> movies = new ArrayList<>();
        String sql = "SELECT TOP 5 f.title, COUNT(t.id) AS sales FROM ticket_he194197 t "
                + "JOIN ticket_film_he194197 tf ON t.ticket_filmid = tf.id "
                + "JOIN film_he194197 f ON tf.filmid = f.id "
                + "GROUP BY f.title ORDER BY sales DESC";
        try (PreparedStatement ps = con.prepareStatement(sql); ResultSet rs = ps.executeQuery()) {
            while (rs.next()) {
                movies.add(rs.getString(1) + " - " + rs.getInt(2) + " tickets");
            }
        } catch (SQLException e) {
            System.err.println("Error at getMostPopularMovies: " + e.getMessage());
        }
        return movies;
    }

    // Most active users
    public List<String> getMostActiveUsers() {
        List<String> users = new ArrayList<>();
        String sql = "SELECT TOP 5 a.username, COUNT(t.id) AS tickets FROM ticket_he194197 t "
                + "JOIN account_he194197 a ON t.accountid = a.id "
                + "GROUP BY a.username ORDER BY tickets DESC";
        try (PreparedStatement ps = con.prepareStatement(sql); ResultSet rs = ps.executeQuery()) {
            while (rs.next()) {
                users.add(rs.getString(1) + " - " + rs.getInt(2) + " tickets");
            }
        } catch (SQLException e) {
            System.err.println("Error at getMostActiveUsers: " + e.getMessage());
        }
        return users;
    }

    // Room utilization
    public List<String> getMostUsedRooms() {
        List<String> rooms = new ArrayList<>();
        String sql = "SELECT TOP 5 r.name, COUNT(t.id) AS usage FROM ticket_he194197 t "
                + "JOIN ticket_film_he194197 tf ON t.ticket_filmid = tf.id "
                + "JOIN room_he194197 r ON tf.roomid = r.id "
                + "GROUP BY r.name ORDER BY usage DESC";
        try (PreparedStatement ps = con.prepareStatement(sql); ResultSet rs = ps.executeQuery()) {
            while (rs.next()) {
                rooms.add(rs.getString(1) + " - " + rs.getInt(2) + " times used");
            }
        } catch (SQLException e) {
            System.err.println("Error at getMostUsedRooms: " + e.getMessage());
        }
        return rooms;
    }

}
