package org.gymadvicer.utils;

public class LanguageUtil {
	
	private static String LANG = "ru";
	
	public static String getLang(){
		return LANG;
	}
	
	public static String changeLang(String newLang){
		LANG = newLang;
		return LANG;
	}
	
}
