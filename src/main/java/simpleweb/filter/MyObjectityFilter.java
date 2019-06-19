package simpleweb.filter;

import com.googlecode.objectify.ObjectifyService;
import simpleweb.entity.AccountMember;

import javax.servlet.*;
import java.io.IOException;

public class MyObjectityFilter implements Filter {
    public void init(FilterConfig filterConfig) throws ServletException {

    }

    public void doFilter(ServletRequest servletRequest, ServletResponse servletResponse, FilterChain filterChain) throws IOException, ServletException {
        ObjectifyService.register(AccountMember.class);
        filterChain.doFilter(servletRequest, servletResponse);
    }

    public void destroy() {

    }
}
