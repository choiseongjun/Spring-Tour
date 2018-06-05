package jun.tour.go.Service.Product;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import jun.tour.go.Model.Product.DAO.ProductDAO;
import jun.tour.go.Model.Product.DTO.ProductDTO;
@Service
public class ProductServiceImpl implements ProductService {

	@Inject
	ProductDAO productDao;
	
	@Override
	public List<ProductDTO> listProduct() {
		// TODO Auto-generated method stub
		return productDao.listProduct();
	}

	@Override
	public ProductDTO detailProduct(int p_code) {
		// TODO Auto-generated method stub
		return productDao.detailProduct(p_code);
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
		productDao.insertProduct(dto);
	}

	@Override
	public String fileInfo(int p_code) {
		// TODO Auto-generated method stub
		return null;
	}

}
