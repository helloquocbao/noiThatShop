
package SnacksShop.Service.User;

import java.util.HashMap;
import java.util.List;

import org.springframework.stereotype.Service;

import SnacksShop.DTO.BillDetailsManagerDTO;
import SnacksShop.DTO.CartDTO;
import SnacksShop.DTO.ProductsDTO;
import SnacksShop.Entity.Bill;

@Service
public interface IBillService {
	
	// thêm bill
	public int addBill(Bill bill);

	// thêm billDetails
	public void addBillDetails(HashMap<Long, CartDTO> carts);

	// lấy bill và danh sách bill
	public List<Bill> GetAllBills();

	// lấy tất cả sản phẩm của bill theo id bill
	public Bill GetAllProdutsByIDBill(int idBill);

	// lấy ds tất cả sản phẩm của bill theo id bill
	public List<Bill> GetProductByIDBill(int id);
	
	//
	//public BillDetailsManagerDTO GetBillDetailsByIDBill(int idBill);
	public List<BillDetailsManagerDTO> GetBillDetailsByIDBill(int idBill);

}
