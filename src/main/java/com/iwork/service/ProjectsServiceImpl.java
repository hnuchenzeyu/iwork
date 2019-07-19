package com.iwork.service;

import com.iwork.bean.Project;
import com.iwork.bean.Project_Type;
import com.iwork.mapper.ProjectsMapper;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.ArrayList;
import java.util.List;

@Service
public class ProjectsServiceImpl implements ProjectsService {

    @Resource
    private ProjectsMapper projectsMapper;

    public List<Project> getProjects() {
        List<Project> projectList = projectsMapper.selectAllProject();
        return projectList;
    }

    public List<Project> getTypeProjects(Project_Type project_type) {
        int projectTypeId = project_type.getProjectTypeId();

        List<Project> projectList = projectsMapper.selectAllProject();
        List<Project> typeProjectList = new ArrayList<Project>();
        for (int i=0;i<projectList.size();i++){
            Project project = projectList.get(i);
            if (project.getProjectType() == projectTypeId){
                typeProjectList.add(project);
            }
        }
        return typeProjectList;
    }

    /**
     * 添加项目
     * 两个外键：createUserId，projectType
     * @param project
     */
    public void addProject(Project project) {


        projectsMapper.addProject(project);
    }

    public void updateProject(Project project) {
        projectsMapper.updateProject(project);
    }
}
