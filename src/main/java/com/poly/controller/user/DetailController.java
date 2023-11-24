package com.poly.controller.user;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.poly.dao.ProductDAO;
import com.poly.entity.Product;
import com.poly.service.CartService;

@Controller
public class DetailController {

	@Autowired
	ProductDAO dao;

	@Autowired
	CartService cart;

	@RequestMapping("/detail")
	public String detail() {
		return "user/detail";
	}

	@RequestMapping("/detail/{id}")
	public String details(Model model, @PathVariable("id") Integer id) {
		Product item = dao.findById(id).get();
		model.addAttribute("item", item);
		model.addAttribute("countcart", cart.getCount());
		return "user/detail";
		// phương thức này xử lý yêu cầu hiển thị thông tin chi tiết của một sản phẩm.
		// Nó lấy sản phẩm từ cơ sở dữ liệu và truyền vào model để có thể hiển thị thông
		// tin chi tiết trong view. Ngoài ra, nó cũng truyền số lượng mục hàng trong giỏ
		// hàng vào model để hiển thị số lượng đó trong giao diện người dùng.
	}
}
