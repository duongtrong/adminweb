package simpleweb.controller;

import simpleweb.entity.AccountMember;
import simpleweb.entity.AccountMember;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.logging.Logger;

import static com.googlecode.objectify.ObjectifyService.ofy;

public class RegisterController extends HttpServlet {

    private static final Logger LOGGER = Logger.getLogger(RegisterController.class.getSimpleName());

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setAttribute("roles", AccountMember.Role.values());
        req.getRequestDispatcher("/register.jsp").forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String username = req.getParameter("username");
        String password = req.getParameter("password");
        String fullName = req.getParameter("fullName");
        String email = req.getParameter("email");
        String phoneNumber = req.getParameter("phoneNumber");
        String address = req.getParameter("address");
        int role = AccountMember.Role.USER.getValue();
        try {
            role = Integer.parseInt(req.getParameter("role"));
        } catch (NumberFormatException e) {
            LOGGER.severe(e.getMessage());
            return;
        }
        AccountMember accountMember = new AccountMember();
        accountMember.setUsername(username);
        accountMember.hashPassword(password);
        accountMember.setFullName(fullName);
        accountMember.setEmail(email);
        accountMember.setAddress(address);
        accountMember.setRole(AccountMember.Role.findByValue(role));
        accountMember.setPhoneNumber(phoneNumber);
        ofy().save().entity(accountMember).now();
        resp.sendRedirect("/table");
    }
}
