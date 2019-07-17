package com.czy.interceptor;

import com.czy.domain.User;
import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * 拦截器必须实现HandlerInterceptor接口
 */
public class AuthorizationInterceptor implements HandlerInterceptor {
    //不拦截 "/login" 、"/loginForm" 请求
    private static final String[] IGNORE_URI = {"/loginForm", "login","register","upload"};

    /**
     * 进行拦截，在Controller之前调用
     * 返回true，拦截器再会继续执行；返回false，整个请求就结束了
     *
     * @param httpServletRequest
     * @param httpServletResponse
     * @param o
     * @return
     * @throws Exception
     */
    @Override
    public boolean preHandle(HttpServletRequest httpServletRequest, HttpServletResponse httpServletResponse, Object o) throws Exception {
        //System.out.println("preHandle--------->");
        //判断是否登入
        boolean flag = false;
        //获取请求路径，进行判断
        String servletPath = httpServletRequest.getServletPath();
        System.out.println("servletPath:"+servletPath);
        //是否请求登入
        for (String s : IGNORE_URI) {
            if (servletPath.contains(s)) {
                flag = true;
                break;
            }
        }
        //不是请求登入，判断是否已登入
        if (!flag) {
            //获取session中的User
            User user = (User) httpServletRequest.getSession().getAttribute("user");
            //判断是否登入
            if (user == null) {
                //没有登入，拦截
                System.out.println("拦截请求");
                httpServletRequest.setAttribute("message","请先登入！");
                httpServletRequest.getRequestDispatcher("loginForm").forward(httpServletRequest,httpServletResponse);
            } else {
                //已登入，放行
                System.out.println("放行");
                flag=true;
            }
        }
        return flag;
    }

    /**
     * 在Controller方法调用后执行
     * 也只有当前Interceor的preHandler方法返回true才执行
     *
     * @param httpServletRequest
     * @param httpServletResponse
     * @param o
     * @param modelAndView        可以操作mv
     * @throws Exception
     */
    @Override
    public void postHandle(HttpServletRequest httpServletRequest, HttpServletResponse httpServletResponse, Object o, ModelAndView modelAndView) throws Exception {
        //System.out.println("postHandle--------->");
    }

    /**
     * 该方法在整个请求之后执行，用于清理资源
     * 只有当前Interceptor的preHandler方法返回true才执行
     */
    @Override
    public void afterCompletion(HttpServletRequest httpServletRequest, HttpServletResponse httpServletResponse, Object o, Exception e) throws Exception {
        //System.out.println("afterCompletion--------->");
    }
}
