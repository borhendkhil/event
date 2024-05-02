package com.example.wedding_backend.Repository;


import com.example.wedding_backend.entity.User;

import org.springframework.data.mongodb.repository.MongoRepository;
import org.springframework.stereotype.Repository;

@Repository

public interface UserRepository extends MongoRepository<User,Integer> {


}
