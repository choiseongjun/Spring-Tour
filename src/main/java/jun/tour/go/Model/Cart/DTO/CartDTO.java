package jun.tour.go.Model.Cart.DTO;

import java.sql.Date;

public class CartDTO {

	private int r_id;
	private String u_id;
	private String name;//사용자 이름 조인하기위해
	private int p_id;
	private String product_name;
	private int price;
	private int money;
	private int r_amount;
	public int getR_id() {
		return r_id;
	}
	public void setR_id(int r_id) {
		this.r_id = r_id;
	}
	public String getU_id() {
		return u_id;
	}
	public void setU_id(String u_id) {
		this.u_id = u_id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public int getP_id() {
		return p_id;
	}
	public void setP_id(int p_id) {
		this.p_id = p_id;
	}
	public String getProduct_name() {
		return product_name;
	}
	public void setProduct_name(String product_name) {
		this.product_name = product_name;
	}
	public int getPrice() {
		return price;
	}
	public void setPrice(int price) {
		this.price = price;
	}
	public int getMoney() {
		return money;
	}
	public void setMoney(int money) {
		this.money = money;
	}
	public int getR_amount() {
		return r_amount;
	}
	public void setR_amount(int r_amount) {
		this.r_amount = r_amount;
	}
	@Override
	public String toString() {
		return "CartDTO [r_id=" + r_id + ", u_id=" + u_id + ", name=" + name + ", p_id=" + p_id + ", product_name="
				+ product_name + ", price=" + price + ", money=" + money + ", r_amount=" + r_amount + "]";
	}
	
}
