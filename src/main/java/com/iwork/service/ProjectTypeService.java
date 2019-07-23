package com.iwork.service;

import com.iwork.bean.Project_Type;

import java.util.List;

public interface ProjectTypeService {
    void addProjectType(Project_Type project_type);

    List<Project_Type> showAllProjectType();
}
