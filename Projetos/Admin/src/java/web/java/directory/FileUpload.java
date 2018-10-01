package web.java.directory;

import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.Iterator;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.FileItemFactory;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;

/**
 *
    Document   : FileUpload
    Created on : 16/08/2018, 15:23:25
    Author     : Marcio Augusto Schlosser
 */
@WebServlet(urlPatterns = "/fileupload")
@MultipartConfig

public class FileUpload extends HttpServlet {

    private static PrintWriter pw;
    private String UPLOAD_DIRECTORY;

    protected void getGet(HttpServletRequest request, HttpServletResponse response)
        throws ServletException, IOException {

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        response.setContentType("text/html;charset=UTF-8");
        DirFolderAccess dir = new DirFolderAccess();
        
        UPLOAD_DIRECTORY = dir.uploadFullPath(request);
        pw = response.getWriter();
        String file_name = null;
        response.setContentType("text/html");

        boolean isMultipartContent = ServletFileUpload.isMultipartContent(request);

        if (!isMultipartContent) {
            pw.print("Retorna Multipart");
            return;
        }

        FileItemFactory factory = new DiskFileItemFactory();
        ServletFileUpload upload = new ServletFileUpload(factory);

        try {
            List<FileItem> fields = upload.parseRequest(request);
            Iterator<FileItem> it = fields.iterator();

            if (!it.hasNext()) {
                pw.print("Retorna hasNext");
                return;
            }

            while (it.hasNext()) {
                FileItem fileItem = it.next();

                boolean isFormField = fileItem.isFormField();
                if (fileItem.getSize() > 0) {
                    fileItem.write(new File(UPLOAD_DIRECTORY + fileItem.getName()));
                } else if (isFormField) {
                    if (file_name == null) {
                        if (fileItem.getFieldName().equals("file_name")) {
                            file_name = fileItem.getString();
                        }
                    }
                }
            }
        } catch (Exception ex) {
            ex.printStackTrace();
        } finally {
            //response.sendRedirect("./admin/arquivo.jsp?fileName=" + file_name);
            response.sendRedirect("/aluno/aluno.jsp");
            pw.close();
        }
    }
}
