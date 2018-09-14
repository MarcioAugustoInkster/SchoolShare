package web.java.directory;

import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;
import java.net.URL;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.Scanner;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.FileItemFactory;
import org.apache.commons.fileupload.FileUploadException;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;
import static web.java.directory.DirFolderAccess.findDir;

/**
 *
 * @author Freakazed-PC
 */
@WebServlet(urlPatterns = "/fileupload")

public class FileUpload extends HttpServlet {
    private static final String DATA_DIRECTORY = "data";
    private static final int MAX_MEMORY_SIZE = 1024 * 1024 * 2;
    private static final int MAX_REQUEST_SIZE = 1024 * 1024;
    
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
        throws ServletException, IOException {
        
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        
        String dirPath = DirFolderAccess.uploadFullPath();
        
        if (!ServletFileUpload.isMultipartContent(request)) {
            out.println("Nenhum upload");
            return;
        }

        FileItemFactory itemfactory = new DiskFileItemFactory();
        ServletFileUpload upload = new ServletFileUpload(itemfactory);

        try {
            List<FileItem> items = upload.parseRequest(request);

            for (FileItem item : items) {
                String contentType = item.getContentType();

                /*if (!contentType.equals("image/png")) {
                    out.println("Only .png image required");
                    continue;
                }*/

                File uploadDir = new File(dirPath);
                File file = File.createTempFile("img", ".png", uploadDir);
                item.write(file);
                
                response.sendRedirect("./usuario/arquivo.jsp");
            }
        } catch (FileUploadException ex) {
            out.println("Erro de Upload: " + ex.getMessage());
        }
        catch (Exception ex) {
            out.println("Erro ao salvar arquivo : " + ex.getMessage());
        }
    }
}