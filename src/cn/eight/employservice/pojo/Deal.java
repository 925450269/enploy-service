package cn.eight.employservice.pojo;

/**
 * @author 瞿琮
 * @create 2020-03-16 11:53
 */
public class Deal {
    //交易编号
    private Integer dealid;
    //经办人编号
    private Integer agentid;
    //工资
    private Integer price;
    //介绍费
    private Integer  intro_price;
    //公司编号
    private Integer company_id;
    //员工编号
    private Integer work_id;
    //雇主编号
    private Integer emp_id;
    //登记时间
    private String reg_time;
    //交易有效期
    private String dealtime;
    //状态
    private String statue;

    //雇佣类型
    private String employ_type;

    //成交日期
    private String deal_time;
    //其他
    private String other;

    //公司名称，在交易表中没有公司名称，设一个公司名称参数，调用Company类中的方法找到名称并通过set方法放进来
    private String companyName;

    public String getCompanyName() {
        return companyName;
    }

    public void setCompanyName(String companyName) {
        this.companyName = companyName;
    }

    //员工名称
    private String workName;

    public String getWorkName() {
        return workName;
    }

    public void setWorkName(String workName) {
        this.workName = workName;
    }

    //客户名称
    private String employerName;

    public String getEmployerName() {
        return employerName;
    }

    public void setEmployerName(String employerName) {
        this.employerName = employerName;
    }

    public Deal() {
    }

    public Deal(Integer dealid, Integer agentid, Integer price, Integer intro_price, Integer company_id, Integer work_id, Integer emp_id, String reg_time, String dealtime, String statue, String employ_type, String deal_time, String other) {
        this.dealid = dealid;
        this.agentid = agentid;
        this.price = price;
        this.intro_price = intro_price;
        this.company_id = company_id;
        this.work_id = work_id;
        this.emp_id = emp_id;
        this.reg_time = reg_time;
        this.dealtime = dealtime;
        this.statue = statue;
        this.employ_type = employ_type;
        this.deal_time = deal_time;
        this.other = other;
    }

    public Integer getDealid() {
        return dealid;
    }

    public void setDealid(Integer dealid) {
        this.dealid = dealid;
    }

    public Integer getAgentid() {
        return agentid;
    }

    public void setAgentid(Integer agentid) {
        this.agentid = agentid;
    }

    public Integer getPrice() {
        return price;
    }

    public void setPrice(Integer price) {
        this.price = price;
    }

    public Integer getIntro_price() {
        return intro_price;
    }

    public void setIntro_price(Integer intro_price) {
        this.intro_price = intro_price;
    }

    public Integer getCompany_id() {
        return company_id;
    }

    public void setCompany_id(Integer company_id) {
        this.company_id = company_id;
    }

    public Integer getWork_id() {
        return work_id;
    }

    public void setWork_id(Integer work_id) {
        this.work_id = work_id;
    }

    public Integer getEmp_id() {
        return emp_id;
    }

    public void setEmp_id(Integer emp_id) {
        this.emp_id = emp_id;
    }

    public String getReg_time() {
        return reg_time;
    }

    public void setReg_time(String reg_time) {
        this.reg_time = reg_time;
    }

    public String getDealtime() {
        return dealtime;
    }

    public void setDealtime(String dealtime) {
        this.dealtime = dealtime;
    }

    public String getStatue() {
        return statue;
    }

    public void setStatue(String statue) {
        this.statue = statue;
    }

    public String getEmploy_type() {
        return employ_type;
    }

    public void setEmploy_type(String employ_type) {
        this.employ_type = employ_type;
    }

    public String getDeal_time() {
        return deal_time;
    }

    public void setDeal_time(String deal_time) {
        this.deal_time = deal_time;
    }

    public String getOther() {
        return other;
    }

    public void setOther(String other) {
        this.other = other;
    }
}
