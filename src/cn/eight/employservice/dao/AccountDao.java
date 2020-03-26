package cn.eight.employservice.dao;

import cn.eight.employservice.pojo.AccountBean;
import cn.eight.employservice.pojo.Staff;
import cn.eight.employservice.pojo.Staffexperience;
import cn.eight.employservice.util.DbPool;
import cn.eight.employservice.util.Tools;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class AccountDao {
    private BasicDao dao = new BasicDao();
    public List<AccountBean>  queryAccountByCritria(int pageNow, int pageSize, AccountBean accountBean){
        PreparedStatement pst=null;
        ResultSet rs=null;
        String sql="select number,username,name,email,status from number ";
        String Critria="";
        if (!accountBean.getStatus().equals("所有")) {
            Critria+=" status='"+accountBean.getStatus()+"'";
        }
        if (!accountBean.getName().trim().isEmpty()) {
            if (Critria.isEmpty()){
                Critria+=" name like'%"+accountBean.getName()+"%'";
            }else {
                Critria+=" and name like'%"+accountBean.getName()+"%'";
            }
        }
        if (Critria.isEmpty()) {
            sql += " LIMIT ?,? ";
        } else {
            sql += " where " + Critria + " LIMIT ?,?";
        }
        Connection con = DbPool.getConnection();
        try {
            pst = con.prepareStatement(sql);
            rs = dao.execQuery(con, pst, (pageNow - 1) * pageSize, pageSize);
            ArrayList<AccountBean> accountList = new ArrayList<>();
            while (rs != null && rs.next()) {
                AccountBean accountBean1 = new AccountBean();
                accountBean1.setNumber(rs.getInt(1));
                accountBean1.setAccountname(rs.getInt(2));
                accountBean1.setName(rs.getString(3));
                accountBean1.setEmail(rs.getString(4));
                accountBean1.setStatus(rs.getString(5));
                accountList.add(accountBean1);
            }
            return accountList;
        } catch (SQLException e) {
            e.printStackTrace();
        }finally {
            dao.releaseResourse(rs,pst,con);
        }
        return null;
    }


    public int QuerysearchRecord(AccountBean accountBean) {
        int result = 0;
        PreparedStatement pst = null;
        ResultSet rs = null;
        String sql = "SELECT count(*) FROM number ";
        String Critria="";
        if (!accountBean.getStatus().equals("所有")) {
            Critria+=" status='"+accountBean.getStatus()+"'";
        }
        if (!accountBean.getName().trim().isEmpty()) {
            if (Critria.isEmpty()){
                Critria+=" name like'%"+accountBean.getName()+"%'";
            }else {
                Critria+=" and name like'%"+accountBean.getName()+"%'";
            }
        }
        if (!Critria.isEmpty()) {
            sql += " where " + Critria;
        }
        Connection con = DbPool.getConnection();
        try {
            pst = con.prepareStatement(sql);
            rs = dao.execQuery(con, pst, null);
            if (rs != null && rs.next()) {
                result = rs.getInt(1);
            }
            return result;
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            dao.releaseResourse(rs, pst, con);
        }
        return result;
    }


    public boolean quersameusername(int username){
        boolean result=false;
        PreparedStatement pst =null;
        ResultSet rs =null;
        Connection con=DbPool.getConnection();
        String sql="select count(*) from number where username=?";
        try {
            pst = con.prepareStatement(sql);
            rs = dao.execQuery(con, pst, username);
            while (rs!=null&&rs.next()&&rs.getInt(1)==1) {
                result=true;
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }finally {
            dao.releaseResourse(rs,pst,con);
        }
        return result;
    }

    public boolean insertAccount(AccountBean accountBean) {
        boolean result = false;
        PreparedStatement pst = null;
        String sql = "insert into number(username,name,email,password,status,company_rank,number_company,sex) values(?,?,?,?,?,?,?,?)";
        Connection con = DbPool.getConnection();
        try {
            con.setAutoCommit(false);
            pst = con.prepareStatement(sql);
            dao.execUpdate(con, pst,accountBean.getAccountname(),accountBean.getName(),accountBean.getEmail(),accountBean.getPassword(),accountBean.getStatus(),accountBean.getCompany_rank(),accountBean.getNumber_company(),accountBean.getSex());
            result = true;
            con.commit();
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


    public List<AccountBean> queryaccountinformation(int number){
        PreparedStatement pst =null;
        ResultSet rs =null;
        String sql="SELECT username,name,email,password,status,company_rank,number_company,sex FROM number WHERE number=?";
        Connection con = DbPool.getConnection();
        try {
            pst = con.prepareStatement(sql);
            rs = dao.execQuery(con, pst, number);
            ArrayList<AccountBean> accountinformationList = new ArrayList<>();
            while (rs != null && rs.next()){
                AccountBean accountBean = new AccountBean();
                accountBean.setAccountname(rs.getInt(1));
                accountBean.setName(rs.getString(2));
                accountBean.setEmail(rs.getString(3));
                accountBean.setPassword(rs.getString(4));
                accountBean.setStatus(rs.getString(5));
                accountBean.setCompany_rank(rs.getString(6));
                accountBean.setNumber_company(rs.getInt(7));
                accountBean.setSex(rs.getString(8));
                accountinformationList.add(accountBean);
                return accountinformationList;
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }finally {
            dao.releaseResourse(rs,pst,con);
        }
        return null;
    }

    public boolean UpdateAccount(AccountBean accountBean) {
        boolean result = false;
        PreparedStatement pst = null;
        String sql = "update number set username=?,name=?,email=?,password=?,status=?,company_rank=?,number_company=?,sex=? where number=?";
        Connection con = DbPool.getConnection();
        try {
            con.setAutoCommit(false);
            pst = con.prepareStatement(sql);
            dao.execUpdate(con, pst,accountBean.getAccountname(),accountBean.getName(),accountBean.getEmail(),accountBean.getPassword(),accountBean.getStatus(),accountBean.getCompany_rank(),accountBean.getNumber_company(),accountBean.getSex(),accountBean.getNumber());
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


    public boolean delateAccount(int number) {
        boolean result = false;
        PreparedStatement pst = null;
        String sql = "UPDATE number set status='已删除' where  number=?";
        Connection con = DbPool.getConnection();
        try {
            con.setAutoCommit(false);
            pst = con.prepareStatement(sql);
            dao.execUpdate(con, pst,number);
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
