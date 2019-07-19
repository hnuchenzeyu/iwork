package com.iwork.controller;

import com.iwork.bean.Project;
import com.iwork.bean.Project_Type;
import com.iwork.service.ProjectsService;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.annotation.Resource;
import java.util.List;

@Controller
public class ProjectsController {

    @Resource
    private ProjectsService projectsService;

    /**
     * 返回所有的项目信息
     * @return
     */
    @RequestMapping("/showProjects")
    @ResponseBody
    public List<Project> showProjects(){
        List<Project> projectList = projectsService.getProjects();
        return projectList;
    }

    /**
     * 添加项目
     * 两个外键：createUserId，projectType
     * @param project
     */
    @RequestMapping("/addProjects")
    @ResponseBody
    public void addProject(Project project){
        //需要获取创建这的id

        projectsService.addProject(project);
    }

    /**
     * 编辑项目信息
     * @param project
     */
    @RequestMapping
    @ResponseBody
    public void updateProject(Project project){

        projectsService.updateProject(project);
    }

    /**
     * 根据类别获取项目信息
     * @return
     */
    @RequestMapping("/showTypePerojects")
    @ResponseBody
    public List<Project> showTypeProject(Project_Type project_type){

        List<Project> typeProjectList = projectsService.getTypeProjects(project_type);
        return typeProjectList;
    }
}
