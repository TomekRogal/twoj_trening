package pl.coderslab.springboot.user;

import java.util.Collection;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.userdetails.User;
public class CurrentUser extends User {
    private final pl.coderslab.springboot.user.User user;
    public CurrentUser(String username, String password,
                       Collection<? extends GrantedAuthority> authorities,
                       pl.coderslab.springboot.user.User user) {
        super(username, password, authorities);
        this.user = user;
    }
    public pl.coderslab.springboot.user.User getUser() {return user;}
}
