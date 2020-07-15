package bean;

import java.sql.Connection;
import java.sql.PreparedStatement;
import bean.DBconnection;

public class RegisterDao {

    public String registerUser(RegisterBean registerBean) {
        String email = registerBean.getEmail();

        Connection con = null;
        PreparedStatement preparedStatement = null;
        try {
            con = DBconnection.getConnection();
            String query =  "insert into data(email) values(?)";
            preparedStatement = con.prepareStatement(query);
            preparedStatement.setString(1, email);

            int i = preparedStatement.executeUpdate();

            if (i != 0) {
                return "success";
            }
        } catch (Exception e) {
            System.out.println(e.getMessage());
        }
        return "Oops.. Something went wrong there..!";
    }
}
