package controller;

import dao.ProductDao;
import model.SteerTube;
import org.apache.commons.io.FileUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import util.PageBean;
import util.UUIDUtils;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.io.File;
import java.io.IOException;
import java.util.Date;

@Controller
@RequestMapping({"/manage/product"})
public class ProductController {

    @Autowired
    private ProductDao productService;

    @RequestMapping({"/add"})
    public String manage_product_add(HttpServletRequest request) {
        HttpSession session = request.getSession();
        if (session.getAttribute("globalUser") == null) {
            return "manage/login";
        }
        return "manage/product-deploy";
    }

    @RequestMapping({"/{pageNo}"})
    public String manage_product(HttpServletRequest request, @PathVariable("pageNo") String pageNo) {
        HttpSession session = request.getSession();
        if (session.getAttribute("globalUser") == null) {
            return "manage/login";
        }
        Integer pageSize = 10;
        Integer pageNum = (pageNo == null) ? 1 : Integer.parseInt(pageNo);
        PageBean<SteerTube> pageBean = productService.findByPage(pageNum, pageSize);
        request.setAttribute("pageBean", pageBean);
        return "manage/product-manage";
    }

    @RequestMapping({"/search/{pageNo}"})
    public String manage_product_search(HttpServletRequest request, @PathVariable("pageNo") String pageNo) {
        HttpSession session = request.getSession();
        if (session.getAttribute("globalUser") == null) {
            return "manage/login";
        }
        Integer pageSize = 10;
        Integer pageNum = (pageNo == null) ? 1 : Integer.parseInt(pageNo);
        PageBean<SteerTube> pageBean = productService.findByPage(pageNum, pageSize);
        request.setAttribute("pageBean", pageBean);
        return "manage/product-search";
    }

    @RequestMapping({"/edit/{product_id}"})
    public String manage_product_edit(HttpServletRequest request, @PathVariable("product_id") String product_id) {
        HttpSession session = request.getSession();
        if (session.getAttribute("globalUser") == null) {
            return "manage/login";
        }
        if (product_id == null) {
            return "manage/product-manage";
        }
        SteerTube steerTube = productService.findById(product_id);
        request.setAttribute("product", steerTube);
        return "manage/product-edit";
    }

    @RequestMapping({"/delete/{product_id}"})
    public String manage_product_delete(HttpServletRequest request, @PathVariable("product_id") String product_id) {
        HttpSession session = request.getSession();
        if (session.getAttribute("globalUser") == null) {
            return "manage/login";
        }
        if (product_id != null) {
            productService.delete(product_id);
        }
        return "manage/product-manage";
    }

    @RequestMapping({"/save"})
    public String manage_product_save(@RequestParam(value = "uploadFile", required = false) MultipartFile file,
                                   HttpServletRequest request, SteerTube steerTube) {
        HttpSession session = request.getSession();
        if (session.getAttribute("globalUser") == null) {
            return "manage/login";
        }
        if (steerTube.getPname().equals("") || steerTube.getPcategory().equals("")) {
            return "manage/product-deploy";
        }
        // save the upload image
        String imgName = "";
        if (file.getSize() != 0) {
            // 取文件格式后缀名
            String type = file.getOriginalFilename().substring(file.getOriginalFilename().indexOf("."));
            // 取当前时间戳作为文件名
            String filename = System.currentTimeMillis() + type;
            imgName = "/images/tube/" + filename;
            // 文件存放的物理路径
            String path = request.getSession().getServletContext().getRealPath("/images/tube/" + filename);
            File destFile = new File(path);
            try {
                // 复制临时文件到指定目录路径下
                FileUtils.copyInputStreamToFile(file.getInputStream(), destFile);
            } catch (IOException e) {
                e.printStackTrace();
            }
        }
        if (steerTube.getUuid() == null) {
            steerTube.setUuid(UUIDUtils.getUUID());
            steerTube.setCreatedDate(new Date());
            if ("".equals(imgName)) {
                imgName = "/images/tube/default.jpg";
            }
            steerTube.setPimage(imgName);
            productService.save(steerTube);
            return "manage/product-search";
        } else {
            // update the product
            SteerTube old_tube = productService.findById(steerTube.getUuid());
            old_tube.setPname(steerTube.getPname());
            old_tube.setPcategory(steerTube.getPcategory());
            old_tube.setPdesc(steerTube.getPdesc());
            if (!"".equals(imgName)) {
                old_tube.setPimage(steerTube.getPimage());
            }
            old_tube.setLastModifiedDate(new Date());
            productService.update(old_tube);
        }
        return "common/close";
    }

}
