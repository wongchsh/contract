package org.sic.contract.utils;

import java.io.File;
import java.io.IOException;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;

import org.apache.commons.io.FileUtils;

public class MD5Utils {
	public static String getMd5(byte[] input){
		try {
			MessageDigest messageDigest = MessageDigest.getInstance("MD5");
			messageDigest.update(input);
			byte[] digest = messageDigest.digest();
			return encode(digest);
			
		} catch (NoSuchAlgorithmException e) {
			e.printStackTrace();
			return null;
		}
	}
	
	public static String getMd5(File file){
		
		try {
			byte[] input = FileUtils.readFileToByteArray(file);
			return getMd5(input);
		} catch (IOException e) {
			e.printStackTrace();
			return null;
		}
	}
	
	public static String encode(byte[] mdbytes) {  
		 StringBuffer hexString = new StringBuffer();
	    	for (int i=0;i<mdbytes.length;i++) {
	    		String hex=Integer.toHexString(0xff & mdbytes[i]);
	   	     	if(hex.length()==1) hexString.append('0');
	   	     	hexString.append(hex);
	    	}
       
        return hexString.toString();  
    }  

    public static byte[] decode(String hexString) {  
        int length = hexString.length() / 2;  
        char[] hexChars = hexString.toCharArray();  
        byte[] d = new byte[length];  
        for (int i = 0; i < length; i++) {  
            int pos = i * 2;  
            d[i] = (byte) (charToByte(hexChars[pos]) << 4 | charToByte(hexChars[pos + 1]));  
        }  
        return d;  
    }
    
    private static byte charToByte(char c) {
        return (byte) "0123456789ABCDEF".indexOf(c);
    }
    
    public static boolean isEqual(String hexStringa,String hexStringb){
    	byte[] digesta = decode(hexStringa);
    	byte[] digestb = decode(hexStringb);
    	return MessageDigest.isEqual(digesta, digestb);
    }

	
}
