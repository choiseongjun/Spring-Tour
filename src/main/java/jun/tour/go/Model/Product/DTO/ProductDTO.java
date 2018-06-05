package jun.tour.go.Model.Product.DTO;

import org.springframework.web.multipart.MultipartFile;

public class ProductDTO {

	private int p_code;
	private String p_city;
	private String p_date;
	private String p_air;
	private String p_content;
	private int p_price;
	private String p_img;
	private String p_reserve;
	private String p_ctycode;
	private MultipartFile file1;
	
	
	public MultipartFile getFile1() {
		return file1;
	}
	public void setFile1(MultipartFile file1) {
		this.file1 = file1;
	}
	public ProductDTO() {
		super();
	}
	@Override
	public String toString() {
		return "ProductDTO [p_code=" + p_code + ", p_city=" + p_city + ", p_date=" + p_date + ", p_air=" + p_air
				+ ", p_content=" + p_content + ", p_price=" + p_price + ", p_img=" + p_img + ", p_reserve=" + p_reserve
				+ ", p_ctycode=" + p_ctycode + "]";
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
	public String getP_date() {
		return p_date;
	}
	public void setP_date(String p_date) {
		this.p_date = p_date;
	}
	public String getP_air() {
		return p_air;
	}
	public void setP_air(String p_air) {
		this.p_air = p_air;
	}
	public String getP_content() {
		return p_content;
	}
	public void setP_content(String p_content) {
		this.p_content = p_content;
	}
	public int getP_price() {
		return p_price;
	}
	public void setP_price(int p_price) {
		this.p_price = p_price;
	}
	public String getP_img() {
		return p_img;
	}
	public void setP_img(String p_img) {
		this.p_img = p_img;
	}
	public String getP_reserve() {
		return p_reserve;
	}
	public void setP_reserve(String p_reserve) {
		this.p_reserve = p_reserve;
	}
	public String getP_ctycode() {
		return p_ctycode;
	}
	public void setP_ctycode(String p_ctycode) {
		this.p_ctycode = p_ctycode;
	}
	
}
