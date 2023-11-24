package com.poly.controller.admin;

import java.io.File;
import java.lang.reflect.InvocationTargetException;
import java.text.ParseException;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.ServletContext;

import org.apache.tiles.autotag.core.runtime.annotation.Parameter;
import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.poly.dao.CategoryDAO;
import com.poly.dao.ProductDAO;
import com.poly.dto.ProductDTO;
import com.poly.entity.Product;
import com.poly.service.ProductService;

@Controller
@RequestMapping("/admin/")
public class ProductController {

	@Autowired
	private ProductService productService;

	@Autowired
	private CategoryDAO cdao;

	@Autowired
	private ProductDAO dao;

	@Autowired
	private ServletContext app;

	@RequestMapping("product")
	public String index(Model model) {
		model.addAttribute("item", new Product());
		model.addAttribute("items", dao.findAll());
		// thêm đối tượng gán và timf đata
		return "admin/product";
	}

	@ModelAttribute("availables")
	public Map<Boolean, String> getAvailable() {
		// tạo và trả về những đối tượng
		Map<Boolean, String> map = new HashMap<>();
		map.put(true, "Yes");
		map.put(false, "No");
		return map;
	}

	@ModelAttribute("categorys")
	public Map<Integer, String> getCategory() {
		Map<Integer, String> map = new HashMap<Integer, String>();
		for (int i = 0; i < cdao.findAll().size(); i++) {
			map.put(cdao.findAll().get(i).getId(), cdao.findAll().get(i).getName());
			// ID và tên của các danh mục lấy từ cơ sở dữ liệu.
		}
		return map;
	}

	@RequestMapping("product/edit/{id}")
	public String edit(@PathVariable("id") Integer id, Model model) {
		model.addAttribute("item", dao.findById(id).get());
		model.addAttribute("items", dao.findAll());
		return "admin/product";
	}

	@RequestMapping("product/create")
	public String create(@Validated @ModelAttribute("item") ProductDTO productDTO, Product product, BindingResult br,
			RedirectAttributes ra, @Parameter(name = "category") Integer id, Model model,
			// nhận các tham số
			@Parameter(name = "img") MultipartFile img)
			throws IllegalAccessException, InvocationTargetException, ParseException {
		try {
			// tạo một đối tượng file để lưu hình ảnh
			File file = new File(app.getRealPath("/img/products/" + img.getOriginalFilename()));
			img.transferTo(file);
		} catch (Exception e) {
			e.printStackTrace();
		}
		BeanUtils.copyProperties(product, productDTO);
		if (img != null && !img.getOriginalFilename().isEmpty()) {
			product.setImg(productDTO.getImg().getOriginalFilename());
		} else {
			product.setImg("noavt.png");
		}
		product.setId(id);
		dao.save(product);
		ra.addFlashAttribute("message", "Save product is successfuly !");
		return "redirect:/admin/product";
	}

	@RequestMapping("product/update")
	public String update(@Validated @ModelAttribute("item") ProductDTO productDTO, Product product, BindingResult br,
			RedirectAttributes ra, @Parameter(name = "category") Integer id, @Parameter(name = "img") MultipartFile img,
			ModelMap model) throws IllegalAccessException, InvocationTargetException, ParseException {
		try {
			String filename = img.getOriginalFilename();
			// update hình ảnh
			File file = new File(app.getRealPath("/img/products/" + filename));
			img.transferTo(file);
		} catch (Exception e) {
			e.printStackTrace();
		}
		BeanUtils.copyProperties(product, productDTO);
		if (img != null && !img.getOriginalFilename().isEmpty()) {
			product.setImg(productDTO.getImg().getOriginalFilename());
		} else {
			product.setImg("noavt.png");
		}
		product.setId(id);
		dao.save(product);
		ra.addFlashAttribute("message", "Update product is successfuly !");
		return "redirect:/admin/product";
	}

}