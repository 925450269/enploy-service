package cn.eight.employservice.service;

import cn.eight.employservice.pojo.Staff;
import cn.eight.employservice.pojo.Staffamily;
import cn.eight.employservice.pojo.Staffexperience;
import cn.eight.employservice.pojo.Stafftrain;

import java.util.List;

public interface StaffService {

    List<Staff> findAllstaffByCritria(Staff staff, int pageNow, int pageSize);

    List<Staff> findAllstaff(int pageNow, int pageSize);

    int totalstaff();

    int reachstaffRecord(Staff staff);

    List<Staffamily> findstaffamily(int wid);
    List<Staffexperience> findstaffexperience(int wid);
    List<Stafftrain> findstafftrain(int wid);
    List<Staff> findstaffinformation(int wid);


}
