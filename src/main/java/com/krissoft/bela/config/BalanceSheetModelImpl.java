package com.krissoft.bela.config;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service("BalanceSheetModelImpl")
public class BalanceSheetModelImpl implements BalanceSheetModel {

    @Autowired
    BalanceSheetRepository balanceSheetRepository;

    @Override
    public List<BalanceSheet> getBalanceSheet() {
        return balanceSheetRepository.findAll();
    }

    @Override
    public BalanceSheet saveBalanceSheet(BalanceSheet balanceSheet) {
        return balanceSheetRepository.save(balanceSheet);
    }

}
