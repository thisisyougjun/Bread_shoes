package inc;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import static nav.DBconnect.getConnection;

public class MemberDBBean {
    private static MemberDBBean instance =new MemberDBBean();

    public static MemberDBBean getInstance(){
        return instance;
    }

    public int userCheck(String ID, String pwd)throws Exception{
        int re = -1;
        String sql="select PASSWORD from nike_member where ID=?";

        try{
            Connection con= getConnection();
            PreparedStatement ps =con.prepareStatement(sql);
            ps.setString(1,ID);
            ResultSet rs=ps.executeQuery();

            if (rs.next()){
                String DB_PASSWORD =rs.getString("PASSWORD");
                if (DB_PASSWORD.equals(pwd)){
                    re=-1;
                }else{
                    re=0;
                }
            }else {
                re=-1;
            }

            con.close();
            ps.close();
            rs.close();
        }catch (Exception e){
            e.printStackTrace();
        }
        return re;
    }

    public user getMember(String ID) throws Exception{
            String sql ="select * from nike_member where ID=?";
            user member =null;

            try {
                Connection con= getConnection();
                PreparedStatement ps =con.prepareStatement(sql);
                ps.setString(1,ID);
                ResultSet rs=ps.executeQuery();

                if (rs.next()){
                    member = new user();
                    member.setUserID(rs.getString("ID"));
                    member.setUserPassword(rs.getString("PASSWORD"));
                }
                con.close();
                ps.close();
                rs.close();
            }catch (Exception e){
                e.printStackTrace();
            }
            return  member;
    }

}
