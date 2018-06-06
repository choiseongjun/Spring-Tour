package jun.tour.go.Model.Cart.DAO;

import java.util.List;

import jun.tour.go.Model.Cart.DTO.CartDTO;

public interface CartDAO {
	public List<CartDTO> cartMoney();
	public void insert(CartDTO dto);
	public List<CartDTO> listCart(String u_id);
	public void delete(int r_id);
	public void deleteAll(String userid);
	public void update(int cart_id);
	public int sumMoney(String userid);
	public int countCart(String userid,int product_id);
	public void updateCart(CartDTO dto);
	public void modifyCart(CartDTO dto);
}
