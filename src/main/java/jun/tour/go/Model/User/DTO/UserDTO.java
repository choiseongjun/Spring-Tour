package jun.tour.go.Model.User.DTO;

import java.util.Collection;
import java.util.List;

import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.userdetails.UserDetails;

public class UserDTO implements UserDetails{

	private String u_id;
	private String u_password;
	private String u_name;
	private String u_address;
	private String u_phone;
	private List<Role> u_role;
	
	
	
	public List<Role> getU_role() {
		return u_role;
	}
	public void setU_role(List<Role> u_role) {
		this.u_role = u_role;
	}
	public UserDTO() {
		super();
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
	@Override
	public Collection<? extends GrantedAuthority> getAuthorities() {

		return u_role;
	}
	@Override
	public String getPassword() {
		// TODO Auto-generated method stub
		return u_password;
	}
	@Override
	public String getUsername() {
		// TODO Auto-generated method stub
		return u_name;
	}
	@Override
	public boolean isAccountNonExpired() {
		// TODO Auto-generated method stub
		return true;
	}
	@Override
	public boolean isAccountNonLocked() {
		// TODO Auto-generated method stub
		return true;
	}
	@Override
	public boolean isCredentialsNonExpired() {
		// TODO Auto-generated method stub
		return true;
	}
	@Override
	public boolean isEnabled() {
		// TODO Auto-generated method stub
		return true;
	}
}
