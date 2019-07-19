package com.iwork.mapper;

import com.iwork.bean.Project;

import java.util.List;

public interface ProjectsMapper {
    List<Project> selectAllProject();

    void addProject(Project project);

    void updateProject(Project project);
}
