package com.iwork.mapper;

import com.iwork.bean.prize;
import com.iwork.bean.staff_wage;

import java.util.List;

public interface prizeMapper {
    void addPrize(prize p);

    List<prize> selectNewPrizes();

    List<prize> selectPrizesByTerms(String terms);

    void deletePrizeById(String id);
}
