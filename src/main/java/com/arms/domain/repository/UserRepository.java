package com.arms.domain.repository;
import java.util.List;

import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;
import com.arms.domain.entity.User;

@Repository
public interface UserRepository extends JpaRepository<User, Integer> {
	User findOneByEmail(String email);
	
}
