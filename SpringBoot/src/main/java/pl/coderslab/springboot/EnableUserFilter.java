package pl.coderslab.springboot;

import pl.coderslab.springboot.user.User;

import javax.servlet.*;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

public class EnableUserFilter implements Filter {
    public void init(FilterConfig config) throws ServletException {
    }
    public void destroy() {
    }
    @Override
    public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws ServletException, IOException {
        HttpServletRequest req = (HttpServletRequest) request;
        HttpServletResponse res = (HttpServletResponse) response;
        HttpSession session = req.getSession();
        if(session.getAttribute("loggedUser") != null){
            User user = (User) session.getAttribute("loggedUser");
            if(user.getEnabled()==0){
              res.sendRedirect("/activate");
            }
        }
        chain.doFilter(request, response);
    }
}