package jun.tour.go.Model.User.DTO;

import java.util.List;

import org.springframework.security.core.GrantedAuthority;

public class Role implements GrantedAuthority{

	private Privilege privilege;
	public Privilege getPrivilege() {
		return privilege;
	}
	public void setPrivilege(Privilege privilege) {
		this.privilege = privilege;
	}
	@Override
	public String getAuthority() {
		
		return this.privilege.toString();
	}

}
