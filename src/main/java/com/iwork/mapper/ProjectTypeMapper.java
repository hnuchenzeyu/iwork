package com.iwork.mapper;

import com.iwork.bean.Project_Type;

import java.util.List;

public interface ProjectTypeMapper {
    void addProjectType(Project_Type project_type);

    List<Project_Type> showAllPrjectType();
}
