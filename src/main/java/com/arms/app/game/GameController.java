package com.arms.app.game;

import java.security.NoSuchAlgorithmException;
import java.security.Principal;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Pageable;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.arms.app.user.UserAddForm;
import com.arms.domain.entity.User;
import com.arms.domain.repository.UserRepository;
import com.arms.domain.service.UserService;

@Controller
public class GameController {
	@Autowired
	UserRepository userRepository;
	
	@Autowired
	UserService userService;
	
	@RequestMapping("/game")
	public ModelAndView login(ModelAndView modelAndView, Principal p, Pageable pageable) {
		
		Authentication auth = (Authentication)p;
		UserDetails ud = (UserDetails) auth.getPrincipal();
		User user = userRepository.findOneByEmail(ud.getUsername());			
		modelAndView.addObject("score",user.getScore());
		
		MyGuessNumberImpl num = new MyGuessNumberImpl();	
		modelAndView.addObject("number", num.genNumber());
		
		
		modelAndView.addObject("leaderboard", userService.findAll());
		modelAndView.setViewName("user/game");
		return modelAndView;
	}

	@Autowired
	MyGameService myGameService;

	@RequestMapping("/game/updateScore")
	public String add(MyGame myGame, Authentication a, ModelAndView modelAndView, Principal p)
			throws NoSuchAlgorithmException {

		Authentication auth = (Authentication) p;
		UserDetails ud = (UserDetails) auth.getPrincipal();		
		
		myGameService.updateScore(myGame, ud.getUsername());
		
		// attributes.addFlashAttribute("messageDialog", "User was created.");
		return "redirect:/game";

		/*
		 * 
		 * userService.createUser(userAddForm);
		 * attributes.addFlashAttribute("messageDialog", "User was created."); return
		 * "redirect:/user/login";
		 * 
		 */
	}
}
