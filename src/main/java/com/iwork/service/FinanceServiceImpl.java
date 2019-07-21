package com.iwork.service;

import com.iwork.bean.prize;
import com.iwork.bean.staff_wage;
import com.iwork.mapper.prizeMapper;
import com.iwork.mapper.staff_wageMapper;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

@Service
public class FinanceServiceImpl implements FinanceService {

    @Resource
    prizeMapper pmapper;
    @Resource
    staff_wageMapper smapper;

    public void prizeAdd(prize p) {
        pmapper.addPrize(p);
    }

    public List<prize> showNewPrize() {
        return pmapper.selectNewPrizes();
    }

    public void addStaff_Wage(staff_wage sw) {
        smapper.addStaffWage(sw);
    }

    public List<staff_wage> findWages(Integer terms) {
        return smapper.selectWagesByTerms(terms);
    }

    public List<prize> showPrize(String terms) {
        return pmapper.selectPrizesByTerms(terms);
    }

    @Override
    public void deletePrize(String id) {
        pmapper.deletePrizeById(id);
    }

    @Override
    public void deleteStaff_Wage(String id) {
        smapper.deleteWageById(id);
    }
}
