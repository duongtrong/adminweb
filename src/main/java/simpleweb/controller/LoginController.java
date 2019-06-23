package simpleweb.controller;

import simpleweb.entity.AccountMember;
import simpleweb.util.ApplicationConstant;
import simpleweb.util.StringUtil;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

import static com.googlecode.objectify.ObjectifyService.ofy;

public class LoginController extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.getRequestDispatcher("/login.jsp").forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String password = req.getParameter("password");
        String username = req.getParameter("username");
        AccountMember account = (AccountMember) ofy().load().value(AccountMember.Status.ACTIVE.getValue()).now();
        if (account == null) {
            resp.setStatus(HttpServletResponse.SC_NOT_FOUND);
            resp.getWriter().print("Not found");
            return;
        }
        if (StringUtil.comparePasswordWithSalt(password, account.getSalt(), account.getPassword())) {
            HttpSession session = req.getSession();
            session.setAttribute(ApplicationConstant.LOGGED_IN_USER, account);
            resp.sendRedirect("/index");
            return;
        }
        resp.setStatus(HttpServletResponse.SC_UNAUTHORIZED);
        resp.getWriter().println("Unauthorized!");
        return;
    }
}
