package pl.coderslab.springboot.user;

public interface UserService {

    User findByUserName(String name);

    void saveUser(User user);
}