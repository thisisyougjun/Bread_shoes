package inc;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class login {
    public int Login(String userID, String userPassword) {
        String sql = "select PASSWORD() from NIKE_MEMBER where ID = ?";
        try {
            Connection conn = null;
            PreparedStatement pstmt = conn.prepareStatement(sql); //sql쿼리문을 대기 시킨다
            pstmt.setString(1, userID); //첫번째 '?'에 매개변수로 받아온 'userID'를 대입
            ResultSet rs = pstmt.executeQuery(); //쿼리를 실행한 결과를 rs에 저장
            if(rs.next()) {
                if(rs.getString(1).equals(userPassword)) {
                    return 1; //로그인 성공
                }else
                    return 0; //비밀번호 틀림
            }
            return -1; //아이디 없음
        }catch (Exception e) {
            e.printStackTrace();
        }
        return -2; //오류
    }
}
