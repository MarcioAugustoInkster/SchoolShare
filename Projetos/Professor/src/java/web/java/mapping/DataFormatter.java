package web.java.mapping;

import java.io.File;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Arrays;
import java.util.Date;
import org.apache.commons.io.FilenameUtils;

/**
 *
 * @author Freakazed-PC
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
    
    public String getExtensionFile(File file) {
        String extension = FilenameUtils.getExtension(file.getName());
        
        return extension;
    }
    
    public Long sizeToKiloByte(File file) {
        float fileSize = file.length() / 1024;
        long size = Math.round(fileSize);
        
        return size;
    }
}
