package myPackage;

import java.io.FileOutputStream;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import com.itextpdf.text.Document;
import com.itextpdf.text.Paragraph;
import com.itextpdf.text.pdf.PdfWriter;

public class GenerateCertificateDynamic {
	
	public static void main(String args[])
	{
		try {
			String file_name = "D:\\OS_ExamPortal\\E_Portal\\WebContent\\pdf\\Let's Transform.pdf";
			Document doc = new Document();
			
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
			doc.close();
			System.out.println("Finish");
			
		}catch(Exception e){
			System.err.println(e);
		}
		
	}

}
