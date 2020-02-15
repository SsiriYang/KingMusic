package com.km.util;
import java.lang.reflect.Field;  
import java.sql.Date;  
import java.sql.Timestamp;  
import java.text.ParseException;  
import java.text.SimpleDateFormat;  
import java.util.Arrays;  
  
import javax.servlet.http.HttpServletRequest;  
  
  
/** 
 * 批量从request请求中获取参数值，并赋值给对象 
 *  
 * @author haowl 
 * 
 */  
public class Conversion {  
  
    public static <T> void convert(T t, HttpServletRequest request) {  
  
        // 获取类对象  
        Class<?> c = t.getClass();  
        try {  
            // 获取所有属性  
            Field[] fs = c.getDeclaredFields();  
            for (Field f : fs) {  
                // 设置为可访问  
                f.setAccessible (true);  
                // 获得属性名  
                String name = f.getName();  
                // 获得属性的类型名  
                Class<?> type = f.getType();  
                // 判断是否为数组类型的属性  
                if (type.isArray()) {  
  
                    System.out.println("s数组转换");  
                    // 从请求中获取参数数组  
                    String[] str = request.getParameterValues(name);  
                    if (str != null) {  
                        // 判断属性的类型  
                        if (type == String[].class) {  
                            // 设置属性值  
                            f.set(t, str);  
                        } else if (type == int[].class || type == Integer[].class) {// 整型  
                            // 创建一个整型数组  
                            Integer[] args = new Integer[str.length];  
                            // 将String转换为Integer  
                            for (int i = 0; i < str.length; i++) {  
                                args[i] = Integer.valueOf(str[i]);  
                            }  
  
                            f.set(t, args);  
                        } else if (type == Float[].class || type == float[].class) {  
                            // 创建一个float数组  
                            Float[] args = new Float[str.length];  
                            // 将String转换为Float  
                            for (int i = 0; i < str.length; i++) {  
                                args[i] = Float.valueOf(str[i]);  
                            }  
  
                            f.set(t, args);  
                        } else if (type == Double[].class || type == double[].class) {  
                            // 创建一个Double数组  
                            Double[] args = new Double[str.length];  
                            // 将String转换为Double  
                            for (int i = 0; i < str.length; i++) {  
                                args[i] = Double.valueOf(str[i]);  
                            }  
  
                            f.set(t, args);  
                        }else if(type==Date[].class){//转换为java.sql.Date 类型  
                            Date[] date=new Date[str.length];  
                            for(int i=0;i<str.length;i++){  
                                try {  
                                    date[i]= new Date(new SimpleDateFormat("yyyy-MM-dd").parse(str[i]).getTime());  
                                } catch (ParseException e) {  
                                    // TODO Auto-generated catch block  
                                    e.printStackTrace();  
                                }  
                                f.set(t, date);  
                            }  
                        } else if(type==java.util.Date[].class){  
                            java.util.Date[] date=new Date[str.length];  
                            for(int i=0;i<str.length;i++){  
                                try {  
                                    date[i]= new SimpleDateFormat("yyyy-MM-dd HH-mm-ss").parse(str[i]);  
                                } catch (ParseException e) {  
                                    // TODO Auto-generated catch block  
                                    e.printStackTrace();  
                                }  
                                f.set(t, date);  
                            }  
                        }  
                    }  
  
                } else {  
                    String str = request.getParameter(name);  
                    if (str != null && !str.equals("")) {  
                        // String类型  
                        if (type == String.class) {  
                            f.set(t, str);  
                        } else if (type == int.class || type == Integer.class) {// 整型  
                            f.set(t, Integer.valueOf(str));  
                        } else if (type == Float.class || type == float.class) {// float类型  
                            f.setFloat(t, Float.valueOf(str));  
                        } else if (type == Double.class || type == double.class) {// double类型  
                            f.setDouble(t, Double.valueOf(str));  
                        }else if(type==Date.class){//转换为java.sql.Date 类型  
                            Date date;  
                            try {  
                                date = new Date(new SimpleDateFormat("yyyy-MM-dd").parse(str).getTime());  
                                f.set(t, date);  
                            } catch (ParseException e) {  
                                // TODO Auto-generated catch block  
                                e.printStackTrace();  
                            }  
                              
                        }else if(type==Timestamp.class){//java.sql.Timestap类型转换  
                            Timestamp time;  
                            try {  
                                time=new Timestamp(new SimpleDateFormat("yyyy-MM-dd HH:mm:ss").parse(str).getTime());  
                                f.set(t, time);  
                            } catch (ParseException e) {  
                                // TODO Auto-generated catch block  
                                e.printStackTrace();  
                            }  
                        }else if(type==java.util.Date.class){//java.util.Date类型转换  
                            java.util.Date date;  
                            try {  
                                date= new SimpleDateFormat("yyyy-MM-dd HH-mm-ss").parse(str);  
                                f.set(t, date);  
                            } catch (ParseException e) {  
                                // TODO Auto-generated catch block  
                                e.printStackTrace();  
                            }  
                        }  
                    }  
                }  
  
            }  
  
        } catch (IllegalAccessException e) {  
            // TODO Auto-generated catch block  
            e.printStackTrace();  
        }  
    }  
  
} 