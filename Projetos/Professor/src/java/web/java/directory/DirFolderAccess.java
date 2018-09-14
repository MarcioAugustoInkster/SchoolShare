package web.java.directory;

import java.io.File;
import java.io.IOException;
import java.nio.file.Path;
import java.nio.file.Paths;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Freakazed-PC
 */
public class DirFolderAccess extends HttpServlet {

    private static HttpServletRequest request;
    private static HttpServletResponse response;

    public static Path filesUpload() throws IOException, ServletException {
        Path upload = Paths.get(request.getContextPath() + "/files/upload");

        return upload;
    }

    public static Path files() throws IOException, ServletException {
        Path files = Paths.get(request.getContextPath() + "/files");

        return files;
    }

    public static Path usuario() throws IOException, ServletException {
        Path usuario = Paths.get(request.getContextPath() + "/usuario");

        return usuario;
    }
    
    public static String uploadFullPath() {
        //String dirPath = "G:\\Entra21\\MeuGitHub\\javawebadmin\\web\\files\\upload";
        //String dirPath = "../javawebadmin/web/files/upload";
        String dirPath = "G:/Entra21/MeuGitHub/javawebadmin/web/files/upload";
        
        return dirPath;
    }

    public static String findDir(File root, String name) {
        if (root.getName().equals(name)) {
            return root.getAbsolutePath();
        }

        File[] files = root.listFiles();

        if (files != null) {
            for (File f : files) {
                if (f.isDirectory()) {
                    String myResult = findDir(f, name);
                    //this just means this branch of the
                    //recursion reached the end of the
                    //directory tree without results, but
                    //we don't want to cut it short here,
                    //we still need to check the other
                    //directories, so continue the for loop
                    if (myResult == null) {
                        continue;
                    } //we found a result so return!
                    else {
                        return myResult;
                    }
                }
            }
        }

        //we don't actually need to change this. It just means we reached
        //the end of the directory tree (there are no more sub-directories
        //in this directory) and didn't find the result
        return null;
    }
}
