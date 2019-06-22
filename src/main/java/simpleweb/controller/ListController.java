package simpleweb.controller;

import simpleweb.entity.AccountMember;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

import static com.googlecode.objectify.ObjectifyService.ofy;

public class ListController extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        List<AccountMember> list = ofy().load().type(AccountMember.class).list();
        req.setAttribute("list", list);
        req.getRequestDispatcher("/table.jsp").forward(req, resp);
    }
}
