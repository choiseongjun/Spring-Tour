package jun.tour.go.Service.Cart;

import java.util.List;

import jun.tour.go.Model.Cart.DTO.CartDTO;

public interface CartService {
	public List<CartDTO> cartMoney();
	public void insert(CartDTO dto);
	public List<CartDTO> listCart(String u_id);
	public void delete(int cart_id);
	public void deleteAll(String userid);
	public void update(int cart_id);
	public int sumMoney(String userid);
	public int countCart(String userid,int product_id);
	public void updateCart(CartDTO dto);
	public void modifyCart(CartDTO dto);
}
