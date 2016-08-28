package com.secureinfosoft.java;


import java.io.BufferedReader;
import java.io.FileReader;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public class ReadTextFile {

	
	public static void main(String a[])
	{
	
	BufferedReader br = null;
	//List l = new ArrayList();
	 
	try {
		
		String sCurrentLine;
		String str = "@";
		
		br = new BufferedReader(new FileReader("C:/Users/rax/Documents/rax.txt"));

		while ((sCurrentLine = br.readLine()) != null) {
			
			int j=1;
			String[] A = new String[7];
			A[0] = sCurrentLine;
			while(!(sCurrentLine = br.readLine()).equals(str))
			{
				
				A[j] = sCurrentLine;
				//System.out.println(A[j]);
				j=j+1;	
			}
			
			System.out.println("after the first iteration array is");
			for(int i=0;i<A.length;i++)
			{
				System.out.println(A[i]);
			}
			
		}

	} catch (IOException e) {
		e.printStackTrace();
	} finally {
		try {
			if (br != null)br.close();
		} catch (IOException ex) {
			ex.printStackTrace();
		}
	}
	
	
	
	

}
	
	
}
