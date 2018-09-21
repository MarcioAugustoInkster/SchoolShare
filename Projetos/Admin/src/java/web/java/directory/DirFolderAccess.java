package web.java.directory;

import java.io.File;
import java.io.IOException;
import java.nio.file.DirectoryStream;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import javax.servlet.http.HttpServletRequest;

/**
 *
 * @author Marcio Augusto Schlosser
 */
public class DirFolderAccess {
    public String uploadFullPath(HttpServletRequest request) {
        Path path = Paths.get(request.getServletContext().getRealPath(File.separator));
        path = path.getParent().getParent();
        
        return path.toAbsolutePath() + File.separator + "arquivos" + File.separator ;
    }
    
    public String caminhoCursos(HttpServletRequest request, String repo) {
        Path path = Paths.get(request.getServletContext().getRealPath(File.separator));
        path = path.getParent().getParent();
        
        return path.toAbsolutePath() + File.separator + "arquivos" + File.separator + repo + File.separator;
    }

    public static boolean diretorioVazio(final Path dir) throws IOException {
        try(DirectoryStream<Path> caminho = Files.newDirectoryStream(dir)) {
            return !caminho.iterator().hasNext();
        }
    }

    public String findDir(File root, String name) {
        if (root.getName().equals(name)) {
            return root.getAbsolutePath();
        }

        File[] files = root.listFiles();

        if (files != null) {
            for (File file : files) {
                if (file.isDirectory()) {
                    String myResult = findDir(file, name);
                    // A recursão irá ler até o final do diretório e 
                    // trazer a listagem. O loop continuará a verificar
                    // outros diretórios dentro
                    
                    if (myResult == null) {
                        // Continua execuç~so
                        continue;
                    } else {
                        // Retorna os resultados obtidos
                        return myResult;
                    }
                }
            }
        }
        // O valor de retorno para os sub-folders será nula
        // sem retornar excessão
        return null;
    }
}
