package com.secureinfosoft.java;

public class MD5password {
	
	
	
	public String bytesToHex(byte[] output) {
		char HexDex[]={'0','1','2',
				'3','4','5','6','7','8','9','A','B','C','D','E','F'};
		StringBuffer buff=new StringBuffer();
		for(int i=0;i<output.length;i++)
		{
			buff.append(HexDex[(output[i]>>4)& 0x0f]);
			buff.append(HexDex[output[i] & 0x0f]);
		}
		return buff.toString();
	}

}
