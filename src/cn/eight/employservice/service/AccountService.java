package cn.eight.employservice.service;

import cn.eight.employservice.pojo.AccountBean;

import java.util.List;

public interface AccountService {
    List<AccountBean> findaccountByCritria(int pageNow, int pageSize, AccountBean accountBean);

    int totalaccount(AccountBean accountBean);

    boolean checksameUsername(int username);

    boolean addAccount(AccountBean accountBean);

    List<AccountBean> findaccountinformation(int number);

    boolean modaccount(AccountBean accountBean);

    boolean delaccount(int number);


}
