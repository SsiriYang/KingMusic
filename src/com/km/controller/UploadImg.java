package com.km.controller;

import java.io.IOException;
import java.io.InputStream;
import java.net.URL;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.FileUploadException;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;

import com.km.util.JdbcUtil;
import com.qcloud.cos.COSClient;
import com.qcloud.cos.ClientConfig;
import com.qcloud.cos.auth.AnonymousCOSCredentials;
import com.qcloud.cos.auth.BasicCOSCredentials;
import com.qcloud.cos.auth.COSCredentials;
import com.qcloud.cos.http.HttpMethodName;
import com.qcloud.cos.model.GeneratePresignedUrlRequest;
import com.qcloud.cos.model.ObjectMetadata;
import com.qcloud.cos.model.PutObjectResult;
import com.qcloud.cos.region.Region;


@WebServlet("/UploadImg")
public class UploadImg extends HttpServlet {
	JdbcUtil jdbc=new JdbcUtil();
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		InputStream ins = null;
		try {
			DiskFileItemFactory factory = new DiskFileItemFactory();
			ServletFileUpload upload = new ServletFileUpload(factory);
			upload.setHeaderEncoding("utf-8");
			// 表单中一个input标签对应一个FileItem
			List<FileItem> items = upload.parseRequest(request);
			// 循环遍历每个表单域，并对其做响应处理
			for (FileItem item : items) {
				// 普通的表单域
				if (item==null) {
					request.getRequestDispatcher("homepage.jsp").forward(request, response);
				} else {
					ins = item.getInputStream();// 获取文件输入流（读数据）
					String filename = item.getName();
					//文件名

					// 1 初始化用户身份信息(secretId, secretKey)
					COSCredentials cred = new BasicCOSCredentials("AKIDymV4S0ZTyLYZVHqrdhfZIuLl5IevkykM",
							"eMy1ucBZq1DNQLUUN8jEcufR4EE2f9h8");
					// 2 设置bucket的区域, COS地域的简称请参照
					// https://cloud.tencent.com/document/product/436/6224
					ClientConfig clientConfig = new ClientConfig(new Region("ap-beijing"));
					// 3 生成cos客户端
					COSClient cosclient = new COSClient(cred, clientConfig);
					// bucket的命名规则为{name}-{appid} ，此处填写的存储桶名称必须为此格式
					String bucketName = "ssss-999-1257238099";

					String key = item.getName();

					ObjectMetadata objectMetadata = new ObjectMetadata();
					// 设置输入流长度为 500
					objectMetadata.setContentLength(item.getSize());
					PutObjectResult putObjectResult = cosclient.putObject(bucketName, key, ins, objectMetadata);

					// 生成一个公有的无时间限制的链接
					COSCredentials creded = new AnonymousCOSCredentials();
					ClientConfig clientConfiged = new ClientConfig(new Region("ap-beijing"));
					COSClient coscliented = new COSClient(creded, clientConfiged);
					String name = filename;
					GeneratePresignedUrlRequest req =
					        new GeneratePresignedUrlRequest(bucketName, name, HttpMethodName.GET);
					URL url = coscliented.generatePresignedUrl(req);

					String img = url.toString();
					request.getSession().setAttribute("head_img", img);
					request.getRequestDispatcher("homepage.jsp").forward(request, response);
					coscliented.shutdown();
					//音乐链接地址
					String username = (String)request.getSession().getAttribute("username");
					String sql="update tb_users set head=? where username=?";
					jdbc.executeUpdate(sql,img,username);
					/*boolean s=update_img(src,username);*/

				}
			}
		} catch (FileUploadException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			if (ins != null) {
				ins.close();
			}

		}
	}
	public boolean add_music(String username,String src) {
		try {
			/*String sql="update tb_users set src=? where username=?";
			int rs=jdbc.add(sql, src, username);
			
			while(rs!=0){
				return true;
			}*/
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return false;
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
