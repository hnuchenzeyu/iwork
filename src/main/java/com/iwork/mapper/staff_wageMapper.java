package com.iwork.mapper;

import com.iwork.bean.prize;
import com.iwork.bean.staff_wage;

import java.util.List;

public interface staff_wageMapper {
    void addStaffWage(staff_wage sw);

    List<staff_wage> selectWagesByTerms(prize prize);

    void deleteWageById(String id);
}
