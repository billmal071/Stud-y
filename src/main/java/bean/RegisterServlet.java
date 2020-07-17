package bean;

import com.google.gson.Gson;
import com.mashape.unirest.http.HttpResponse;
import com.mashape.unirest.http.JsonNode;
import com.mashape.unirest.http.Unirest;
import com.mashape.unirest.http.exceptions.UnirestException;
import org.json.JSONObject;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;


public class RegisterServlet extends HttpServlet {

    public RegisterServlet() {
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        //Copying all the input parameters in to local variables
        String email = request.getParameter("email");
        /*.field("recipient", email)
                    .field("body", "Thanks for subscribing")
                    .field("site_name", "https://greve-maison-78057.herokuapp.com/")
                    .field("registration_link", "https://greve-maison-78057.herokuapp.com/")
                    .field("sender", "billmal071@gmail.com")*/
        //unirest
        String emailURL = "https://email.microapi.dev/send_confirmation/";
        HttpResponse<JsonNode> res = null;
        String apiRequest = "{\"recipient\": " + email + ", \"body\": \"Thanks for subscribing\", \"site_name\": \"https://greve-maison-78057.herokuapp.com/\", \"registration_link\": \"https://greve-maison-78057.herokuapp.com/\", \"sender\": \"billmal071@gmail.com\"}";
        String jsonRequest = new Gson().toJson(apiRequest);
        try {
            res = Unirest.post(emailURL)
                    .header("Content-Type", "application/json")
                    .body(jsonRequest)
                    .asJson();
            System.out.println(res.getStatus());
        } catch (UnirestException e) {
            e.printStackTrace();
        }

        RegisterBean registerBean = new RegisterBean();
        //Using Java Beans - An easiest way to play with group of related data
        registerBean.setEmail(email);

        RegisterDao registerDao = new RegisterDao();

        //The core Logic of the Registration application is present here. We are going to insert user data in to the database.
        String userRegistered = registerDao.registerUser(registerBean);

        if (userRegistered.equals("SUCCESS"))   //On success, you can display a message to user on Home page
        {
            response.sendRedirect("/index.jsp?error");
            //request.getRequestDispatcher("/index.jsp?successful").forward(request, response);
        } else   //On Failure, display a meaningful message to the User.
        {
            //request.setAttribute("errMessage", userRegistered);
            //request.getRequestDispatcher("/Register.jsp").forward(request, response);
            response.sendRedirect("index.jsp?successful");
        }
    }
}
