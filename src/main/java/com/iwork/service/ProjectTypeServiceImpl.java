package com.iwork.service;

import com.iwork.bean.Project_Type;
import com.iwork.mapper.ProjectTypeMapper;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

@Service
public class ProjectTypeServiceImpl implements ProjectTypeService{
    @Resource
    private ProjectTypeMapper projectTypeMapper;

    public void addProjectType(Project_Type project_type) {
        projectTypeMapper.addProjectType(project_type);
    }

    public List<Project_Type> showAllProjectType() {
        return projectTypeMapper.showAllPrjectType();
    }
}
