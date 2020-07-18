package myPackage;

import java.io.FileOutputStream;

import com.itextpdf.text.Document;
import com.itextpdf.text.Image;
import com.itextpdf.text.Paragraph;
import com.itextpdf.text.Phrase;
import com.itextpdf.text.pdf.PdfPCell;
import com.itextpdf.text.pdf.PdfPTable;
import com.itextpdf.text.pdf.PdfWriter;

public class Generate_Certificate {

	public static void main(String[] args) {
		
		try {
		String file_name = "D:\\OS_ExamPortal\\E_Portal\\WebContent\\pdf\\Let's Transform.pdf";
		Document doc = new Document();
		
		PdfWriter.getInstance(doc, new FileOutputStream(file_name));
		
		doc.open();
		
		Paragraph para = new Paragraph("Tis is testing form Trupti");
		doc.add(para);
		
		doc.add(new Paragraph(" "));
		doc.add(new Paragraph(" "));
		doc.add(new Paragraph(" "));
		
		//add table
		PdfPTable table = new PdfPTable(3);
		PdfPCell c1 = new PdfPCell(new Phrase("Heading 1"));
		table.addCell(c1);
		
		c1 = new PdfPCell(new Phrase("Heading 2"));
		table.addCell(c1);
		
		c1 = new PdfPCell(new Phrase("Heading 3"));
		table.addCell(c1);
		table.setHeaderRows(1);
		
		table.addCell("1.0");
		table.addCell("1.1");
		table.addCell("1.2");
		table.addCell("2.1");
		table.addCell("2.2");
		table.addCell("2.3");
		
		doc.add(table);
		
		//add image
		doc.add(Image.getInstance("D:\\OS_ExamPortal\\E_Portal\\WebContent\\images\\app\\accounts_pic.png"));
		
		doc.close();
		System.out.println("Finish");
		
		}catch(Exception e){
			System.err.println(e);
		}

	}

}
