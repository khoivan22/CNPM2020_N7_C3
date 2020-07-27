package vn.edu.nlu.fit.model;

import java.sql.*;

public class Database {
    private static Connection con;

    //    private static String URL = "jdbc:mysql://node51533-webmobile.jl.serv.net.mx/webmobile?useUnicode=true&characterEncoding=utf-8";
    //    private static String PASS = "RMXtyf23972";
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
