/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.team3.onlineshopping.dal;

import com.team3.onlineshopping.model.Feedback;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author PC
 */
public class FeedbackDAO extends DBContext implements IDAO<Feedback> {

    @Override
    public List<Feedback> getAll() {
        List<Feedback> list = new ArrayList<>();
        String sql = "SELECT * FROM Feedback ";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            ResultSet rs = st.executeQuery();
            // loop until select the last object
            while (rs.next()) {
                Feedback u = new Feedback(rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getInt(4),
                        rs.getInt(5),
                        rs.getInt(6));
                list.add(u);
            }

        } catch (Exception e) {
            System.out.println(e.getMessage());
        }
        return list;
    }

    @Override
    public void add(Feedback t) {
        String sql = "INSERT INTO Feedback (FeedbackContent, FeedbackCreatedDate, FeedbackRating, ProductId, CustomerId)"
                + "  VALUES (?, ?, ?, ?, ?)";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setString(1, t.getFeedContent());
            st.setString(2, t.getFeedCreatedDate());
            st.setInt(3, t.getFeedRating());
            st.setInt(4, t.getProId());
            st.setInt(5, t.getCusId());
            st.executeUpdate();
        } catch (SQLException e) {
            System.out.println(e);
        }
    }

    @Override
    public void update(Feedback t) {
        String sql = "UPDATE Feedback\n"
                + "   SET FeedbackContent = ?\n"
                + "      ,FeedbackCreatedDate = ?\n"
                + "      ,FeedbackRating = ?\n"
                + "      ,ProductId = ?\n"
                + "      ,CustomerId = ?\n"
                + " WHERE FeedbackId = ?";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setString(1, t.getFeedContent());
            st.setString(2, t.getFeedCreatedDate());
            st.setInt(3, t.getFeedRating());
            st.setInt(4, t.getProId());
            st.setInt(5, t.getCusId());
            st.setInt(6, t.getFeedId());

            int rs = st.executeUpdate();

        } catch (SQLException e) {
            System.out.println(e.getMessage());
        }
    }

    @Override
    public void delete(int id) {
        String sql = "DELETE FROM Feedback \n"
                + " WHERE FeedbackId = ?";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setInt(1, id);

            int rs = st.executeUpdate();

        } catch (SQLException e) {
            System.out.println(e.getMessage());
        }
    }

    @Override
    public Feedback getById(int id) {
        String sql = "SELECT * FROM Feedback Where FeedbackId = ?";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setInt(1, id);
            ResultSet rs = st.executeQuery();
            // loop until select the last object
            if (rs.next()) {
                Feedback u = new Feedback(rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getInt(4),
                        rs.getInt(5),
                        rs.getInt(6));
                return u;
            }

        } catch (SQLException e) {
            System.out.println(e.getMessage());
        }
        return null;
    }

    public List<Feedback> getByProId(int id) {
        List<Feedback> list = new ArrayList<>();
        String sql = "SELECT * FROM Feedback Where ProductId = ?";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setInt(1, id);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                Feedback u = new Feedback(rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getInt(4),
                        rs.getInt(5),
                        rs.getInt(6));
                list.add(u);
            }

        } catch (SQLException e) {
            System.out.println(e.getMessage());
        }
        return list;
    }

    public static void main(String[] args) {
        FeedbackDAO a = new FeedbackDAO();
        System.out.println(a.getAll().size());

//        Feedback t = new Feedback(5, "Sản phẩm Tốt lắm ạ!!!!", "2023-12-01", 5, 1);
//        a.update(t);
//        Feedback acc = new Feedback(0, "rgrgrr", "2022-12-01", 5, 2);
//        a.add(acc);
        System.out.println(a.getById(2).getFeedContent());
    }
}
