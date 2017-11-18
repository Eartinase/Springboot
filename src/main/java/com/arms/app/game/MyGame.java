package com.arms.app.game;

import lombok.Data;
import org.hibernate.validator.constraints.NotEmpty;

@Data
public class MyGame {
	@NotEmpty
	private int guess;
	
	@NotEmpty
	private int ans;
}