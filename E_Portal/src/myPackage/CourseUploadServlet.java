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

@WebServlet("/CourseUploadServlet")

@MultipartConfig(fileSizeThreshold = 1024 * 1024 * 2,   //2MB
maxFileSize = 1024 * 1024 * 100,    //10MB
maxRequestSize = 1024 * 1024 * 150)

public class CourseUploadServlet extends HttpServlet {    

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html;charset=UTF-8");
		
		String c_Name =request.getParameter("coursename");
        String t_Marks =request.getParameter("totalmarks");
        String c_Time=request.getParameter("time");
        
        Part part1 = request.getPart("doc");
        Part part2 = request.getPart("audio");
        Part part3 = request.getPart("video");
        
        String fileName1 = extractFileName1(part1);
        String fileName2 = extractFileName2(part2);
        String fileName3 = extractFileName3(part3);
        
        String savePath1 = "D:\\OS_ExamPortal\\E_Portal\\WebContent\\Course\\doc\\" + File.separator + fileName1;
        String savePath2 = "D:\\OS_ExamPortal\\E_Portal\\WebContent\\Course\\audio\\" + File.separator + fileName2;
        String savePath3 = "D:\\OS_ExamPortal\\E_Portal\\WebContent\\Course\\video\\" + File.separator + fileName3;
        
        File fileSaveDir1 = new File(savePath1);
        File fileSaveDir2 = new File(savePath2);
        File fileSaveDir3 = new File(savePath3);
        
        part1.write(savePath1 + File.separator);
        part2.write(savePath2 + File.separator);
        part3.write(savePath3 + File.separator);
        
        try {			
			Connection conn= DriverManager.getConnection("jdbc:mysql://localhost:3306/exam_system","root","root");

			String sql="INSERT into courses(course_name,total_marks,time,c_pdf,c_audio,c_video,pdf_path,audio_path,video_path) Values(?,?,?,?,?,?,?,?,?)";
                   
			PreparedStatement pstm=conn.prepareStatement(sql);
            pstm.setString(1,c_Name);
            pstm.setString(2,t_Marks);
            pstm.setString(3,c_Time);
            
            pstm.setString(4,fileName1);
            pstm.setString(5,fileName2);
            pstm.setString(6,fileName3);
            
            pstm.setString(7,savePath1);
            pstm.setString(8,savePath2);
            pstm.setString(9,savePath3);
            
            int row1 = pstm.executeUpdate();
            
            if (row1 > 0){    
            	request.getRequestDispatcher("adm-page.jsp?pgprt=2").include(request, response);            	
            }else{ 
            	request.getRequestDispatcher("login.jsp");
            }  
            
            pstm.close();
        } catch (SQLException ex) {
            Logger.getLogger(DatabaseClass.class.getName()).log(Level.SEVERE, null, ex);
        }
	}
	
	private String extractFileName1(Part part) {
		String contentDisp = part.getHeader("content-disposition");
		String[] items = contentDisp.split(";");
		for(String s : items) {
			if(s.trim().startsWith("file")) {
				return s.substring(s.indexOf("=") + 2, s.length() - 1);
			}						
		}
		return "";
	}
	private String extractFileName2(Part part) {
		String contentDisp = part.getHeader("content-disposition");
		String[] items = contentDisp.split(";");
		for(String s : items) {
			if(s.trim().startsWith("file")) {
				return s.substring(s.indexOf("=") + 2, s.length() - 1);
			}						
		}
		return "";
	}
	private String extractFileName3(Part part) {
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
