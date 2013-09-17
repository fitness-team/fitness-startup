package org.gymadvicer.resources;

import sun.util.ResourceBundleEnumeration;

import java.io.*;
import java.util.*;

/**
 */
public class ChangedResourceBundle extends ResourceBundle{

    private Map<String,Object> lookup;
    static String baseName;

    public ChangedResourceBundle (InputStream stream) throws IOException {
        Properties properties = new Properties();
        properties.load(stream);
        lookup = new HashMap(properties);
    }

    public ChangedResourceBundle (Reader reader) throws IOException {
        Properties properties = new Properties();
        properties.load(reader);
        lookup = new HashMap(properties);
    }

    // Implements java.util.ResourceBundle.handleGetObject; inherits javadoc specification.
    public Object handleGetObject(String key) {
        if (key == null) {
            throw new NullPointerException();
        }
        return lookup.get(key);
    }

    public Enumeration<String> getKeys() {
        ResourceBundle parent = this.parent;
        return new ResourceBundleEnumeration(lookup.keySet(),
                (parent != null) ? parent.getKeys() : null);
    }

    public void putString(String key, String value) throws IOException {
        Properties p = new Properties();
        if(lookup.containsKey(key) && lookup.containsValue(value)) return;
        if(baseName == null) return;
        lookup.put(key, value);
        p.putAll(lookup);

        String fileName = baseName + "_" + getLocale().toLanguageTag() + ".properties";
        DataOutputStream dos = null;
        try{
            dos = new DataOutputStream(new BufferedOutputStream(new FileOutputStream(fileName)));

            p.store(dos, "");
        }finally {
            if(dos != null){
                dos.flush();
                dos.close();
            }
        }


    }

    protected Set<String> handleKeySet() {
        return lookup.keySet();
    }

    public static ResourceBundle getChangedBundle(String baseName) {
        ChangedResourceBundle.baseName = baseName;
        return ResourceBundle.getBundle(baseName);
    }

    public static ResourceBundle getChangedBundle(String baseName, Control control) {
        ChangedResourceBundle.baseName = baseName;
        return ResourceBundle.getBundle(baseName, control);
    }

    public static ResourceBundle getChangedBundle(String baseName, Locale locale) {
        ChangedResourceBundle.baseName = baseName;
        return ResourceBundle.getBundle(baseName, locale);
    }

    public static ResourceBundle getChangedBundle(String baseName, Locale targetLocale, Control control) {
        ChangedResourceBundle.baseName = baseName;
        return ResourceBundle.getBundle(baseName, targetLocale, control);
    }

    public static ResourceBundle getChangedBundle(String baseName, Locale locale, ClassLoader loader) {
        ChangedResourceBundle.baseName = baseName;
        return ResourceBundle.getBundle(baseName, locale, loader);
    }

    public static ResourceBundle getChangedBundle(String baseName, Locale targetLocale, ClassLoader loader, Control control) {
        ChangedResourceBundle.baseName = baseName;
        return ResourceBundle.getBundle(baseName, targetLocale, loader, control);
    }
}
