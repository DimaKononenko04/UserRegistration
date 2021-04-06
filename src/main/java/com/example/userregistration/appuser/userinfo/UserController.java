package com.example.userregistration.appuser.userinfo;

import lombok.AllArgsConstructor;
import org.springframework.web.bind.annotation.*;

@RestController
@RequestMapping(path = "api/v1/user")
@AllArgsConstructor
public class UserController {

    private final UserService userService;

    @GetMapping
    public User getUserById(@RequestParam("id") Long id){
        return userService.getUserById(id);
    }

    @PostMapping(path = "add")
    public String addUser(@RequestBody User user) {
        return userService.addUser(user);
    }

}
