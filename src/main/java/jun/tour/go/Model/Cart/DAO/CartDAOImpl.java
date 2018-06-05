package jun.tour.go.Model.Cart.DAO;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import jun.tour.go.Model.Cart.DTO.CartDTO;
@Repository
public class CartDAOImpl implements CartDAO {

	@Inject
	SqlSession sqlSession;
	
	@Override
	public List<CartDTO> cartMoney( ) {
	return null;
	}

	@Override
	public void insert(CartDTO dto) {
		// TODO Auto-generated method stub

	}

	@Override
	public List<CartDTO> listCart(String u_id) {
		return sqlSession.selectList("cart.listCart",u_id);
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
