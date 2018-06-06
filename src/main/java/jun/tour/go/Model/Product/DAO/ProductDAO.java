package jun.tour.go.Model.Product.DAO;

import java.util.List;

import jun.tour.go.Model.Product.DTO.ProductDTO;

public interface ProductDAO {
	List<ProductDTO> listProduct();
	ProductDTO detailProduct(int p_code);
	void updateProduct(ProductDTO dto);
	void deleteProduct(int p_code);
	void insertProduct(ProductDTO dto);
	String fileInfo(int p_code);
	ProductDTO categoryProduct(int p_ctycode);
}
