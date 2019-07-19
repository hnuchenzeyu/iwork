package com.iwork.controller;

import com.iwork.bean.Project_Type;
import com.iwork.service.ProjectTypeService;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

@Controller
public class ProjectTypeController {
    @Resource
    private ProjectTypeService projectTypeService;


    /**
     * 添加项目分类
     * @param projectTypeName
     * @param httpServletRequest
     */
    @RequestMapping("/addProjectType")
    @ResponseBody
    public void addProjectType(@RequestParam String projectTypeName, HttpServletRequest httpServletRequest){
//        project_type.setProjectTypeName("电子商务");

        Project_Type project_type = new Project_Type();
        project_type.setProjectTypeName(projectTypeName);
//        System.out.println("project_type:"+project_type.toString());
        projectTypeService.addProjectType(project_type);
    }

    /**
     * 显示所有的项目类别
     */
    @RequestMapping("showAllProjectType")
    @ResponseBody
    public Project_Type showAllProjectType(){

        return projectTypeService.showAllProjectType();
    }

}
