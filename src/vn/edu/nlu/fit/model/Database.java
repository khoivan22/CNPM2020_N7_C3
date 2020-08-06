package vn.edu.nlu.fit.model;

import vn.edu.nlu.fit.model.cart.Cart;
import vn.edu.nlu.fit.model.cart.ListCart;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class Database {
    private static Connection con;

//    private static String URL = "jdbc:mysql://node231828-env-7476772.j.layershift.co.uk/webmobile?useUnicode=true&characterEncoding=utf-8";
//    private static String USER = "root";
//    private static String PASS = "QCAesl88499";
    private static String URL = "jdbc:mysql://localhost:3306/webmobile?useUnicode=true&characterEncoding=utf-8";
    private static String USER = "root";
    private static String PASS = "";

/*    public static Statement connectMySQL() throws ClassNotFoundException, SQLException {
        if (con == null || con.isClosed()) {
            Class.forName("com.mysql.jdbc.Driver");
            con = DriverManager.getConnection(URL, USER, PASS);
            return con.createStatement();
        } else {
            return con.createStatement();
        }
    }*/

    public static PreparedStatement getPreparedStatement(String sql) throws ClassNotFoundException, SQLException {
        if (con == null || con.isClosed()) {
            Class.forName("com.mysql.jdbc.Driver");
            con = DriverManager.getConnection(URL, USER, PASS);
        }
        return con.prepareStatement(sql);
    }

    public static User getUser(String userName) throws SQLException, ClassNotFoundException {

        String query = "SELECT * FROM `user` WHERE USER_NAME = ?;";
        PreparedStatement preparedStatement = getPreparedStatement(query);
        preparedStatement.setString(1, userName);
        ResultSet rs = preparedStatement.executeQuery();

        rs.last();
        int row = rs.getRow();

        User u = new User();
        if (rs != null && row == 1) {
            rs.first();
            u.setUser_name(rs.getString(1));
            u.setPassword(rs.getString(2));
            u.setFull_name(rs.getString(3));
            u.setEmail(rs.getString(4));
            u.setPhone(rs.getString(5));
            u.setPrivileges(rs.getString(6));
            u.setCode(rs.getString(7));
            return u;
        }
        return u;
    }

    public static boolean checkLogin(String user, String pass) throws SQLException, ClassNotFoundException {
        boolean check = false;

        String query = "SELECT * FROM `user` WHERE USER_NAME= ? AND `PASSWORD`= ?;";

        PreparedStatement preparedStatement = getPreparedStatement(query);
        preparedStatement.setString(1, user);
        preparedStatement.setString(2, pass);
        ResultSet resultSet = preparedStatement.executeQuery();

        resultSet.last();
        int row = resultSet.getRow();
        if (resultSet != null && row == 1)
            check = true;
        return check;
    }

    public static ListCart getListcart() {
        System.out.println("jgkdfhgdddddddddddddddddddddddddddddddddddddddddddd");
        ListCart l = new ListCart();
        String query = "SELECT * FROM `cart`";

        PreparedStatement preparedStatement = null;
        try {
            preparedStatement = getPreparedStatement(query);
            ResultSet resultSet = preparedStatement.executeQuery();
            resultSet.beforeFirst();
            while (resultSet.next()) {
                l.list_cart.add(new Cart(getProduct(resultSet.getString(2)), resultSet.getInt(3)));
            }
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return l;
    }

    public static void delCart(String idProduct, String userName) {
        String query = "DELETE FROM `cart` WHERE `ID_product` = ? AND `USER_NAME`=? ;";
        try {
            PreparedStatement preparedStatement = Database.getPreparedStatement(query);
            preparedStatement.setString(1, idProduct);
            preparedStatement.setString(2, userName);
            preparedStatement.executeUpdate();
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    public static void setSLC(String idProduct, String userName, int soluong) {
        String query = "UPDATE `cart` SET `soluong` =? WHERE `ID_product` = ? AND `USER_NAME`=? ;";
        try {
            PreparedStatement preparedStatement = Database.getPreparedStatement(query);
            preparedStatement.setInt(1, soluong);
            preparedStatement.setString(2, idProduct);
            preparedStatement.setString(3, userName);
            preparedStatement.executeUpdate();
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    public static void addCart(Cart c, String userName) {
        String query = "INSERT INTO `cart` (USER_NAME, ID_product, soluong) VALUES " +
                " (?,?,?); ";

        try {
            PreparedStatement preparedStatement = Database.getPreparedStatement(query);
            preparedStatement.setString(1, userName);
            preparedStatement.setString(2, c.getPro().getId_product());
            preparedStatement.setInt(3, c.getTotal());
            preparedStatement.executeUpdate();
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    public static Product getProduct(String ID_PRODUCT) throws SQLException, ClassNotFoundException {

        String query = "SELECT * FROM `product` WHERE ID_PRODUCT=?";
        PreparedStatement preparedStatement = Database.getPreparedStatement(query);
        preparedStatement.setString(1, ID_PRODUCT);
        ResultSet rs = preparedStatement.executeQuery();

        rs.last();
        int row = rs.getRow();

        Product pro = new Product();
        if (rs != null && row == 1) {
            rs.first();
            pro.setId_product(rs.getString(1));
            pro.setId_items(rs.getString(2));
            pro.setId_supplier(rs.getString(3));
            pro.setProduct_name(rs.getString(4));
            pro.setPrice(rs.getDouble(5));
            pro.setImg(rs.getString(6));
            pro.setTotal(rs.getInt(7));
            pro.setDiscout(rs.getDouble(9));
        }
        return pro;
    }
}
