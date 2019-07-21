package com.iwork.service;

import com.iwork.bean.prize;
import com.iwork.bean.staff_wage;

import java.util.List;

public interface FinanceService {
    void prizeAdd(prize p);

    List<prize> showNewPrize();

    void addStaff_Wage(staff_wage sw);

    List<staff_wage> findWages(Integer terms);

    List<prize> showPrize(String terms);

    void deletePrize(String id);

    void deleteStaff_Wage(String id);
}
