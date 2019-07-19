package com.iwork.service;

import com.iwork.bean.Project;
import com.iwork.mapper.ProjectsMapper;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

@Service
public class ProjectsServiceImpl implements ProjectsService {

    @Resource
    private ProjectsMapper projectsMapper;

    public List<Project> getProjects() {
        List<Project> projectList = projectsMapper.showProjects();
        return projectList;
    }
}
