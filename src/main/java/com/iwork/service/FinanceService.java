package com.iwork.service;

import com.iwork.bean.Finance;
import com.iwork.bean.Project_Cost;
import com.iwork.bean.Prize;
import com.iwork.bean.staff_wage;

import java.util.List;

public interface FinanceService {
    void prizeAdd(Prize p);

    List<Prize> showNewPrize(Integer prizeClass);

    void addStaff_Wage(staff_wage sw);

    List<staff_wage> findWages(Prize prize);

    List<Prize> showPrize(Prize prize);

    void deletePrize(String id);

    void deleteStaff_Wage(String id);

    void addProject_Cost(Project_Cost project_cost);

    List<Project_Cost> showProjectCosts();

    void deleteProject_Cost(String id);

    void addFinance(Finance finance);

    List<Finance> showFinanceCost();

    void deleteFinance(String id);

    List<String> findYears();

    List<Finance> findFinanceCostByYear(String year);
}
