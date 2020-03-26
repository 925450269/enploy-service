package cn.eight.employservice.pojo;

import java.util.HashMap;
import java.util.Map;

public class AccountBean {
    private int number;
    private int accountname;
    private String name;
    private String email;
    private String password;
    private String status;
    private String company_rank;
    private int number_company;
    private String sex;




    public AccountBean() {

    }
    public AccountBean(String status,String name) {
        this.status = status;
        this.name = name;

    }

    public AccountBean(int accountname, String name, String email, String password, String status, String company_rank, int number_company,String sex) {
        this.accountname = accountname;
        this.name = name;
        this.email = email;
        this.password = password;
        this.status = status;
        this.company_rank = company_rank;
        this.number_company = number_company;
        this.sex = sex;
    }

    public AccountBean(int number, int accountname, String name, String email, String password, String status, String company_rank, int number_company, String sex) {
        this.number = number;
        this.accountname = accountname;
        this.name = name;
        this.email = email;
        this.password = password;
        this.status = status;
        this.company_rank = company_rank;
        this.number_company = number_company;
        this.sex = sex;
    }

    public int getNumber() {
        return number;
    }

    public void setNumber(int number) {
        this.number = number;
    }

    public int getAccountname() {
        return accountname;
    }

    public void setAccountname(int accountname) {
        this.accountname = accountname;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }

    public String getCompany_rank() {
        return company_rank;
    }

    public void setCompany_rank(String company_rank) {
        this.company_rank = company_rank;
    }

    public int getNumber_company() {
        return number_company;
    }

    public void setNumber_company(int number_company) {
        this.number_company = number_company;
    }

    public String getSex() {
        return sex;
    }

    public void setSex(String sex) {
        this.sex = sex;
    }
}
