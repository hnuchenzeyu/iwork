package com.iwork.mapper;

import com.iwork.bean.Project_Cost;

import java.util.List;

public interface Project_CostMapper {
    void addProjectCost(Project_Cost project_cost);

    List<Project_Cost> selectAllCosts();

    void deleteProjectCost(String id);
}
