package com.iwork.service;

import com.iwork.bean.prize;

import java.util.List;

public interface FinanceService {
    void prizeAdd(prize p);

    List<prize> showNewPrize();
}
