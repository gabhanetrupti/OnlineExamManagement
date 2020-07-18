/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package myPackage;


public class Courses {
    
   private String cName;
   private int tMarks;
   private String time;
   private String doc,audio,video;
   

    public String getDoc() {
	return doc;
}

public void setDoc(String doc) {
	this.doc = doc;
}

public String getAudio() {
	return audio;
}

public void setAudio(String audio) {
	this.audio = audio;
}

public String getVideo() {
	return video;
}

public void setVideo(String video) {
	this.video = video;
}

	public Courses(String cName, int tMarks, String time) {
        this.cName = cName;
        this.tMarks = tMarks;
        
        this.time = time;
    }

    public Courses(String cName, int tMarks) {
        this.cName = cName;
        this.tMarks = tMarks;
    }

    public Courses() {
    }

    public Courses(String string, int int1, String string2, String string3, String string4, String string5,
			String string6, String string7, String string8) {
		// TODO Auto-generated constructor stub
	}

	public String getcName() {
        return cName;
    }

    public void setcName(String cName) {
        this.cName = cName;
    }

    public int gettMarks() {
        return tMarks;
    }

    public void settMarks(int tMarks) {
        this.tMarks = tMarks;
    }

    public String getTime() {
        return time;
    }

    public void setTime(String time) {
        this.time = time;
    }
    

   
    
}
