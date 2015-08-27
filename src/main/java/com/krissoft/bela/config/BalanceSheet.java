package com.krissoft.bela.config;

import org.springframework.data.annotation.Id;

public class BalanceSheet {

	private String name;

	@Id
	private Long id;

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

}
