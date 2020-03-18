package cn.eight.employservice.dao;

import cn.eight.employservice.pojo.*;
import cn.eight.employservice.util.DbPool;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class StaffDao {
    private BasicDao dao = new BasicDao();
    public List<Staff> QueryStaffByCritria(Staff staff,int pageNow,int pageSize){
        PreparedStatement pst=null;
        ResultSet rs=null;
        String sql="select wid,wname,wsex,wage,grskills,salaryrequire,status,starttime,companyid from worker";
        String critria = StaffDao.querystatement(staff);
        if (critria.isEmpty()){
            sql+=" LIMIT ?,? ";
        }else {
            sql+=" where "+critria+" LIMIT ?,?";
        }
        Connection con = DbPool.getConnection();
        try {
            pst = con.prepareStatement(sql);
            rs = dao.execQuery(con, pst, (pageNow - 1) * pageSize, pageSize);
            List<Staff> staffList=new ArrayList<>();
            while (rs!=null&&rs.next()) {
                Staff staffBean = new Staff();
                staffBean.setWid(String.valueOf(rs.getInt(1)));
                staffBean.setWname(rs.getString(2));
                staffBean.setWsex(rs.getString(3));
                staffBean.setWage(String.valueOf(rs.getInt(4)));
                staffBean.setGrskills(rs.getString(5));
                staffBean.setSalaryrequire(rs.getString(6));
                staffBean.setStatus(rs.getString(7));
                staffBean.setStarttime(rs.getDate(8));
                staffBean.setCompanyid(rs.getString(9));
                staffList.add(staffBean);
            }
            return staffList;
        } catch (SQLException e) {
            e.printStackTrace();
        }finally {
            dao.releaseResourse(rs,pst,con);
        }
        return null;
    }


    public List<Staff> QuerystaffAll(int pageNow,int pageSize){
        PreparedStatement pst =null;
        ResultSet rs =null;
        String sql="SELECT wid,wname,wsex,wage,grskills,salaryrequire,status,starttime FROM worker  LIMIT ?,?;";
        Connection con = DbPool.getConnection();
        try {
            pst = con.prepareStatement(sql);
            rs = dao.execQuery(con, pst, (pageNow-1)*pageSize,pageSize);
            List<Staff> staffList=new ArrayList<>();
            while (rs!=null&&rs.next()) {
                Staff staffBean=new Staff();
                staffBean.setWid(String.valueOf(rs.getInt(1)));
                staffBean.setWname(rs.getString(2));
                staffBean.setWsex(rs.getString(3));
                staffBean.setWage(String.valueOf(rs.getInt(4)));
                staffBean.setGrskills(rs.getString(5));
                staffBean.setSalaryrequire(rs.getString(6));
                staffBean.setStatus(rs.getString(7));
                staffBean.setStarttime(rs.getDate(8));
                staffList.add(staffBean);
            }
            return staffList;
        } catch (SQLException e) {
            e.printStackTrace();
        }finally {
            dao.releaseResourse(rs,pst,con);
        }
        return null;
    }



    public List<Staff> Querystaffallinformation(int wid){
        PreparedStatement pst =null;
        ResultSet rs =null;
        String sql="SELECT * from worker where wid="+wid;
        Connection con = DbPool.getConnection();
        try {
            pst = con.prepareStatement(sql);
            rs = dao.execQuery(con, pst, null);
            List<Staff> staffList=new ArrayList<>();
            while (rs!=null&&rs.next()) {
                Staff staffBean=new Staff();
                staffBean.setWid(rs.getString(1));
                staffBean.setCid(rs.getInt(2));
                staffBean.setWname(rs.getString(3));
                staffBean.setWsex(rs.getString(4));
                staffBean.setIdcard(rs.getString(5));
                staffBean.setBirth(rs.getDate(6));
                staffBean.setWage(rs.getString(7));
                staffBean.setHige(rs.getInt(8));
                staffBean.setCellphone(rs.getString(9));
                staffBean.setPhone(rs.getString(10));
                staffBean.setType(rs.getString(11));
                staffBean.setWorktime(rs.getDate(12));
                staffBean.setDefect(rs.getString(13));
                staffBean.setPhoto(rs.getString(14));
                staffBean.setJhddress(rs.getString(15));
                staffBean.setAddress(rs.getString(16));
                staffBean.setCard(rs.getString(17));
                staffBean.setBxnumber(rs.getString(18));
                staffBean.setLanguage(rs.getString(19));
                staffBean.setStatus(rs.getString(20));
                staffBean.setHystatus(rs.getString(21));
                staffBean.setZjstatus(rs.getString(22));
                staffBean.setTjstatus(rs.getString(23));
                staffBean.setTjtime(rs.getDate(24));
                staffBean.setGrskills(rs.getString(25));
                staffBean.setJieshao(rs.getString(26));
                staffBean.setTimerequire(rs.getDate(27));
                staffBean.setSalaryrequire(rs.getString(28));
                staffBean.setLive(rs.getString(29));
                staffBean.setEat(rs.getString(30));
                staffBean.setStarttime(rs.getDate(31));
                staffBean.setCompanyid(rs.getString(32));
                staffList.add(staffBean);

            }
            return staffList;
        } catch (SQLException e) {
            e.printStackTrace();
        }finally {
            dao.releaseResourse(rs,pst,con);
        }
        return null;
    }


    public List<Staffamily> Querystaffamily(int wid){
        PreparedStatement pst =null;
        ResultSet rs =null;
        String sql="SELECT relation,fname,fage,phone,workplace FROM family where wid="+wid;
        Connection con = DbPool.getConnection();
        try {
            pst = con.prepareStatement(sql);
            rs = dao.execQuery(con, pst, null);
            List<Staffamily> staffamilyList=new ArrayList<>();
            while (rs!=null&&rs.next()) {
                Staffamily staffamilyBean=new Staffamily();
                staffamilyBean.setRelation(rs.getString(1));
                staffamilyBean.setFname(rs.getString(2));
                staffamilyBean.setFage((rs.getInt(3)));
                staffamilyBean.setPhone(rs.getString(4));
                staffamilyBean.setWorkplace(rs.getString(5));
                staffamilyList.add(staffamilyBean);
            }
            return staffamilyList;
        } catch (SQLException e) {
            e.printStackTrace();
        }finally {
            dao.releaseResourse(rs,pst,con);
        }
        return null;
    }
    public List<Staffexperience> Querystaffexperience(int wid){
        PreparedStatement pst =null;
        ResultSet rs =null;
        String sql="SELECT workplace,type,duty,worktime FROM experience where wid="+wid;
        Connection con = DbPool.getConnection();
        try {
            pst = con.prepareStatement(sql);
            rs = dao.execQuery(con, pst, null);
            List<Staffexperience> staffexperienceList=new ArrayList<>();
            while (rs!=null&&rs.next()) {
                Staffexperience staffexperienceBean=new Staffexperience();
                staffexperienceBean.setWorkplace(rs.getString(1));
                staffexperienceBean.setType(rs.getString(2));
                staffexperienceBean.setDuty((rs.getString(3)));
                staffexperienceBean.setWorktime(rs.getDate(4));
                staffexperienceList.add(staffexperienceBean);
            }
            return staffexperienceList;
        } catch (SQLException e) {
            e.printStackTrace();
        }finally {
            dao.releaseResourse(rs,pst,con);
        }
        return null;
    }


    public List<Stafftrain> Querystafftrain(int wid){
        PreparedStatement pst =null;
        ResultSet rs =null;
        String sql="SELECT organization,content,status,time FROM train where wid="+wid;
        Connection con = DbPool.getConnection();
        try {
            pst = con.prepareStatement(sql);
            rs = dao.execQuery(con, pst, null);
            List<Stafftrain> stafftrainList=new ArrayList<>();
            while (rs!=null&&rs.next()) {
                Stafftrain stafftrainBean=new Stafftrain();
                stafftrainBean.setOrganization(rs.getString(1));
                stafftrainBean.setContent(rs.getString(2));
                stafftrainBean.setStatus((rs.getString(3)));
                stafftrainBean.setTime(rs.getDate(4));
                stafftrainList.add(stafftrainBean);
            }
            return stafftrainList;
        } catch (SQLException e) {
            e.printStackTrace();
        }finally {
            dao.releaseResourse(rs,pst,con);
        }
        return null;
    }


    public int QueryTotalRecord(){
        int result=0;
        PreparedStatement pst =null;
        ResultSet rs =null;
        String sql="SELECT count(*) FROM worker ;";
        Connection con = DbPool.getConnection();
        try {
            pst = con.prepareStatement(sql);
            rs = dao.execQuery(con, pst, null);
            if (rs!=null&&rs.next()){
                result=rs.getInt(1);
            }
            return result;
        } catch (SQLException e) {
            e.printStackTrace();
        }finally {
            dao.releaseResourse(rs,pst,con);
        }
        return result;
    }
    public int QuerysearchRecord(Staff staff){
        int result=0;
        PreparedStatement pst =null;
        ResultSet rs =null;
        String sql="SELECT count(*) FROM worker ";
        String critria = StaffDao.querystatement(staff);
        if (!critria.isEmpty()){
            sql+=" where "+critria;
        }
        Connection con = DbPool.getConnection();
        try {
            pst = con.prepareStatement(sql);
            rs = dao.execQuery(con, pst, null);
            if (rs!=null&&rs.next()){
                result=rs.getInt(1);
            }
            return result;
        } catch (SQLException e) {
            e.printStackTrace();
        }finally {
            dao.releaseResourse(rs,pst,con);
        }
        return result;
    }

    static String querystatement(Staff staff) {
        String critria="";
        if (!staff.getWname().trim().isEmpty()&&staff.getWname()!="") {
            critria=" wname like'%"+staff.getWname()+"%'";
        }
        if (staff.getWsex()!=null&&staff.getWsex()!="") {
            if (!critria.isEmpty()){
                critria+=" and wsex='"+staff.getWsex()+"'";
            }else {
                critria+="  wsex='"+staff.getWsex()+"'";
            }
        }
        if (!staff.getWage().trim().isEmpty()&&staff.getWage()!="") {
            if (!critria.trim().isEmpty()){
                critria+=" and wage="+staff.getWage();
            }else {
                critria+=" wage="+staff.getWage();
            }
        }
        if (staff.getStatus()!=null&&staff.getStatus()!="") {
            if (!critria.isEmpty()){
                critria+=" and status='"+staff.getStatus()+"'";
            }else {
                critria+=" status='"+staff.getStatus()+"'";
            }
        }
        if (staff.getGrskills()!=null&&staff.getGrskills()!="") {
            if (!critria.isEmpty()){
                critria+=" and grskills like'%"+staff.getGrskills()+"%'";
            }else {
                critria+=" grskills like'%"+staff.getGrskills()+"%'";
            }
        }
        return critria;
    }
    public boolean Updatestaffexprience(Staffexperience staffexperience) {
        boolean result = false;
        PreparedStatement pst = null;
        String sql = "update experience set workplace=?,type=?,duty=?,worktime=? where wid=?";
        Connection con = DbPool.getConnection();
        try {
            con.setAutoCommit(false);
            pst = con.prepareStatement(sql);
            dao.execUpdate(con, pst,staffexperience.getWorkplace(),staffexperience.getType(),staffexperience.getDuty(),staffexperience.getWorktime(),staffexperience.getWid());
            con.commit();
            result = true;
        } catch (SQLException e) {
            try {
                con.rollback();
            } catch (SQLException e1) {
                e1.printStackTrace();
            }
            e.printStackTrace();
        } finally {
            dao.releaseResourse(null, pst, con);
        }
        return result;
    }
    public boolean Updatestaffamily(Staffamily staffamily) {
        boolean result = false;
        PreparedStatement pst = null;
        String sql = "update family set relation=?,fname=?,fage=?,phone=?,workplace=? where wid=?";
        Connection con = DbPool.getConnection();
        try {
            con.setAutoCommit(false);
            pst = con.prepareStatement(sql);
            dao.execUpdate(con, pst,staffamily.getRelation(),staffamily.getFname(),staffamily.getFage(),staffamily.getPhone(),staffamily.getWorkplace(),staffamily.getWid());
            con.commit();
            result = true;
        } catch (SQLException e) {
            try {
                con.rollback();
            } catch (SQLException e1) {
                e1.printStackTrace();
            }
            e.printStackTrace();
        } finally {
            dao.releaseResourse(null, pst, con);
        }
        return result;
    }
    public boolean Updatestafftrain(Stafftrain stafftrain) {
        boolean result = false;
        PreparedStatement pst = null;
        String sql = "update train set organization=?,content=?,status=?,time=? where wid=?";
        Connection con = DbPool.getConnection();
        try {
            con.setAutoCommit(false);
            pst = con.prepareStatement(sql);
            dao.execUpdate(con, pst,stafftrain.getOrganization(),stafftrain.getContent(),stafftrain.getStatus(),stafftrain.getTime(),stafftrain.getWid());
            con.commit();
            result = true;
        } catch (SQLException e) {
            try {
                con.rollback();
            } catch (SQLException e1) {
                e1.printStackTrace();
            }
            e.printStackTrace();
        } finally {
            dao.releaseResourse(null, pst, con);
        }
        return result;
    }


    public boolean Updatestaffworker(Staff staff) {
        boolean result = false;
        PreparedStatement pst = null;
        String sql = "update worker set companyid=?,wname=?,wsex=?,idcard=?,birth=?,wage=?,hige=?," +
                "cellphone=?,phone=?,type=?,worktime=?,defect=?,jhddress=?,address=?,card=?," +
                "bxnumber=?,language=?,status=?,hystatus=?,zjstatus=?,tjstatus=?,tjtime=?," +
                "jieshao=?,timerequire=?,live=?,salaryrequire=?,eat=? where wid=?";
        Connection con = DbPool.getConnection();
        try {
            con.setAutoCommit(false);
            pst = con.prepareStatement(sql);
            dao.execUpdate(con, pst,staff.getCompanyid(),staff.getWname(),staff.getWsex(),staff.getIdcard(),staff.getBirth(),staff.getWage(),staff.getHige(),
                    staff.getCellphone(),staff.getPhone(),staff.getType(),staff.getWorktime(),staff.getDefect(),staff.getJhddress(),staff.getAddress(),staff.getCard(),
                    staff.getBxnumber(),staff.getLanguage(),staff.getStatus(),staff.getHystatus(),staff.getZjstatus(),staff.getTjstatus(),staff.getTjtime(),
                    staff.getJieshao(),staff.getTimerequire(),staff.getLive(),staff.getSalaryrequire(),staff.getEat(),staff.getWid());
            con.commit();
            result = true;
        } catch (SQLException e) {
            try {
                con.rollback();
            } catch (SQLException e1) {
                e1.printStackTrace();
            }
            e.printStackTrace();
        } finally {
            dao.releaseResourse(null, pst, con);
        }
        return result;
    }

}
