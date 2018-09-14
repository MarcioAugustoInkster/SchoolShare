package web.java.mapping;

import java.io.File;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.http.HttpServletRequest;
import web.java.directory.DirFolderAccess;

/**
 *
 * @author Marcio Augusto Schlosser
 */
public class ListagemArquivos {

    private static final String[] colunas = {
        "Nome do Arquivo",
        "Extensão",
        "Tamanho",
        "Data de Upload",
        "Postado por",
        "Opções"
    };
    private static List<String> fileName;
    private static List<String> fileExtension;
    private static List<Long> fileSize;
    private static List<String> fileUploaded;
    private static List<String> fileUser;
    private static HttpServletRequest request;
    
    public static String carregaDadosArquivo() {
        StringBuilder sb = new StringBuilder();
        
        fileName = new ArrayList<>();
        fileExtension = new ArrayList<>();
        fileSize = new ArrayList<>();
        fileUploaded = new ArrayList<>();
        fileUser = new ArrayList<>();

        try {
            File dir = new File(DirFolderAccess.uploadFullPath(request));
            File[] files = dir.listFiles();

            if (files.length == 0) {
                sb.append("The directory is empty");
            } else {
                for (File list : files) {
                    String ext = DataFormatter.getExtensionFile(list);
                    String getFormattedDate = DataFormatter.fileDateTimeToString(list);
                    //long fileToKB = DataFormatter.sizeToKiloByte(list);

                    fileName.add(list.getName());
                    fileExtension.add(ext.toUpperCase());
                    fileSize.add(list.length());
                    fileUploaded.add(getFormattedDate);
                    //fileUser.add(list.getName());
                }
            }
        } catch (Exception ex) {
            ex.printStackTrace();
        }
        return sb.toString();
    }

    public static String carregaTabelaArquivo() {
        carregaDadosArquivo();

        StringBuilder sb = new StringBuilder();

        sb.append("<table class=\"table-files\">")
                .append("<thead>")
                .append("<tr>");

        for (String coluna : colunas) {
            sb.append("<th>").append(coluna).append("</th>");
        }

        sb.append("</tr>")
                .append("<tbody>");

        for (int i = 0; i < fileName.size(); i++) {
            sb.append("<tr><td>")
                    .append(fileName.get(i))
                    .append("</td><td>")
                    .append(fileExtension.get(i))
                    .append("</td><td>")
                    .append(fileSize.get(i))
                    .append("</td><td>")
                    .append(fileUploaded.get(i))
                    .append("</td><td>")
                    //.append(fileUser.get(i))
                    .append("</td>")
                    .append("<td>").append(opcoesTabela()).append("</td></tr>");
        }

        sb.append("</tbody>")
                .append("</thead>")
                .append("</table>");

        return sb.toString();
    }

    public static String opcoesTabela() {
        String[] listaOpcoes = {"Inserir", "Editar", "Excluir"};
        String mostaOpcoes = "";

        for (String lista : listaOpcoes) {
            mostaOpcoes += "<a href=\"\">" + lista + "</a>";

            if (fileName.size() > lista.length()) {
                mostaOpcoes += " | ";
            }
        }

        return mostaOpcoes;
    }
}
