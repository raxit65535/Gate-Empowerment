package com.secureinfosoft.java;

import java.io.BufferedReader;
import java.io.FileReader;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

public class FileOp {

	
	public static ArrayList<String> li()
	{
		BufferedReader br = null;
		ArrayList<String> l = new ArrayList<String>();
		//List l = new ArrayList();
		 
		try {
			
			String sCurrentLine;
			String str = "@";
			
			br = new BufferedReader(new FileReader("C:/Users/rax/Documents/rax.txt"));

			while ((sCurrentLine = br.readLine()) != null) {
			
				l.add(sCurrentLine);
					
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
		return l;
	}
	
}
