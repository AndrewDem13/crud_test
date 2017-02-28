package com.demyanenko.usermanager.dao;



import com.demyanenko.usermanager.entities.User;

import java.util.List;

public interface UserDao {
    void addUser(User user);
    void updateUser(User user);
    void removeUser(int id);
    User getUserById(int id);
    List<User> listUsers();
}
