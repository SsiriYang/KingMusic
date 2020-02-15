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


@WebServlet("/UploadServlet")
public class UploadServlet extends HttpServlet {
	JdbcUtil jdbc=new JdbcUtil();
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		InputStream ins = null;
		try {
			DiskFileItemFactory factory = new DiskFileItemFactory();
			ServletFileUpload upload = new ServletFileUpload(factory);
			upload.setHeaderEncoding("utf-8");
			// 琛ㄥ崟涓竴涓猧nput鏍囩瀵瑰簲涓�涓狥ileItem
			List<FileItem> items = upload.parseRequest(request);
			// 寰幆閬嶅巻姣忎釜琛ㄥ崟鍩燂紝骞跺鍏跺仛鍝嶅簲澶勭悊
			for (FileItem item : items) {
				// 鏅�氱殑琛ㄥ崟鍩�
				if (item.isFormField()) {
					String fieldName = item.getFieldName();// 瀵瑰簲琛ㄥ崟鍩熺殑name鍊�
					String value = item.getString();// 瀵瑰簲琛ㄥ崟鍩熶腑杈撳叆鐨勫��
					System.out.println(fieldName + ":" + value);
				} else {
					ins = item.getInputStream();// 鑾峰彇鏂囦欢杈撳叆娴侊紙璇绘暟鎹級
					String filename = item.getName();

					// 1 鍒濆鍖栫敤鎴疯韩浠戒俊鎭�(secretId, secretKey)
					COSCredentials cred = new BasicCOSCredentials("AKIDymV4S0ZTyLYZVHqrdhfZIuLl5IevkykM",
							"eMy1ucBZq1DNQLUUN8jEcufR4EE2f9h8");
					// 2 璁剧疆bucket鐨勫尯鍩�, COS鍦板煙鐨勭畝绉拌鍙傜収
					// https://cloud.tencent.com/document/product/436/6224
					ClientConfig clientConfig = new ClientConfig(new Region("ap-beijing"));
					// 3 鐢熸垚cos瀹㈡埛绔�
					COSClient cosclient = new COSClient(cred, clientConfig);
					// bucket鐨勫懡鍚嶈鍒欎负{name}-{appid} 锛屾澶勫～鍐欑殑瀛樺偍妗跺悕绉板繀椤讳负姝ゆ牸寮�
					String bucketName = "ssss-999-1257238099";

					String key = item.getName();

					ObjectMetadata objectMetadata = new ObjectMetadata();
					// 璁剧疆杈撳叆娴侀暱搴︿负 500
					objectMetadata.setContentLength(item.getSize());
					PutObjectResult putObjectResult = cosclient.putObject(bucketName, key, ins, objectMetadata);

					// 鐢熸垚涓�涓叕鏈夌殑鏃犳椂闂撮檺鍒剁殑閾炬帴
					COSCredentials creded = new AnonymousCOSCredentials();
					ClientConfig clientConfiged = new ClientConfig(new Region("ap-beijing"));
					COSClient coscliented = new COSClient(creded, clientConfiged);
					String name = filename;
					GeneratePresignedUrlRequest req =
					        new GeneratePresignedUrlRequest(bucketName, name, HttpMethodName.GET);
					URL url = coscliented.generatePresignedUrl(req);
			
					name=name.substring(0, name.length()-4);
					String url1 = url.toString();
					System.out.println(url1);
					coscliented.shutdown();
					//闊充箰閾炬帴鍦板潃
					boolean s=add_music(name,url1,"");
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
		request.getRequestDispatcher("homepage.jsp").forward(request, response);
	}
	public boolean add_music(String name, String url,String type) {
		try {
			String sql="insert into tb_music values(?,?,?)";
			int rs=jdbc.add(sql,name,url,type);
			
			while(rs!=0){
				return true;
			}
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
