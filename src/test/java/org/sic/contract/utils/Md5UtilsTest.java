package org.sic.contract.utils;

import java.io.File;
import java.io.UnsupportedEncodingException;
import java.net.URL;

import junit.framework.Assert;

import org.apache.commons.io.FileUtils;
import org.junit.Test;
import org.sic.contract.ContractBaseTest;

public class Md5UtilsTest extends ContractBaseTest{
	@Test
	public void testGetDigest(){
		URL url = ClassLoader.getSystemResource("testContext.xml");
		File file = FileUtils.toFile(url);
		String digest = MD5Utils.getMd5(file);
		System.out.println(digest);
	}
	
	@Test
	public void testVerify(){
		String hexString = "8b1a9953c4611296a827abf8c47804d7";
		String input = "Hello";
		try {
			String digest = MD5Utils.getMd5(input.getBytes("UTF-8"));
			System.out.println(digest);
			if(!MD5Utils.isEqual(hexString, digest)){
				Assert.fail();
			}
		} catch (UnsupportedEncodingException e) {
			e.printStackTrace();
		}
	}
}
