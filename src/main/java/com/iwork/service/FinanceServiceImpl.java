package com.iwork.service;

import com.iwork.bean.prize;
import com.iwork.mapper.prizeMapper;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

@Service
public class FinanceServiceImpl implements FinanceService {

    @Resource
    prizeMapper mapper;

    public void prizeAdd(prize p) {
        mapper.addPrize(p);
    }

    public List<prize> showNewPrize() {
        return mapper.selectNewPrizes();
    }
}
