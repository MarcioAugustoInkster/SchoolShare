package web.java.mapping;

import java.nio.charset.StandardCharsets;
import java.security.MessageDigest;

/**
 *
 * @author Marcio Augusto Schlosser
 */
public class GeraValor {
    public static StringBuilder geraSenhaEncriptado(String senha) {
        StringBuilder sb = new StringBuilder();
        
        try {
            MessageDigest md = MessageDigest.getInstance("SHA-512");
            byte[] pswd = md.digest(senha.getBytes(StandardCharsets.UTF_8));
            
            if (pswd != null) {
                for (int i = 0; i < pswd.length; i++) {
                    sb.append(Integer.toString((pswd[i] & 0xff) + 0x100, 16).substring(1)
                        .toUpperCase()).toString();
                }
                return sb;
            }
        } catch (Exception ex) {
            ex.printStackTrace();
        }
        return null;
    }
    
    public static StringBuilder geraSenhaDecriptado(String senha) {
        StringBuilder sb = new StringBuilder();
        
        try {
            
        } catch (Exception ex) {
            ex.printStackTrace();
        }
        
        return null;
    }
}
