package com.iwork.controller;

import com.iwork.bean.Msg;
import com.iwork.bean.Project;
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
}
