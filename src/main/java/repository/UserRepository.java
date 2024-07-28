package repository;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;
import model.User;

public class UserRepository {
    private Connection connection;

    public UserRepository(Connection connection) {
        this.connection = connection;    }

    public List<User> findAll() {
        List<User> users = new ArrayList<>();
        try {
            PreparedStatement ps = connection.prepareStatement("SELECT * FROM users");
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                users.add(new User(rs.getString("password"), rs.getString("name")));
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return users;
    }

    public boolean save(User user) {
        try {
            PreparedStatement ps = connection.prepareStatement("INSERT INTO users (name, password) VALUES (?, ?, ?)");
             ps.setString(3, user.getName());
             ps.setString(2, user.getPassword());
           
            ps.executeUpdate();
            return true;
        } catch (Exception e) {
            e.printStackTrace();
        }
        return false;
    }

    public User findByEmailAndPassword(String email, String password) {
        User user = null;
        try {
            PreparedStatement ps = connection.prepareStatement("SELECT * FROM users WHERE password = ?");
            ps.setString(1, email);
            ps.setString(2, password);
            ResultSet rs = ps.executeQuery();
            if (rs.next()) {
                user = new User(rs.getString("password"), rs.getString("name"));
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return user;
    }
}
