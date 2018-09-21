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
    public List<String> procuraRepositorioMaster(HttpServletRequest request) {
        DirFolderAccess dir = new DirFolderAccess();
        
        String UPLOAD_DIRECTORY = dir.uploadFullPath(request);
        
        return defineDiretorioFolder(UPLOAD_DIRECTORY);
    }
    
    public List<String> procuraRepositorioCurso(HttpServletRequest request, String folder) {
        DirFolderAccess dir = new DirFolderAccess();
        
        String UPLOAD_DIRECTORY = dir.caminhoCursos(request, folder);
        
        return defineDiretorioFolder(UPLOAD_DIRECTORY);
    }
    
    public static List<String> defineDiretorioFolder(String diretorio) {
        File directory = new File(diretorio);
        
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
