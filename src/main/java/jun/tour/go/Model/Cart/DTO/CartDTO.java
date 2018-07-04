package jun.tour.go.Model.Cart.DTO;

import jun.tour.go.Model.User.DTO.UserDTO;

public class CartDTO {

	private int r_id;
	private String u_id;
	private String name;
	private int p_code;
	private String p_city;
	private int p_price;
	private int money;
	private int r_personnel;
	private String p_date;//날짜확인용
	private String p_content;
	private String p_img;
	


	
	
	public String getP_content() {
		return p_content;
	}
	public void setP_content(String p_content) {
		this.p_content = p_content;
	}
	public String getP_img() {
		return p_img;
	}
	public void setP_img(String p_img) {
		this.p_img = p_img;
	}
	public String getU_id() {
		return u_id;
	}
	public void setU_id(String u_id) {
		this.u_id = u_id;
	}
	public String getP_date() {
		return p_date;
	}
	public void setP_date(String p_date) {
		this.p_date = p_date;
	}
	public int getR_id() {
		return r_id;
	}
	public void setR_id(int r_id) {
		this.r_id = r_id;
	}
	
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public int getP_code() {
		return p_code;
	}
	public void setP_code(int p_code) {
		this.p_code = p_code;
	}
	public String getP_city() {
		return p_city;
	}
	public void setP_city(String p_city) {
		this.p_city = p_city;
	}
	public int getP_price() {
		return p_price;
	}
	public void setP_price(int p_price) {
		this.p_price = p_price;
	}
	public int getMoney() {
		return money;
	}
	public void setMoney(int money) {
		this.money = money;
	}
	public int getR_personnel() {
		return r_personnel;
	}
	public void setR_personnel(int r_personnel) {
		this.r_personnel = r_personnel;
	}
	@Override
	public String toString() {
		return "CartDTO [r_id=" + r_id + ", u_id=" + u_id + ", name=" + name + ", p_code=" + p_code + ", p_city="
				+ p_city + ", p_price=" + p_price + ", money=" + money + ", r_personnel=" + r_personnel + ", p_date="
				+ p_date + ", p_content=" + p_content + ", p_img=" + p_img + "]";
	}
	
	
	
	

	
}
