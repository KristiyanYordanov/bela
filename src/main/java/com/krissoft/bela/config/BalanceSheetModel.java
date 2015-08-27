package com.krissoft.bela.config;

import java.util.List;

public interface BalanceSheetModel {

    public List<BalanceSheet> getBalanceSheet();

    public BalanceSheet saveBalanceSheet(BalanceSheet balanceSheet);
}
