package cn.eight.employservice.service.impl;

import cn.eight.employservice.dao.StaffDao;
import cn.eight.employservice.pojo.Staff;
import cn.eight.employservice.pojo.Staffamily;
import cn.eight.employservice.pojo.Staffexperience;
import cn.eight.employservice.pojo.Stafftrain;
import cn.eight.employservice.service.StaffService;

import java.util.List;

public class StaffServiceImpl implements StaffService {
    StaffDao staffDao = new StaffDao();

    @Override
    public List<Staff> findAllstaffByCritria(Staff staff, int pageNow, int pageSize) {
        return staffDao.QueryStaffByCritria(staff, pageNow, pageSize);
    }

    @Override
    public List<Staff> findAllstaff(int pageNow, int pageSize) {
        return staffDao.QuerystaffAll(pageNow, pageSize);
    }

    @Override
    public int totalstaff() {
        return staffDao.QueryTotalRecord();
    }

    @Override
    public int reachstaffRecord(Staff staff) {
        return staffDao.QuerysearchRecord(staff);
    }

    @Override
    public List<Staffamily> findstaffamily(int wid) {
        return staffDao.Querystaffamily(wid);
    }

    @Override
    public List<Staffexperience> findstaffexperience(int wid) {
        return staffDao.Querystaffexperience(wid);
    }

    @Override
    public List<Stafftrain> findstafftrain(int wid) {
        return staffDao.Querystafftrain(wid);
    }

    @Override
    public List<Staff> findstaffinformation(int wid) {
        return staffDao.Querystaffallinformation(wid);
    }

    @Override
    public boolean modstaffinformation(Staff staff) {
        return staffDao.Updatestaffworker(staff);
    }

    @Override
    public List<Integer> findstaffamilyfid(int wid) {
        return staffDao.Querystaffamilyfid(wid);
    }

    @Override
    public boolean modstaffamily(Staffamily staffamily) {
        return staffDao.Updatestaffamily(staffamily);
    }

    @Override
    public List<Integer> findstaffexperienceid(int wid) {
        return staffDao.Querystaffexperienceid(wid);
    }

    @Override
    public boolean modstaffexperience(Staffexperience staffexperience) {
        return staffDao.Updatestaffexeprience(staffexperience);
    }

    @Override
    public List<Integer> findstafftraintid(int wid) {
        return staffDao.Querystaffatraintid(wid);
    }

    @Override
    public boolean modstafftrain(Stafftrain stafftrain) {
        return staffDao.Updatestafftrain(stafftrain);
    }

    @Override
    public boolean addstaffworker(Staff staff) {
        return staffDao.insertstaffworker(staff);
    }

    @Override
    public boolean addstafffamily(Staffamily staffamily) {
        return staffDao.insertstaffamily(staffamily);
    }

    @Override
    public boolean addstaffexperience(Staffexperience staffexperience) {
        return staffDao.insertstaffexeprience(staffexperience);
    }

    @Override
    public boolean addstafftrain(Stafftrain stafftrain) {
        return staffDao.insertstafftrain(stafftrain);
    }

    @Override
    public boolean Verifywid(String wid) {
        return staffDao.querStaffsamewid(wid);
    }

}
