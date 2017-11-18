package com.arms.app.game;

import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.redirectedUrl;

import java.security.NoSuchAlgorithmException;
import java.security.Principal;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.arms.domain.entity.User;
import com.arms.domain.repository.UserRepository;

@Service
public class MyGameService {

	@Autowired
	UserRepository userRepository;

	public void updateScore(MyGame score, String username) throws NoSuchAlgorithmException {
		User user = userRepository.findOneByEmail(username);
		// user.setEmail(username);

		if (score.getAns() == score.getGuess()) {
			int update = user.getScore() + 1;
			user.setScore(update);
		} else {
			user.setScore(user.getScore());
		}

		// userRepository.findOne();
		userRepository.save(user);
	}

	/*
	 * public void createUser(UserAddForm userAddForm) throws
	 * NoSuchAlgorithmException { Date nowDate = Calendar.getInstance().getTime();
	 * User user = new User(); user.setName(userAddForm.getName());
	 * user.setEmail(userAddForm.getEmail());
	 * user.setPassword(passwordEncoder.hashMD5(userAddForm.getPassword()));
	 * user.setCreated(nowDate); user.setUpdated(nowDate);
	 * userRepository.save(user); }
	 */
}
