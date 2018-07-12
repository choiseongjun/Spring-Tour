package jun.tour.go.Model.User.DTO;

import java.util.Collection;

import javax.persistence.Id;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;

import org.hibernate.annotations.Entity;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.userdetails.User;

public class UserDTO extends User{

	public String u_id;
	private String u_password;
	private String u_name;
	private String u_address;
	private String u_phone;
	

	public String getU_password() {
		return u_password;
	}


	public void setU_password(String u_password) {
		this.u_password = u_password;
	}


	public String getU_name() {
		return u_name;
	}


	public void setU_name(String u_name) {
		this.u_name = u_name;
	}


	public String getU_address() {
		return u_address;
	}


	public void setU_address(String u_address) {
		this.u_address = u_address;
	}


	public String getU_phone() {
		return u_phone;
	}


	public void setU_phone(String u_phone) {
		this.u_phone = u_phone;
	}


	public UserDTO(String USERNAME, String PASSWORD,
			boolean enabled, 
			boolean accountNonExpired,
			boolean credentialsNonExpired, boolean accountNonLocked,
			Collection<? extends GrantedAuthority> authorities,
			String u_id,String u_phone,String u_address) {
		super(USERNAME, PASSWORD, enabled, accountNonExpired, credentialsNonExpired, accountNonLocked, authorities);
	this.u_id=u_id;
	}


	@Override
	public String toString() {
		return "UserDTO [u_id=" + u_id + ", u_password=" + u_password + ", u_name=" + u_name + ", u_address="
				+ u_address + ", u_phone=" + u_phone + "]";
	}


	public String getU_id() {
		return u_id;
	}


	public void setU_id(String u_id) {
		this.u_id = u_id;
	}


}
