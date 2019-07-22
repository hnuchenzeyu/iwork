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

    public List<prize> showNewPrize(Integer prizeClass) {
        return pmapper.selectNewPrizes(prizeClass);
    }

    public void addStaff_Wage(staff_wage sw) {
        smapper.addStaffWage(sw);
    }

    public List<staff_wage> findWages(prize prize) {
        return smapper.selectWagesByTerms(prize);
    }

    public List<prize> showPrize(prize prize) {
        return pmapper.selectPrizesByTerms(prize);
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
