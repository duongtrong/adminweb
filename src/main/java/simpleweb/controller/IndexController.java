package simpleweb.controller;

import simpleweb.entity.AccountMember;
import simpleweb.util.ApplicationConstant;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.logging.Logger;

import static com.googlecode.objectify.ObjectifyService.ofy;

public class IndexController extends HttpServlet {

    private static final Logger LOGGER = Logger.getLogger(LoginController.class.getSimpleName());

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        AccountMember accountMember = (AccountMember) req.getSession().getAttribute(ApplicationConstant.LOGGED_IN_USER);
        if (accountMember != null) {
            LOGGER.info("Logged in username: " + accountMember.getUsername() );
        } else {
            LOGGER.info("Not logged in yet!");
        }
        req.setAttribute("list", ofy().load().value(AccountMember.Status.ACTIVE).now());
        req.getRequestDispatcher("/index.jsp").forward(req, resp);
    }
}
