package com.czy.controller;

import org.apache.commons.io.FileUtils;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.File;
import java.io.IOException;

@Controller
public class FileController {

    @RequestMapping("/register")
    public ModelAndView regist(HttpServletRequest request, HttpServletResponse response) {
        ModelAndView mv = new ModelAndView("uploadForm");
        return mv;
    }

    @RequestMapping("/userInfo")
    public ModelAndView userInfo() {
        ModelAndView mv = new ModelAndView("userInfo");
        mv.addObject("filename", ";陈泽宇-证件照.jpg");
        return mv;
    }

    @RequestMapping(value = "/upload", method = RequestMethod.POST)
    public String upload(HttpServletRequest request,
                         @RequestParam("description") String description,
                         @RequestParam("file") MultipartFile file) throws IOException {
        if (!file.isEmpty()) {//文件不为空
            String path = request.getServletContext().getRealPath("/images/");
            String filename = file.getOriginalFilename();
            System.out.println("filename: "+filename);
            File filepath = new File(path, filename);
            if (!filepath.getParentFile().exists()) {
                filepath.getParentFile().mkdirs();
            }
            file.transferTo(new File(path + File.separator + filename));
            return "success";
        } else
            return "error";
    }

    @RequestMapping("/download")
    public ResponseEntity<byte[]> download(HttpServletRequest request,
                                           @RequestParam("filename") String filename,
                                           Model model) throws IOException {
        //下载路径
        String path = request.getServletContext().getRealPath("/images");
        File file = new File(path + File.separator + filename);
        System.out.println("文件路径：" + path + File.separator + filename);
        HttpHeaders headers = new HttpHeaders();
        // 下载显示的文件名，解决中文乱码问题
        String downloadFileName = new String(filename.getBytes("UTF-8"), "iso-8859-1");
        // 通知浏览器以attachment的方式下载图片
        headers.setContentDispositionFormData("attachment", downloadFileName);
        // application/octet-stream：二进制流数据（最常见的文件下载）
        headers.setContentType(MediaType.APPLICATION_OCTET_STREAM);
        return new ResponseEntity<byte[]>(FileUtils.readFileToByteArray(file),
                headers, HttpStatus.CREATED);
    }
}
