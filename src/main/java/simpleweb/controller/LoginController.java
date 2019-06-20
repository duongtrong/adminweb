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

public class LoginController extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.getRequestDispatcher("/login.jsp").forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String password = req.getParameter("password");
        String username = req.getParameter("username");
        AccountMember student = studentModel.findByUsernameAndStatus(username, AccountMember.Status.ACTIVE);
        if (student == null) {
            resp.setStatus(HttpServletResponse.SC_NOT_FOUND);
            resp.getWriter().print("Not found");
            return;
        }
        if (StringUtil.comparePasswordWithSalt(password, student.getSalt(), student.getPassword())) {
            HttpSession session = req.getSession();
            session.setAttribute(ApplicationConstant.LOGGED_IN_USER, student);
            resp.sendRedirect("/hello");
            return;
        }
        resp.setStatus(HttpServletResponse.SC_UNAUTHORIZED);
        resp.getWriter().println("Unauthorized!");
        return;
    }
}
