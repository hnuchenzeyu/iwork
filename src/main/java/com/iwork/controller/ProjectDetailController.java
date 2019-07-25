package com.iwork.controller;

import com.iwork.bean.Project;
import com.iwork.bean.Project_Type;
import com.iwork.service.ProjectTypeService;
import com.iwork.service.ProjectsService;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

@Controller
@RequestMapping(value = "/Resource")
public class ProjectDetailController {

    @Resource
    ProjectsService projectsService;

    @Resource
    ProjectTypeService projectTypeService;

    /**
     * 显示项目详情
     * @param projectId
     * @param response
     * @return
     * @throws NullPointerException
     */
    @RequestMapping("/viewProject")
    @ResponseBody
    public ModelAndView viewProject(@RequestParam int projectId, HttpServletResponse response) throws IOException {
        ModelAndView modelAndView  = new ModelAndView("project_detail");
        Project project = projectsService.viewProjectDetail(projectId);

        modelAndView.addObject("project",project);

        response.getWriter().print("显示项目详情");

        return modelAndView;
    }

    /**
     * 显示所有的项目类别
     */
//    @RequestMapping("showAllProjectType")
//    @ResponseBody
//    public ModelAndView showAllProjectType() throws NullPointerException{
//        ModelAndView modelAndView = new ModelAndView("projects");
//        List<Project_Type> list = new ArrayList<Project_Type>();
//        if (null == list){
//            System.out.println("showAllProjectType null");
//        }else{
//            list = projectTypeService.showAllProjectType();
//            System.out.println("list:"+list.get(1).getProjectTypeName());
//
//            modelAndView.addObject("projectTypes",list);
//
//        }
////        List<Project_Type> list = projectTypeService.showAllProjectType();
//
//        return modelAndView;
//    }


}
