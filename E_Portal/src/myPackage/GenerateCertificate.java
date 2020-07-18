package myPackage;

import myPackage.DatabaseClass;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.itextpdf.text.Document;
import com.itextpdf.text.Paragraph;
import com.itextpdf.text.pdf.PdfWriter;

public class GenerateCertificate extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String user_Name =request.getParameter("u_name");
		
		
		String file_name = "D:\\OS_ExamPortal\\E_Portal\\WebContent\\pdf\\" + user_Name +".pdf";
		
		Document doc = new Document();
		try {
		PdfWriter.getInstance(doc, new FileOutputStream(file_name));
		doc.open();
		
		Connection conn= DriverManager.getConnection("jdbc:mysql://localhost:3306/exam_system","root","root");
		PreparedStatement pstm = null;
		ResultSet rs = null;
		
		String sql = "select * from exams";
		pstm = conn.prepareStatement(sql);
		rs = pstm.executeQuery();
		
		while(rs.next()) {
			Paragraph para = new Paragraph(rs.getString("course_name")+" "+rs.getInt("total_marks"));
			doc.add(para);
			doc.add(new Paragraph(" "));
		}
		
		   
        	request.getRequestDispatcher("std-page.jsp?pgprt=1").include(request, response);            	
        
		doc.close();
		System.out.println("Finish");
		
		}catch(Exception e){
			System.err.println(e);
		}
	}

}
