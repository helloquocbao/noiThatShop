package SnacksShop.DAO;

import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Repository;

import SnacksShop.Entity.Catogorys;
import SnacksShop.Entity.MapperCatogorys;
import SnacksShop.Entity.MapperMenus;
import SnacksShop.Entity.Menus;

@Repository
public class MenusDAO extends BaseDAO {
	
	// lấy menu ra
	public List<Menus> GetDataMenus() {
		List<Menus> listMenus = new ArrayList<Menus>();

		String sql = "SELECT * FROM danhsach";
		listMenus = _jdbcTemplate.query(sql, new MapperMenus());

		return listMenus;

	}
}
