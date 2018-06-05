package jun.tour.go.Model.Product.DAO;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import jun.tour.go.Model.Product.DTO.ProductDTO;

@Repository//dao bean으로 선언
public class ProductDAOImpl implements ProductDAO {

	@Inject
	SqlSession sqlSession;
	
	@Override
	public List<ProductDTO> listProduct() {
		return sqlSession.selectList("product.list_product");
	}

	@Override
	public ProductDTO detailProduct(int p_code) {
		return sqlSession.selectOne("product.detail_product",p_code);
	}

	@Override
	public void updateProduct(ProductDTO dto) {
		// TODO Auto-generated method stub

	}

	@Override
	public void deleteProduct(int p_code) {
		// TODO Auto-generated method stub

	}

	@Override
	public void insertProduct(ProductDTO dto) {
		sqlSession.insert("product.insert",dto);
	}

	@Override
	public String fileInfo(int p_code) {
		// TODO Auto-generated method stub
		return null;
	}

}
