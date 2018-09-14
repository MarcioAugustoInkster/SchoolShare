package web.java.mapping;

/**
 *
 * @author Marcio Augusto Schlosser
 */
public class Listas {
    public static String listaEstadosBrasileiros() {
        String[] listaEstadosSiglas = {
            "AC", "AL", "AP", "AM", "BA", "CE",
            "DF", "ES", "GO", "MA", "MT", "MS",
            "MG", "PA", "PB", "PR", "PE", "PI",
            "RJ", "RN", "RS", "RO", "RR", "SC",
            "SP", "SE", "TO"
        };
        
        String[] listaEstadosNome = {
            "Acre", "Alagoas", "Amapá", "Amazonas", "Bahia",
            "Ceará", "Distrito Federal", "Espírito Santo",
            "Goiás", "Maranhão", "Mato Grosso", "Mato Grosso do Sul",
            "Minas Gerais", "Pará", "Paraíba", "Paraná", "Pernambuco",
            "Piauí", "Rio de Janeiro", "Rio Grande do Norte",
            "Rio Grande do Sul", "Rondônia", "Roraima", "Santa Catarina",
            "São Paulo", "Sergipe", "Tocantins"
        };
        
        String mostraEstados = "";
        
        return mostraEstados;
    }
    
    public static String[] listaCursosEntra21() {
        String[] cursosArray = {"Preparatório para Certificação PMP",
            "Desenvolvimento Ágil em Python",
            "Desenvolvendo em PHP",
            "Oracle - Preparatório Para Certificação OCA",
            "Iniciação a Programação com Lógica, Algoritmos, Banco de Dados, SQL e Orientação a Objetos",
            "Formação de Consultor de Implantação",
            "AngularJS",
            "Ferramentas do Front-End",
            "Microsoft Excel Avançado",
            "Desenvolvedor Java",
            "Desenvolvedor C#",
            "Formação Linux",
            "Desenvolvimento de Aplicações Híbridas",
            "Microsoft Excel Intermediário",
            "Desenvolvendo em C#",
            "Microsoft Excel Básico",
            "Angular",
            "Gestão de Alta Performance em Marketing Digital e Redes Sociais",
            "Lógica de Programação",
            "Produção Audiovisual",
            "PowerBI - Fundamentos e Prática",
            "Desenvolvimento de líderes",
            "Preparatório para certificação ITIL",
            "Inteligência Artificial com C#",
            "JavaScript e Jquery",
            "Preparatório ITIL V3",
            "Gerenciamento de Projetos - Fundamentos",
            "Formação Pacote Office",
            "Desenvolvendo em Java",
            "Java - Web",
            "MySQL",
            "Desenvolvendo Aplicativos Mobile com Xamarin",
            "Oracle - SQL*Plus + PL/SQL",
            "Excel Avançado - Módulo 1",
            "Otimização de Web Sites para Mecanismos de Busca – SEO",
            "Criando Apresentações Profissionais",
            "Gerenciamento de Projetos com MS Project",
            "Facebook e Instagram para Negócios",
            "Formação Delphi",
            "Desenvolvendo Jogos com Unity 3D",
            "Gerenciamento de Projetos com SCRUM",
            "Formação Web Design e Develop",
            "Teste de Software - Fundamentos e Prática",
            "Formação MCSA - SQL Server",
            "Desenvolvimento de Líderes",
            "Língua Portuguesa em Comunicação Empresarial",
            "Curso Eletrônica Arduino Avançado",
            "Curso de eletrônica Layout de Placas",
            "Curso Eletrônica Arduino Básico",
            "PPCP - 12H",
            "PCP - CONCEITOS GERAIS DE PROGRAMAÇÃO E CONTROLE DA PRODUÇÃO - 12H",
            "FORMAÇÃO DE INSPETORES DA QUALIDADE DA CONFECÇÃO",
            "COACHING PARA ALTA PERFORMANCE PESSOAL E PROFISSIONAL (NOVO) - 15h",
            "COMPRAS - MELHORANDO AS TÉCNICAS DE NEGOCIAÇÃO",
            "VENDENDO MAIS E MELHOR -",
            "ASSISTENTE DE RECURSOS HUMANOS - 32h",
            "FORMAÇÃO DE AUXILIAR FISCAL - INICIANTES - 24h",
            "PRÁTICAS NA APURAÇÃO DE CUSTOS INDUSTRIAIS",
            "SUBSTITUIÇÃO TRIBUTÁRIA - ICMS - 24h",
            "ESTOQUES - 15H",
            "CONTABILIDADE COMO INSTRUMENTO DE DECISÃO PARA NÃO CONTADORES - 21H",
            "ASSISTENTE ADMINISTRATIVO E FINANCEIRO(NOVO)",
            "MATEMÁTICA FINANCEIRA COM APLICAÇÃO NA HP12C E EXEL",
            "Curso de CIPA - Março",
            "QUALISTER - No mês de Novembro: Curso de Automação de testes de webservices com SoapUI à distância",
            "QUALISTER - No mês de Novembro: Curso de Testes ára equipes ágeis",
            "QUALISTER - Automação de testes de webservices com SoapUI à distância",
            "QUALISTER - Teste de performance com JMeter à distância",
            "QUALISTER - Automação de testes mobile para Android com Robotium à distância",
            "QUALISTER - Gestão de testes com TestLink à distância",
            "Curso de Oratória - Blusoft",
            "Curso: Administração de Cargos e Salários",
            "Pós-Graduação Engenharia de Software – Sociesc Blumenau",
            "SOCIESC - Pós-Graduação em Engenharia de Software - Blumenau",
            "FGV / SOCIESC - MBA em Gestão da Tecnologia da Informação",
            "SENAI - Superior de Tecnologia em Redes de Computadores",
            "SEBLUTIC",
            "CISCO CCNA 1 e",
            "Cursos de Informática Básica",
            "Curso Técnico Subsequente em Informática para a Internet",
            "Gerência de Requisitos na Prática",
            "Redação de Helps e Manuais Técnicos",
            "Programação Java"
        };
        
        return cursosArray;
    }
    
    public static String tipoUsuario(int tipo) {
        String[] listaUsuario = {"Administrador", "Professor", "Aluno"};
        
        for (int i = 0; i < listaUsuario.length; i++) {
            if (i == tipo) {
                return listaUsuario[tipo - 1];
            }
        }
        return null;
    }
}
