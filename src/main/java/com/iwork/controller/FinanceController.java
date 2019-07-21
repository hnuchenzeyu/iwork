package com.iwork.controller;

import com.iwork.bean.prize;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@Controller
@RequestMapping("/Resource/finance")
public class FinanceController {

    @RequestMapping("/addPrize")
    public void addPrize(@RequestBody prize p, HttpServletResponse response) throws IOException {
        System.out.println("Request Success!"+p.getType());
        response.getWriter().print("OK");
    }
}
