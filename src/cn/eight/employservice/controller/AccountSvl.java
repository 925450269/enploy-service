package cn.eight.employservice.controller;

import cn.eight.employservice.pojo.AccountBean;
import cn.eight.employservice.service.AccountService;
import cn.eight.employservice.service.impl.AccountServiceImpl;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebInitParam;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.List;

@WebServlet(value = "/accountSvl", initParams = @WebInitParam(name = "pageSize", value = "20"))
public class AccountSvl extends HttpServlet {
    AccountService service=new AccountServiceImpl();
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("utf-8");
        doGet(request,response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String reqType = request.getParameter("reqType");
        if (reqType.equals("queryAccounntByCritria")){
            queryaccounntByCritria(request,response,-1);
        }if (reqType.equals("checkusername")){
            checkusername(request,response);
        }if (reqType.equals("addAccount")){
            addAccount(request,response);
        }if (reqType.equals("queryAccountinformation")){
            queryAccountinformation(request,response);
        }if (reqType.equals("modaccount")){
            modaccount(request,response);
        }if (reqType.equals("delAccount")){
            delAccount(request,response);
        }
    }

    private void delAccount(HttpServletRequest request, HttpServletResponse response) throws IOException {
        int number = Integer.valueOf(request.getParameter("number"));
        boolean result = service.delaccount(number);
        if (result) {
            int pageNow = Integer.valueOf(request.getParameter("pageNow"));
            queryaccounntByCritria(request,response,pageNow);
        }else {
            response.getWriter().print("<script>window.alert('删除失败');window.history.back()</script>");
            response.getWriter().flush();
            return;
        }


    }

    private void modaccount(HttpServletRequest request, HttpServletResponse response) throws IOException {
        response.setContentType("text/html;charset=UTF-8");
        int number = Integer.valueOf(request.getParameter("number"));
        int username = Integer.valueOf(request.getParameter("textarea"));
        String name = request.getParameter("textarea4");
        String sex = request.getParameterValues("sex")[0];
        String company_rank="1";
        if (request.getParameterValues("select")[0].equals("请选择")){
            response.getWriter().print("<script>window.alert('请选择公司级别');window.history.back()</script>");
            response.getWriter().flush();
            return;
        }else if (request.getParameterValues("select")[0].equals("分公司")) {
            company_rank="2";
        }
        String password = request.getParameter("textarea3");
        String passwordagain = request.getParameter("textarea5");
        int number_company = 0;
        if (!request.getParameter("textarea42").isEmpty()){
            number_company=Integer.valueOf(request.getParameter("textarea42"));
        }
        if (!password.equals(passwordagain)) {
            response.getWriter().print("<script>window.alert('密码不一致');window.history.back()</script>");
            response.getWriter().flush();
            return;
        }
        String status =null;
        if (request.getParameterValues("rad")!=null) {
            status = request.getParameterValues("rad")[0];
        }
        String email = request.getParameter("textarea41");
        AccountBean accountBean = new AccountBean(number,username,name,email,password,status,company_rank,number_company,sex);
        boolean result = service.modaccount(accountBean);
        if (result) {
            int pageNow = Integer.valueOf(request.getParameter("pageNow"));
            queryaccounntByCritria(request,response,pageNow);
        }else {
            response.getWriter().print("<script>window.alert('修改失败');window.history.back()</script>");
            response.getWriter().flush();
            return;
        }


    }

    private void queryAccountinformation(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int number = Integer.valueOf(request.getParameter("number"));
        List<AccountBean> accountinformation = service.findaccountinformation(number);
        request.setAttribute("accountinformation",accountinformation);
        String ck = request.getParameter("ck");
        String xg = request.getParameter("xg");
        if (ck == null) {
            try {
                if (request.getParameter("pageNow") != null) {
                    int pageNow = Integer.valueOf(request.getParameter("pageNow"));
                    request.setAttribute("pageNow", pageNow);
                    request.setAttribute("number", number);

                }
                request.getRequestDispatcher("ny/xtgl/yhgl_xg.jsp").forward(request,response);
            } catch (ServletException e) {
                e.printStackTrace();
            } catch (IOException e) {
                e.printStackTrace();
            }
        } else if (xg == null) {
            try {
                request.getRequestDispatcher("ny/xtgl/yhgl_ck.jsp").forward(request,response);
            } catch (ServletException e) {
                e.printStackTrace();
            } catch (IOException e) {
                e.printStackTrace();
            }
        }


    }

    private void addAccount(HttpServletRequest request, HttpServletResponse response) throws IOException {
        response.setContentType("text/html;charset=UTF-8");
        int username = Integer.valueOf(request.getParameter("textarea"));
        String name = request.getParameter("textarea4");
        String sex = request.getParameterValues("sex")[0];
        String company_rank="1";
        if (request.getParameterValues("select")[0].equals("请选择")){
            response.getWriter().print("<script>window.alert('请选择公司级别');window.history.back()</script>");
            response.getWriter().flush();
            return;
        }else if (request.getParameterValues("select")[0].equals("分公司")) {
            company_rank="2";
        }
        String password = request.getParameter("textarea3");
        String passwordagain = request.getParameter("textarea5");
        int number_company = 0;
        if (!request.getParameter("textarea42").isEmpty()){
            number_company=Integer.valueOf(request.getParameter("textarea42"));
        }
        if (!password.equals(passwordagain)) {
            response.getWriter().print("<script>window.alert('密码不一致');window.history.back()</script>");
            response.getWriter().flush();
            return;
        }
        String status =null;
        if (request.getParameterValues("rad")!=null) {
            status = request.getParameterValues("rad")[0];
        }
        String email = request.getParameter("textarea41");
        AccountBean accountBean = new AccountBean(username,name,email,password,status,company_rank,number_company,sex);
        boolean result = service.addAccount(accountBean);
        if (result) {
            queryaccounntByCritria(request,response,1);
        }else {
            response.getWriter().print("<script>window.alert('修改失败');window.history.back()</script>");
            response.getWriter().flush();
        }


    }

    private void checkusername(HttpServletRequest request, HttpServletResponse response) throws IOException {
        int username = Integer.valueOf(request.getParameter("Accountusername"));
        boolean result = service.checksameUsername(username);
        response.getWriter().print(result);
        response.getWriter().flush();


    }

    private void queryaccounntByCritria(HttpServletRequest request, HttpServletResponse response,int update_pageNow) {
        String status = request.getParameterValues("available")[0];
        if (request.getParameterValues("available")[0].equals("1")){
             status="所有";
        }
        String name = request.getParameter("searchValue");
        final int pageSize = Integer.valueOf(getServletConfig().getInitParameter("pageSize"));
        AccountBean accountBean = new AccountBean(status, name);
        int pageNow = 0;
        if (update_pageNow == -1) {
            pageNow = Integer.valueOf(request.getParameter("pageNow"));
            if (pageNow < 1) {
                pageNow = 1;
            }
        } else {
            pageNow = update_pageNow;
        }
        int totalRecord = service.totalaccount(accountBean);
        int totalpage = 0;
        if (totalRecord % pageSize == 0) {
            totalpage = totalRecord / pageSize;
        } else {
            totalpage = totalRecord / pageSize + 1;
        }
        if (pageNow >= totalpage) {
            pageNow = totalpage;
        }
        HttpSession session = request.getSession();
        List<AccountBean> accountBeansList = service.findaccountByCritria(pageNow, pageSize, accountBean);
        session.setAttribute("status",status);
        session.setAttribute("name",name);
        request.setAttribute("accountBean",accountBean);
        request.setAttribute("accountBeansList",accountBeansList);
        request.setAttribute("totalRecord", totalRecord);
        request.setAttribute("totalpage", totalpage);
        request.setAttribute("pageNow", pageNow);
        try {
            request.getRequestDispatcher("ny/xtgl/yhgl.jsp").forward(request, response);
        } catch (ServletException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }
}
