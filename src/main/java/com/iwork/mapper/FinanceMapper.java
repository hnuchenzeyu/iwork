package com.iwork.mapper;

import com.iwork.bean.Finance;

import java.util.List;

public interface FinanceMapper {
    void addFinance(Finance finance);

    List<Finance> selectFinance();

    void deleteFinanceById(String id);

    List<String> selectYears();

    List<Finance> selectFinanceByYear(String year);
}
