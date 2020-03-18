package cn.eight.employservice.controller;

import cn.eight.employservice.pojo.Staff;
import cn.eight.employservice.pojo.Staffamily;
import cn.eight.employservice.pojo.Staffexperience;
import cn.eight.employservice.pojo.Stafftrain;
import cn.eight.employservice.service.StaffService;
import cn.eight.employservice.service.impl.StaffServiceImpl;


import javax.servlet.ServletException;
import javax.servlet.ServletOutputStream;
import javax.servlet.annotation.WebInitParam;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.util.List;


@WebServlet(value="/staffsvl",initParams = @WebInitParam(name = "pageSize", value = "20"))
public class StaffSvl extends HttpServlet {
    StaffService service=new StaffServiceImpl();
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("utf-8");
        doGet(request,response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String reqType = request.getParameter("reqType");
        if (reqType.equals("querystaff")){
            querystaffByCritria(request,response,-1);
        }if (reqType.equals("querystaffAll")){
            querystaffAll(request,response,-1);
        }if (reqType.equals("querystaffinformation")){
            querystaffinformation(request,response);
        }if (reqType.equals("downloadImg")){
            downImg(request,response);
        }
    }



    private void downImg(HttpServletRequest request, HttpServletResponse response) {
        String filename = request.getParameter("filename");
        String path = request.getServletContext().getRealPath("/WEB-INF/upload/" + filename);
        FileInputStream fis=null;
        ServletOutputStream os =null;
        try {
           fis = new FileInputStream(path);
           os = response.getOutputStream();
           int len=0;
            byte[] buff = new byte[8 * 1024];
            while ((len=fis.read(buff))!=-1){
                os.write(buff,0,len);
            }
            os.flush();
        }catch (IOException e) {
            e.printStackTrace();
        }finally {
            try {
                fis.close();
                os.close();
            } catch (IOException e) {
                e.printStackTrace();
            }
        }
    }

    private void querystaffinformation(HttpServletRequest request, HttpServletResponse response) {
        int wid = Integer.valueOf(request.getParameter("wid"));
        List<Staff> staffinformationList = service.findstaffinformation(wid);
        List<Staffamily> staffamilyList = service.findstaffamily(wid);
        List<Staffexperience> staffexperienceList = service.findstaffexperience(wid);
        List<Stafftrain> stafftrainList = service.findstafftrain(wid);
        request.setAttribute("staffinformationList",staffinformationList);
        request.setAttribute("staffamilyList",staffamilyList);
        request.setAttribute("staffexperienceList",staffexperienceList);
        request.setAttribute("stafftrainList",stafftrainList);
        String ck = request.getParameter("ck");
        String xg = request.getParameter("xg");
        if (ck==null){
            try {
                request.getRequestDispatcher("project/ny/rlzy/grxx_xg.jsp").forward(request,response);
            } catch (ServletException e) {
                e.printStackTrace();
            } catch (IOException e) {
                e.printStackTrace();
            }
        }else if (xg==null){
            try {
                request.getRequestDispatcher("project/ny/rlzy/grxx_ck.jsp").forward(request,response);
            } catch (ServletException e) {
                e.printStackTrace();
            } catch (IOException e) {
                e.printStackTrace();
            }
        }
    }

    private void querystaffAll(HttpServletRequest request, HttpServletResponse response, int update_pageNow) {
        String Specified_page = request.getParameter("pageSelect");
        int pageNow=0;
        if (update_pageNow==-1) {
            pageNow = Integer.valueOf(request.getParameter("pageNow"));
            if (pageNow<1) {
                pageNow=1;
            }
        }else {
            pageNow=update_pageNow;
        }
        final int pageSize = Integer.valueOf(getServletConfig().getInitParameter("pageSize"));
        int totalRecord = service.totalstaff();
        int totalpage=0;
        if (totalRecord%pageSize==0){
            totalpage=totalRecord/pageSize;
        }else {
            totalpage=totalRecord/pageSize+1;
        }
        if (pageNow>=totalpage){
            pageNow=totalpage;
        }
        List<Staff> staffList = service.findAllstaff(pageNow, pageSize);
        request.setAttribute("staffList",staffList);
        request.setAttribute("totalRecord",totalRecord);
        request.setAttribute("totalpage",totalpage);
        request.setAttribute("pageNow",pageNow);
        request.setAttribute("Specified_page",Specified_page);
        try {
            request.getRequestDispatcher("project/ny/rlzy/grxxall.jsp").forward(request,response);
        } catch (ServletException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    private void querystaffByCritria(HttpServletRequest request, HttpServletResponse response,int update_pageNow)  {
        String name = request.getParameter("searchName");
        String sex = request.getParameter("radio");
        String age=request.getParameter("searchName2");
        String status = null;
        if (!request.getParameter("select").equals("请选择")){
            status=request.getParameter("select");
        }
        String grskills = null;
        if (!request.getParameter("select2").equals("请选择")){
            grskills=request.getParameter("select2");
        }
        final int pageSize = Integer.valueOf(getServletConfig().getInitParameter("pageSize"));
        int pageNow = 0;
        if (update_pageNow == -1) {
            pageNow = Integer.valueOf(request.getParameter("pageNow"));
            if (pageNow<1) {
                pageNow=1;
            }
        } else {
            pageNow = update_pageNow;
        }
        Staff staff = new Staff(null,name,sex,age,grskills,status,null,null,null);
        HttpSession session = request.getSession();
        int totalRecord = service.reachstaffRecord(staff);
        int totalpage=0;
        if (totalRecord%pageSize==0){
            totalpage=totalRecord/pageSize;
        }else {
            totalpage=totalRecord/pageSize+1;
        }
        if (pageNow>=totalpage){
            pageNow=totalpage;
        }
        List<Staff> staffList = service.findAllstaffByCritria(staff, pageNow, pageSize);
        session.setAttribute("staff",staff);
        request.setAttribute("staffList",staffList);
        request.setAttribute("totalRecord",totalRecord);
        request.setAttribute("totalpage",totalpage);
        request.setAttribute("pageNow",pageNow);
        String grxx_ss = request.getParameter("searchbtn1");
        String grxx = request.getParameter("searchbtn2");
        if (grxx==null){
            try {
                request.getRequestDispatcher("project/ny/rlzy/grxx_ss.jsp").forward(request,response);
            } catch (ServletException e) {
                e.printStackTrace();
            } catch (IOException e) {
                e.printStackTrace();
            }
        }else if (grxx_ss==null){
            try {
                request.getRequestDispatcher("project/ny/rlzy/grxx.jsp").forward(request,response);
            } catch (ServletException e) {
                e.printStackTrace();
            } catch (IOException e) {
                e.printStackTrace();
            }
        }

    }
}
