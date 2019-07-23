package com.iwork.service;

import com.iwork.bean.Finance;
import com.iwork.bean.Prize;
import com.iwork.bean.Project_Cost;
import com.iwork.bean.staff_wage;
import com.iwork.mapper.FinanceMapper;
import com.iwork.mapper.Project_CostMapper;
import com.iwork.mapper.PrizeMapper;
import com.iwork.mapper.staff_wageMapper;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

@Service
public class FinanceServiceImpl implements FinanceService {

    @Resource
    PrizeMapper pmapper;
    @Resource
    staff_wageMapper smapper;
    @Resource
    Project_CostMapper pcmapper;
    @Resource
    FinanceMapper fmapper;

    public void prizeAdd(Prize p) {
//        pmapper.addPrize(p);
    }

    public List<Prize> showNewPrize(Integer prizeClass) {
//        return pmapper.selectNewPrizes(prizeClass);
        return null;
    }

    public void addStaff_Wage(staff_wage sw) {
        smapper.addStaffWage(sw);
    }

    public List<staff_wage> findWages(Prize prize) {
        return smapper.selectWagesByTerms(prize);
    }

    public List<Prize> showPrize(Prize prize) {
//        return pmapper.selectPrizesByTerms(prize);
        return null;
    }

    public void deletePrize(String id) {
//        pmapper.deletePrizeById(id);
    }

    public void deleteStaff_Wage(String id) {
        smapper.deleteWageById(id);
    }

    public void addProject_Cost(Project_Cost project_cost) {
        pcmapper.addProjectCost(project_cost);
    }

    @Override
    public List<Project_Cost> showProjectCosts() {
        return pcmapper.selectAllCosts();
    }

    @Override
    public void deleteProject_Cost(String id) {
        pcmapper.deleteProjectCost(id);
    }

    @Override
    public void addFinance(Finance finance) {
        fmapper.addFinance(finance);
    }

    @Override
    public List<Finance> showFinanceCost() {
        return fmapper.selectFinance();
    }

    @Override
    public void deleteFinance(String id) {
        fmapper.deleteFinanceById(id);
    }

    @Override
    public List<String> findYears() {
        return fmapper.selectYears();
    }

    @Override
    public List<Finance> findFinanceCostByYear(String year) {
        return fmapper.selectFinanceByYear(year);
    }
}
