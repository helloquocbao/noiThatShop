package SnacksShop.Service.User;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import SnacksShop.Entity.Catogorys;
import SnacksShop.Entity.Users;

@Service
public interface IAccountService {

	@Autowired
	public int addAccount(Users user);

	@Autowired
	public Users checkAccount(Users user);
	
	@Autowired
	public List<Users> GetDataUsers();
}
