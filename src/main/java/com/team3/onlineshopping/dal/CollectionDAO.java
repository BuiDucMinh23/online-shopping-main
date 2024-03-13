/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.team3.onlineshopping.dal;

import com.team3.onlineshopping.model.Collection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author PC
 */
public class CollectionDAO extends DBContext implements IDAO<Collection> {

    @Override
    public List<Collection> getAll() {
        List<Collection> list = new ArrayList<>();
        String sql = "SELECT * FROM `Collection` ";
        try {
            PreparedStatement st = connection.prepareCall(sql);
            ResultSet rs = st.executeQuery();
            //loop until select the last object
            while (rs.next()) {
                Collection orders = new Collection(rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getInt(4),
                        rs.getInt(5));
                list.add(orders);
            }
        } catch (SQLException e) {
            System.out.println(e.getMessage());
        }
        return list;
    }

    @Override
    public void add(Collection t) {
        String sql = "INSERT INTO `collection` (`CollectionTitle`,`CollectionStatus`,`NewsId`,`ProductId`) "
                + "VALUES (?, ?, ?, ?);";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setString(1, t.getCollectionTitle());
            st.setString(2, t.getCollectionStatus());
            st.setInt(3, t.getNewsId());
            st.setInt(4, t.getProductId());
            st.executeUpdate();
        } catch (SQLException e) {
            System.out.println(e);
        }
    }

    @Override
    public void update(Collection t) {
        String sql = "UPDATE `collection`\n"
                + "SET `CollectionTitle` = ?,\n"
                + "`CollectionStatus` = ?,\n"
                + "`NewsId` = ?,\n"
                + "`ProductId` = ?\n"
                + "WHERE `CollectionId` = ?";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setString(1, t.getCollectionTitle());
            st.setString(2, t.getCollectionStatus());
            st.setInt(3, t.getNewsId());
            st.setInt(4, t.getProductId());
            st.setInt(5, t.getCollectionId());

            int rs = st.executeUpdate();

        } catch (SQLException e) {
            System.out.println(e.getMessage());
        }
    }

    @Override
    public void delete(int id) {
        String sql = "DELETE FROM `collection`\n"
                + "WHERE CollectionId = ?";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setInt(1, id);

            int rs = st.executeUpdate();

        } catch (SQLException e) {
            System.out.println(e.getMessage());
        }
    }

    @Override
    public Collection getById(int id) {
        String sql = "SELECT * FROM `collection` Where collectionId = ?";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setInt(1, id);
            ResultSet rs = st.executeQuery();
            // loop until select the last object
            if (rs.next()) {
                Collection u = new Collection(rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getInt(4),
                        rs.getInt(5));
                return u;
            }

        } catch (SQLException e) {
            System.out.println(e.getMessage());
        }
        return null;
    }

    public static void main(String[] args) {
        CollectionDAO a = new CollectionDAO();
        System.out.println(a.getAll());
    }
}
