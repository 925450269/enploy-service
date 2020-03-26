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

    boolean modstaffinformation(Staff staff);

    List<Integer> findstaffamilyfid(int wid);

    boolean modstaffamily(Staffamily staffamily);

    List<Integer> findstaffexperienceid(int wid);

    boolean modstaffexperience(Staffexperience staffexperience);

    List<Integer> findstafftraintid(int wid);

    boolean modstafftrain(Stafftrain stafftrain);

    boolean addstaffworker(Staff staff);

    boolean addstafffamily(Staffamily staffamily);

    boolean addstaffexperience(Staffexperience staffexperience);

    boolean addstafftrain(Stafftrain stafftrain);

    boolean Verifywid(String wid);

}
