package jun.tour.go.Service.Cart;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import jun.tour.go.Model.Cart.DAO.CartDAO;
import jun.tour.go.Model.Cart.DTO.CartDTO;
@Service
public class CartServiceImpl implements CartService {

	@Inject
	CartDAO cartDao;
	
	@Override
	public List<CartDTO> cartMoney() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public void insert(CartDTO dto) {
		// TODO Auto-generated method stub

	}

	@Override
	public List<CartDTO> listCart(String u_id) {
		// TODO Auto-generated method stub
		return cartDao.listCart(u_id);
	}

	@Override
	public void delete(int cart_id) {
		// TODO Auto-generated method stub

	}

	@Override
	public void deleteAll(String userid) {
		// TODO Auto-generated method stub

	}

	@Override
	public void update(int cart_id) {
		// TODO Auto-generated method stub

	}

	@Override
	public int sumMoney(String userid) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int countCart(String userid, int product_id) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public void updateCart(CartDTO dto) {
		// TODO Auto-generated method stub

	}

	@Override
	public void modifyCart(CartDTO dto) {
		// TODO Auto-generated method stub

	}

}
