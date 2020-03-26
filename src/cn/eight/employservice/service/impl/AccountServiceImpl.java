package cn.eight.employservice.service.impl;

import cn.eight.employservice.dao.AccountDao;
import cn.eight.employservice.pojo.AccountBean;
import cn.eight.employservice.service.AccountService;
import cn.eight.employservice.util.Tools;

import java.util.List;

public class AccountServiceImpl implements AccountService  {
    AccountDao accountDao = new AccountDao();

    @Override
    public List<AccountBean> findaccountByCritria(int pageNow, int pageSize, AccountBean accountBean) {
        return accountDao.queryAccountByCritria(pageNow, pageSize, accountBean);
    }

    @Override
    public int totalaccount(AccountBean accountBean) {
        return accountDao.QuerysearchRecord(accountBean);
    }

    @Override
    public boolean checksameUsername(int username) {
        return accountDao.quersameusername(username);
    }

    @Override
    public boolean addAccount(AccountBean accountBean) {
        accountBean.setPassword(Tools.md5(accountBean.getPassword()));
        return accountDao.insertAccount(accountBean);
    }

    @Override
    public List<AccountBean> findaccountinformation(int number) {
        return accountDao.queryaccountinformation(number);
    }

    @Override
    public boolean modaccount(AccountBean accountBean) {
        return accountDao.UpdateAccount(accountBean);
    }

    @Override
    public boolean delaccount(int number) {
        return accountDao.delateAccount(number);
    }

}
