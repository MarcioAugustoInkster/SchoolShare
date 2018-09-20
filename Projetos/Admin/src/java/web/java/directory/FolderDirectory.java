package web.java.directory;

import java.io.File;
import java.io.FileFilter;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.http.HttpServletRequest;

/**
 *
 * @author Marcio Augusto Schlosser
 */
public class FolderDirectory {
    public static List<String> findFoldersInDirectory(HttpServletRequest request, int value) {
        DirFolderAccess dir = new DirFolderAccess();
        
        String UPLOAD_DIRECTORY = "";
        
        if (value == 1) {
            UPLOAD_DIRECTORY = dir.uploadFullPath(request);
        } else if (value == 2) {
            UPLOAD_DIRECTORY = dir.caminhoCursos(request);
        }
        
        File directory = new File(UPLOAD_DIRECTORY);
        
        FileFilter directoryFileFilter = new FileFilter() {
            public boolean accept(File file) {
                return file.isDirectory();
            }
        };

        File[] directoryListAsFile = directory.listFiles(directoryFileFilter);
        List<String> foldersInDirectory = new ArrayList<>(directoryListAsFile.length);
        for (File directoryAsFile : directoryListAsFile) {
            foldersInDirectory.add(directoryAsFile.getName());
        }

        return foldersInDirectory;
    }
}
