package com.iwork.mapper;

import com.iwork.bean.Vocation;

import java.util.List;

public interface VocationMapper {
    int deleteByPrimaryKey(Integer vocationId);

    int insert(Vocation record);

    int insertSelective(Vocation record);

    Vocation selectByPrimaryKey(Integer vocationId);

    int updateByPrimaryKeySelective(Vocation record);

    int updateByPrimaryKey(Vocation record);
    List<Vocation> selectAllRecordByUserid(Integer userid);


}