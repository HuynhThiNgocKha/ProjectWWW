package services;

import java.util.List;
import model.User;
import repository.UserRepository;

public class UserService {
    private UserRepository userRepository;

    public UserService(UserRepository userRepository) {
        this.userRepository = userRepository;
    }

    public List<User> getAllUsers() {
        return userRepository.findAll();
    }

    public boolean registerUser(String name, String password) {
        User user = new User(name, password );
        return userRepository.save(user);
    }

    public User loginUser(String password) {
        return userRepository.findByEmailAndPassword(password, password);
    }
}
