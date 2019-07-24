package com.iwork.service;

import com.iwork.bean.Absence;
import com.iwork.bean.Excellent_Stafff;

import java.util.List;

public interface ExcellentStafffService_c {
    void addExcellenceByUserId(Excellent_Stafff es);

    List<Excellent_Stafff> selectExcellence();

    void deleteExcellentById(String excellentStaffId);

    void addAbsence(Absence absence);

    List<Absence> selectAbsence();

    void deleteAbsence(String id);
}
