package com.task.Service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.task.Model.User;
import com.task.Repository.userRepository;

@Service
public class UserService {
    private final userRepository repo;

    @Autowired
    public UserService(userRepository repo) {
        this.repo = repo;
    }

    public String addUsers(String name, String password) {
        String message = repo.addUserInfo(name, password);

        return message;
    }

    public List<User> fetchDetails() {

        return repo.getUsers();

    }

    public String verifyLogin(String name, String password){

        return repo.validateLogin(name,password);
    }

}
