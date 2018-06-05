package jun.tour.go.Service.Product;

import java.util.List;

import jun.tour.go.Model.Product.DTO.ProductDTO;

public interface ProductService {
	List<ProductDTO> listProduct();
	ProductDTO detailProduct(int p_code);
	void updateProduct(ProductDTO dto);
	void deleteProduct(int p_code);
	void insertProduct(ProductDTO dto);
	String fileInfo(int p_code);
}
