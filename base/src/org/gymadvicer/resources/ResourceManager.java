package org.gymadvicer.resources;

import java.io.*;
import java.net.MalformedURLException;
import java.net.URL;
import java.net.URLClassLoader;
import java.nio.charset.Charset;
import java.util.Locale;
import java.util.Properties;
import java.util.PropertyResourceBundle;
import java.util.ResourceBundle;

/**
 */
public class ResourceManager {

    private static final ResourceManager instance = new ResourceManager();
    private PropertyResourceBundle resourceBundle;

    public static final String defLang = "ru";
    private Locale locale = Locale.forLanguageTag(defLang);

    private static URLClassLoader loader;

    private ResourceManager(){
        File f = new File("StringRes");
//        System.out.println(f.getAbsolutePath());
        URL url = null;
        try {
            url = f.toURI().toURL();
        } catch (MalformedURLException e) {
            e.printStackTrace();
        }
        loader = URLClassLoader.newInstance(new URL[]{url});
        resourceBundle = (PropertyResourceBundle) PropertyResourceBundle.getBundle("StringRes",new Locale("ru"), loader);

    }

    public static ResourceManager getInstance(String resourcesDir){
        if(resourcesDir != null) {
            File f = new File(resourcesDir);
//        System.out.println(f.getAbsolutePath());
            URL url = null;
            try {
                url = f.toURI().toURL();
            } catch (MalformedURLException e) {
                e.printStackTrace();
            }
            loader = URLClassLoader.newInstance(new URL[]{url});
        }
        return instance;
    }

    public static ResourceManager getInstance(){
        return getInstance(null);
    }

    public String getString(String key){
        String s = resourceBundle.getString(key);
        return new String(s.getBytes(Charset.forName("UTF-8")), Charset.forName("UTF-8"));
    }

    public void putString(String key, String value) throws IOException {
        String fileName = "StringRes/StringRes_" + resourceBundle.getLocale().toLanguageTag() + ".properties";
        BufferedInputStream bis = new BufferedInputStream(new FileInputStream(fileName));
        Properties p = new Properties();
        p.load(bis);
        bis.close();

        if(p.containsKey(key) && p.containsValue(value)) return;
        p.put(key, value);
        BufferedOutputStream bos = null;
        try{
            bos = new BufferedOutputStream(new FileOutputStream(fileName));
            p.store(bos, "store");
        } finally {
            if(bos != null){
                bos.close();
            }
        }
        File f = new File("StringRes");
//        System.out.println(f.getAbsolutePath());
        URL url = null;
        try {
            url = f.toURI().toURL();
        } catch (MalformedURLException e) {
            e.printStackTrace();
        }
        loader = URLClassLoader.newInstance(new URL[]{url});
        resourceBundle = (PropertyResourceBundle) PropertyResourceBundle.getBundle("StringRes", locale, loader);

    }

    public void changeLang(String lang){
        locale = new Locale(lang);
        resourceBundle = (PropertyResourceBundle) PropertyResourceBundle.getBundle("StringRes", locale, loader);
    }

    public static void main(String[] args) throws IOException {

        String test = ResourceManager.getInstance().getString("test");
        System.out.println(test);
        ResourceManager.getInstance().putString("test1", "тест1");


        String test1 = ResourceManager.getInstance().getString("test1");
        System.out.println(test1);

        ResourceManager.getInstance().changeLang("en");
        test = ResourceManager.getInstance().getString("test");
        System.out.println(test);
    }

}
