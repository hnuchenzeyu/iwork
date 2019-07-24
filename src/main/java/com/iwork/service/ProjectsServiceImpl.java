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

    /**
     * 显示所有的项目
     * @return
     */
    public List<Project> getProjects() {
        List<Project> projectList = projectsMapper.selectAllProject();
        return projectList;
    }

    /**
     * 根据类别显示项目
     * @param project_type      项目类别id
     * @return
     * @throws NullPointerException
     */
    public List<Project> getTypeProjects(String project_type) throws NullPointerException {
        List<Project> projectList = projectsMapper.selectAllProject();
        List<Project> typeProjectList = new ArrayList<Project>();
        if (null != project_type&&null != projectList){

            if (project_type != null){
                for (int i=0;i<projectList.size();i++){
                    Project project = projectList.get(i);
                    if (project.getProjectType() == 1){
                        typeProjectList.add(project);
                    }
                }
            }

            for (int i=0;i<projectList.size();i++){
                Project project = projectList.get(i);
                if (project.getProjectType() == 1){
                    typeProjectList.add(project);
                }
            }

        }
        else {
            System.out.println("showTypeProjects null !!!");
            return typeProjectList;
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

    /**
     * 编辑项目
     * @param project
     * @return
     */
    @Override
    public void updateProject(Project project) {

        projectsMapper.updateProject(project);
    }

}
