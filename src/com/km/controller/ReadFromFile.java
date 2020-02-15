package com.km.controller;


	import java.io.BufferedReader;
	import java.io.File;
	import java.io.FileInputStream;
	import java.io.FileReader;
	import java.io.IOException;
	import java.io.InputStream;
	import java.io.InputStreamReader;
	import java.io.RandomAccessFile;
	import java.io.Reader;
	 
	public class ReadFromFile {	    	 
		public static void main(String[] args) {
			String name="陈奕迅 - 你给我听好";
	        String fileName = "WebContent/lrc/"+name+".lrc";	       
	        String s=ReadFromFile.readFileByLines(fileName);
	        System.out.println(s);
	    }
	    /**
	     * 以行为单位读取文件，常用于读面向行的格式化文件
	     * 
	     * @param fileName
	     *            文件名
	     */
	    public static String readFileByLines(String fileName) {
	        File file = new File(fileName);
	        InputStreamReader reader = null;
	        try {
	            reader = new InputStreamReader(new FileInputStream(file),"utf-8");
	            BufferedReader bufferedReader = new BufferedReader(reader);
	            String tempString = null;
	            String songs = "";
	            // 一次读入一行，直到读入null为文件结束
	            while ((tempString = bufferedReader.readLine()) != null) {
	                // 显示行号	                
	                 songs = songs+tempString+"\\"+"\r\n";	                	                
	            }
	            /*System.out.println(songs);*/	            
	            bufferedReader.close();
	            return songs;
	        } catch (IOException e) {
	            e.printStackTrace();
	            return null;
	        } finally {
	            if (reader != null) {
	                try {
	                    reader.close();
	                } catch (IOException e1) {
	                }
	            }
	        }
	    }
	 
	    
	    
	    
	    
	}
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	

