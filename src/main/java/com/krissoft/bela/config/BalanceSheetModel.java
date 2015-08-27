package com.krissoft.bela.config;

import java.util.List;

import org.springframework.stereotype.Service;

@Service
public interface BalanceSheetModel {

	public List<BalanceSheet> getBalanceSheet();
	
	public BalanceSheet saveBalanceSheet(BalanceSheet balanceSheet);
}
