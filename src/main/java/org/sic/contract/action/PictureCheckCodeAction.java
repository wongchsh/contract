package org.sic.contract.action;

import java.awt.Font;
import java.awt.Graphics2D;
import java.awt.image.BufferedImage;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;

import javax.imageio.ImageIO;

import org.sic.contract.utils.IdentifyingCode;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

public class PictureCheckCodeAction extends ActionSupport
{
  	
  /**
	 * 
	 */
	private static final long serialVersionUID = -1514571661421839049L;
	private ByteArrayInputStream inputStream;
	
	public String execute() throws Exception{
		init();
		return SUCCESS;
	} 
	
	public void setInputStream(ByteArrayInputStream inputStream) {    
		this.inputStream = inputStream;    
	}  
	
	public ByteArrayInputStream getInputStream() {    
		return inputStream;    
	}   


	private void init()throws Exception
  {
     IdentifyingCode idCode = new IdentifyingCode();  
     BufferedImage image =new BufferedImage(idCode.getWidth() , idCode.getHeight() , BufferedImage.TYPE_INT_BGR) ;  
     Graphics2D g = image.createGraphics() ;  
     Font myFont = new Font("Arial" , Font.BOLD , 16) ;  
     g.setFont(myFont) ;  
     g.setColor(idCode.getRandomColor(200 , 250)) ;  
     g.fillRect(0, 0, idCode.getWidth() , idCode.getHeight()) ;  
       
     g.setColor(idCode.getRandomColor(180, 200)) ;  
     idCode.drawRandomLines(g, 160) ;
     String str=idCode.drawRandomString(4, g) ;
     ActionContext.getContext().getSession().put("random",str);
     System.out.println("in PictureCheckCode str is"+str);
     g.dispose() ;
     ByteArrayOutputStream bos=new ByteArrayOutputStream();
     ImageIO.write(image, "JPEG", bos);
     bos.close();    
     inputStream = new ByteArrayInputStream(bos.toByteArray());   
  }
}
