package com.krissoft.bela.config;

import org.springframework.data.mongodb.repository.MongoRepository;

public interface BalanceSheetRepository extends
		MongoRepository<BalanceSheet, String> {

}