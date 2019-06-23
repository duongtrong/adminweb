package simpleweb.controller;

import simpleweb.entity.AccountMember;
import simpleweb.util.ApplicationConstant;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.logging.Logger;

import static com.googlecode.objectify.ObjectifyService.ofy;

public class UpdateController extends HttpServlet {

    private static final Logger LOGGER = Logger.getLogger(UpdateController.class.getSimpleName());

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        HttpSession session = req.getSession();
        AccountMember accountMember = (AccountMember) session.getAttribute(ApplicationConstant.LOGGED_IN_USER);
        AccountMember acc = (AccountMember) ofy().load().value(AccountMember.Status.ACTIVE).now();

    }
}
