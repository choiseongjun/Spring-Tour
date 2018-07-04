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
	return sqlSession.selectList("cart.Cart_money");
	}

	@Override
	public void insert(CartDTO dto) {
		sqlSession.insert("cart.insert",dto);
	}

	@Override
	public List<CartDTO> listCart(String u_id) {
		return sqlSession.selectList("cart.listCart",u_id);
	}

	@Override
	public void delete(int r_id) {
		sqlSession.delete("cart.delete",r_id);
	}

	@Override
	public void deleteAll(String u_id) {
		sqlSession.delete("cart.deleteAll",u_id);
	}

	@Override
	public void update(int cart_id) {
		// TODO Auto-generated method stub

	}

	@Override
	public int sumMoney(String u_id) {
		return sqlSession.selectOne("cart.sumMoney",u_id);
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
	sqlSession.update("cart.modifyCart",dto);
	}

}
