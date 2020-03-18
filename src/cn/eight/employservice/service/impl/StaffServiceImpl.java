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


}
