package myPackage;

import myPackage.DatabaseClass;

import java.io.File;
import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

@WebServlet("/ImageUploadServlet")

@MultipartConfig(fileSizeThreshold = 1024 * 1024 * 2,   //2MB
maxFileSize = 1024 * 1024 * 10,    //10MB
maxRequestSize = 1024 * 1024 * 50)

public class ImageUploadServlet extends HttpServlet {	

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {	
		response.setContentType("text/html;charset=UTF-8");
		
		String fName =request.getParameter("fname");
        String lName =request.getParameter("lname");
		/*
		 * String uName=request.getParameter("uname"); String
		 * email=request.getParameter("email");
		 */
        String pass=request.getParameter("pass");
        String contactNo =request.getParameter("contactno");
        String city =request.getParameter("city");
        String address =request.getParameter("address");
        String uType =request.getParameter("utype");       
        
		 int uid=Integer.parseInt(request.getParameter("u_id").toString()); 
        
        Part part = request.getPart("file");		  
        String fileName = extractFileName(part);    
        
        String savePath = "D:\\OS_ExamPortal\\E_Portal\\WebContent\\images\\" + File.separator + fileName;
        File fileSaveDir = new File(savePath);
        
		part.write(savePath + File.separator);
		
		try {
			/* Class.forName("com.mysql.jdbc.Driver"); */
			Connection conn= DriverManager.getConnection("jdbc:mysql://localhost:3306/exam_system","root","root");
			
            String sql="Update users"
                    + " set first_name=? , last_name=? , password=? , user_type=? , contact_no=? , city=? , address=? , image=? ,path=?"
                    + " where user_id=?";
            
            PreparedStatement pstm=conn.prepareStatement(sql);
            pstm.setString(1,fName );
            pstm.setString(2,lName );
            /*pstm.setString(3,uName );
            pstm.setString(4,email );*/
            pstm.setString(3,pass );
            pstm.setString(4,uType );
            pstm.setString(5,contactNo );
            pstm.setString(6,city );
            pstm.setString(7,address );
            
            /**************/
			/* String image1 = SAVE_DIR+part; */
	        pstm.setString(8,fileName);
	        /**************/
	        
	        pstm.setString(9,savePath);
            pstm.setInt(10,uid);
            
            int row1 = pstm.executeUpdate();
            if (row1 > 0){    
            	if(uType.toString().equals("admin")) {
            		request.getRequestDispatcher("adm-page.jsp?pgprt=0").include(request, response);
            	}else {
            		request.getRequestDispatcher("std-page.jsp?pgprt=0").include(request, response);
            	}
                              	
            }else{ 
            	request.getRequestDispatcher("login.jsp");
            }  
            
        } catch (SQLException ex) {
            Logger.getLogger(DatabaseClass.class.getName()).log(Level.SEVERE, null, ex);
        }
	}	
		private String extractFileName(Part part) {
			String contentDisp = part.getHeader("content-disposition");
			String[] items = contentDisp.split(";");
			for(String s : items) {
				if(s.trim().startsWith("file")) {
					return s.substring(s.indexOf("=") + 2, s.length() - 1);
				}						
			}
			return "";
		}
	}


