package com.krissoft.bela.config;

import java.util.List;
import org.zkoss.bind.annotation.ExecutionParam;
import org.zkoss.bind.annotation.Init;

public class BalanceSheetViewModel {

    private List<BalanceSheet> balanceSheetList;

    @Init
    public void init(@ExecutionParam("balanceSheetList") List<BalanceSheet> BalanceSheetList) {
        this.balanceSheetList = BalanceSheetList;
    }

    public List<BalanceSheet> getBalanceSheetList() {
        return balanceSheetList;
    }

}
