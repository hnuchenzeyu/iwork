package com.iwork.service;

import com.iwork.bean.Finance;
import com.iwork.bean.Project_Cost;
import com.iwork.bean.prize;
import com.iwork.bean.staff_wage;

import java.util.List;

public interface FinanceService {
    void prizeAdd(prize p);

    List<prize> showNewPrize(Integer prizeClass);

    void addStaff_Wage(staff_wage sw);

    List<staff_wage> findWages(prize prize);

    List<prize> showPrize(prize prize);

    void deletePrize(String id);

    void deleteStaff_Wage(String id);

    void addProject_Cost(Project_Cost project_cost);

    List<Project_Cost> showProjectCosts();

    void deleteProject_Cost(String id);

    void addFinance(Finance finance);

    List<Finance> showFinanceCost();

    void deleteFinance(String id);

    List<String> findYears();
}
