package SnacksShop.Service.User;

import java.util.List;

import org.mindrot.jbcrypt.BCrypt;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import SnacksShop.DAO.UsersDAO;
import SnacksShop.Entity.Bill;
import SnacksShop.Entity.Users;

@Service
public class AccountServiecImple implements IAccountService{
	@Autowired
	UsersDAO userDAO = new UsersDAO();

	// Thêm user
	public int addAccount(Users user) {

		// dung ham BCrypt de ma hoa password
		user.setPassword(BCrypt.hashpw(user.getPassword(), BCrypt.gensalt(12)));

		return userDAO.addAccount(user);
	}

	// Kiểm tra user
	public Users checkAccount(Users user) {
		String passw = user.getPassword();

		user = userDAO.getAccount(user);

		if (user != null) {
			if (BCrypt.checkpw(passw, user.getPassword())) {
				return user;
			} else {
				return null;
			}

		}
		return null;
	}
	
	
	// Lấy dữ liệu của user
	public List<Users> GetDataUsers() {
		return userDAO.GetDataUsers();
	}

	// Xóa user
	public void delete(int id) {
		userDAO.delete(id);
	}

	//************************************dang dở
	public void editInfo(Users users, long userID) {
		
		userDAO.editInfo(users, userID);
	}
	//************************************
}
