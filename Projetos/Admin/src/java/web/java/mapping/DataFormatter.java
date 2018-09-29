package web.java.mapping;

import java.io.File;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import org.apache.commons.io.FilenameUtils;

/**
 *
 * @author Marcio Augusto Schlosser
 */
public class DataFormatter {
    public String fileDateTimeToString(File file) {
        Date dateModified = new Date(file.lastModified());
        DateFormat df = new SimpleDateFormat("dd/MM/yyyy HH:mm:ss");
        
        String getFormattedDate = df.format(dateModified);
        
        return getFormattedDate;
    }
    
    public String fileDateToString(File file) {
        Date dateModified = new Date(file.lastModified());
        DateFormat df = new SimpleDateFormat("dd/MM/yyyy");
        
        String getFormattedDate = df.format(dateModified);
        
        return getFormattedDate;
    }
    
    public static String getExtensionFile(File file) {
        String extension = FilenameUtils.getExtension(file.getName());
        
        return extension;
    }
    
    public Long sizeToKiloByte(File file) {
        float fileSize = file.length() / 1024;
        long size = Math.round(fileSize);
        
        return size;
    }
    
    public char converteStringToChar(String valor) {
        char pegaValor = valor.charAt(0);
        return pegaValor;
    }
    
    public String dataParaEN(String valor) throws ParseException {
        DateFormat df = new SimpleDateFormat("dd/MM/yyyy");
        Date date = new Date();
        date = df.parse(valor);
        DateFormat df1 = new SimpleDateFormat("yyyy-MM-dd");
        
        return df1.format(date);
    }
    
    public String dataParaBR(String valor) throws ParseException {
        DateFormat df = new SimpleDateFormat("yyyy-MM-dd");
        Date date = new Date();
        date = df.parse(valor);
        DateFormat df1 = new SimpleDateFormat("dd/MM/yyyy");
        
        return df1.format(date);
    }
    
    public Byte converteStringToByte(String valor) {
        Byte tipoByte = Byte.valueOf(valor);
        
        return tipoByte;
    }
    
    public boolean converteStringToBoolean(String valor) {
        Boolean ativo = Boolean.valueOf(valor);
        
        return ativo;
    }
}
