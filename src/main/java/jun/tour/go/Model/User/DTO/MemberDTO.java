package jun.tour.go.Model.User.DTO;

public class MemberDTO {
	public String u_id;

	private String u_name;
	private String u_address;
	private String u_phone;
	public String getU_id() {
		return u_id;
	}
	public void setU_id(String u_id) {
		this.u_id = u_id;
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
	public MemberDTO(String u_id, String u_name, String u_address, String u_phone) {
		super();
		this.u_id = u_id;
		this.u_name = u_name;
		this.u_address = u_address;
		this.u_phone = u_phone;
	}
	
	
}
