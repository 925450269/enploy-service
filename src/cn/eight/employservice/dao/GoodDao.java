package cn.eight.employservice.dao;

public class GoodDao {
    private BasicDao basicDao = new BasicDao();


    /*public List<String> queryGoodType() {
        String sql = "select DISTINCT goodtype from good order by goodtype";
        Connection con = DbPool.getConnection();
        PreparedStatement pst = null;
        ResultSet rs = null;
        try {
            pst = con.prepareStatement(sql);
            rs = basicDao.execQuery(con, pst, null);
            List<String> goodTypeList = new ArrayList<>();
            while (rs != null && rs.next()) {
                goodTypeList.add(rs.getString(1));
            }
            return goodTypeList;
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            basicDao.releaseResourse(rs, pst, con);
        }
        return null;
    }

    public List<Staff> queryGoodByType(String goodType) {
        String sql = "select * from good where goodtype=? order by id limit ?,?";
        Connection con = DbPool.getConnection();
        PreparedStatement pst = null;
        ResultSet rs = null;
        try {
            pst = con.prepareStatement(sql);
            rs = basicDao.execQuery(con, pst, goodType,0,20);
            List<Staff> goodList = new ArrayList<>();
            while (rs != null && rs.next()) {
                Staff goodBean = new Staff();
                goodBean.setId(rs.getInt(1));
                goodBean.setGoodname(rs.getString(2));
                goodBean.setGoodtype(rs.getString(3));
                goodBean.setPrice(rs.getDouble(4));
                goodBean.setPic(rs.getString(5));
                goodList.add(goodBean);
            }
            return goodList;
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            basicDao.releaseResourse(rs, pst, con);
        }
        return null;
    }

    public List<Staff> queryCarBean(CarBean carBean) {
        List<Staff> goodList = new ArrayList<>();
        Map<Integer, Integer> car = carBean.getCar();
        //从Map中取出所有的商品Id
        StringBuilder ids = new StringBuilder();
        for (Map.Entry<Integer,Integer> entry:car.entrySet()) {
            Integer id = entry.getKey();
            ids.append(id.toString()).append(",");
        }
        String idstr = ids.toString();
        if (!idstr.isEmpty()){
            idstr = idstr.substring(0,idstr.length()-1);
        }else {
            return goodList;
        }
        String sql = "select * from good where id in ("+idstr+")";
        Connection con = DbPool.getConnection();
        PreparedStatement pst = null;
        ResultSet rs = null;
        try {
            pst = con.prepareStatement(sql);
            rs = basicDao.execQuery(con, pst, null);
           goodList = new ArrayList<>();
            while (rs != null && rs.next()) {
                Staff goodBean = new Staff();
                goodBean.setId(rs.getInt(1));
                goodBean.setGoodname(rs.getString(2));
                goodBean.setPrice(rs.getDouble(4));
                //存放数量
                goodBean.setAmount(car.get(rs.getInt(1)));
                goodList.add(goodBean);
            }
            return goodList;
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            basicDao.releaseResourse(rs, pst, con);
        }
        return null;
    }*/
}
