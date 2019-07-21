package com.iwork.mapper;

import com.iwork.bean.prize;

import java.util.List;

public interface prizeMapper {
    void addPrize(prize p);

    List<prize> selectNewPrizes();
}
