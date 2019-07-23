package com.iwork.mapper;

import com.iwork.bean.prize;

import java.util.List;

public interface prizeMapper {
    void addPrize(prize p);

    List<prize> selectNewPrizes(Integer id);

    List<prize> selectPrizesByTerms(prize prize);
    //asda
    void deletePrizeById(String id);
}