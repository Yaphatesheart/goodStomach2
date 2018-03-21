package com.goodStomach.controller;

import com.kai.bean.Food;
import com.kai.web.service.FoodService;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.File;

@Controller
public class FoodUpdateSuccessController{

	/**
     * 图片文件上传
     */
    @RequestMapping(value = "/foodUpdateSuccess.action", method = RequestMethod.POST)
    public String photoUpload(MultipartFile file, HttpServletRequest request,
                              HttpServletResponse response, HttpSession session) throws Exception {
        String imagePath  = "";
        if (file != null) {// 判断上传的文件是否为空
            String path = null;// 文件路径
            String type = null;// 文件类型
            String fileName = file.getOriginalFilename();// 文件原名称
            System.out.println("上传的文件原名称:" + fileName);
            // 判断文件类型
            type = fileName.indexOf(".") != -1 ? fileName.substring(fileName.lastIndexOf(".") + 1, fileName.length()) : null;
            if (type != null) {// 判断文件类型是否为空
                if ("GIF".equals(type.toUpperCase()) || "PNG".equals(type.toUpperCase()) || "JPG".equals(type.toUpperCase())) {
                    // 项目在容器中实际发布运行的根路径
                    String realPath = "E:\\Mars_Eclipse\\workspace\\GoodStomach\\WebContent\\photo\\";
                    //request.getSession().getServletContext().getRealPath("/");
                    // 自定义的文件名称
                    String trueFileName = String.valueOf(System.currentTimeMillis()) + fileName;
                    // 设置存放图片文件的路径
                    path = realPath + System.getProperty("file.separator")+trueFileName;
                    path = realPath + fileName;
                    System.out.println("存放图片文件的路径:" + path);
                    imagePath = "photo/"+fileName;
                    // 转存文件到指定的路径
                    file.transferTo(new File(path));
                    System.out.println("文件成功上传到指定目录下");
                } else {
                    System.out.println("不是我们想要的文件类型,请按要求重新上传");
                    return null;
                }
            } else {
                System.out.println("文件类型为空");
                return null;
            }
        } else {
            System.out.println("没有找到相对应的文件");
            return null;
        }
        String colId = request.getParameter("colId");
        
        Long id = Long.parseLong(request.getParameter("id"));
        Long k_id = Long.parseLong(colId);
        String name = request.getParameter("name");
        Double price = Double.parseDouble(request.getParameter("price"));
        String url = imagePath;
        String burdenMessage = request.getParameter("burdenMessage");
        String foodMessage = request.getParameter("foodMessage");
        
        Food food = new Food(id, name, price, url, burdenMessage, foodMessage, k_id);
        FoodService foodService = new FoodService();
        foodService.updateOne(food);
        //request.setAttribute("path",imagePath);
        return null;
    }

}
