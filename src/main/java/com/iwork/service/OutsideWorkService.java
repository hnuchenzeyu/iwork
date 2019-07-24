package com.iwork.service;

import com.iwork.bean.OutsideWork;
import org.springframework.stereotype.Service;

import java.util.List;

public interface OutsideWorkService {
    List<OutsideWork> selectAlloutsideWork();
    void inserIntoWork (OutsideWork work);
    void updateWork(OutsideWork work);
}
