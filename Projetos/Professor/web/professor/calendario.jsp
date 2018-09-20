<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="/master/master.jsp" %>
<!doctype html>
<html lang="en">
<!--<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>jQuery UI Datepicker - Default functionality</title>
  <link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
  <link rel="stylesheet" href="/resources/demos/style.css">
  <script src="https://code.jquery.com/jquery-1.12.4.js"></script>
  <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
  <script>
  $( function() {
    $( "#datepicker" ).datepicker();
  } );
  </script>-->
</head>
<html>
<head>
    <meta charset="utf-8">
    <meta lang="pt-BR">
    <title> Calendário</title>
    
    <link rel='stylesheet' href='fullcalendar/fullcalendar.css' />
    <script src='fullcalendar/lib/jquery.min.js'></script>
    <script src='fullcalendar/lib/moment.min.js'></script>
    <script src='fullcalendar/fullcalendar.js'></script>
    
    <!-- script de tradução -->
    <script src='fullcalendar/lang/pt-br.js'></script>
        
    <script>
       $(document).ready(function() {	
           	
            //CARREGA CALENDÁRIO E EVENTOS DO BANCO
            $('#calendario').fullCalendar({
                header: {
                    left: 'prev,next today',
                    center: 'title',
                    right: 'month,agendaWeek,agendaDay'
                },
                defaultDate: '2016-01-12',
                editable: true,
                eventLimit: true, 
                events: 'eventos.php',           
                eventColor: '#dd6777'
            });	
            
            //CADASTRA NOVO EVENTO
            $('#novo_evento').submit(function(){
                //serialize() junta todos os dados do form e deixa pronto pra ser enviado pelo ajax
                var dados = jQuery(this).serialize();
                $.ajax({
                    type: "POST",
                    url: "cadastrar_evento.php",
                    data: dados,
                    success: function(data)
                    {   
                        if(data == "1"){
                            alert("Cadastrado com sucesso! ");
                            //atualiza a página!
                            location.reload();
                        }else{
                            alert("Houve algum problema.. ");
                        }
                    }
                });                
                return false;
            });	
	   }); 
                
    </script>
    
    <style>
        #calendario{
            position: relative;
            width: 150%;
            margin: 0px auto;
        }        
    </style>
    
</head>
<body>    
    <div id='calendario'>
        <br/>
        <form id="novo_evento" action="" method="post">
            Nome do Evento: <input type="text" name="nome" required/><br/><br/>            
            Data do Evento: <input type="date" name="data" required/><br/><br/>            
            <button type="submit"> Cadastrar novo evento </button>
        </form>
    </div>
</body>
</html>
<body>
 
    <p>Calendário <button type="button" name="Calendário" id="datepicker"</button></p>
 
 
</body>
</html>
<%@include file="/master/sidebar.jsp" %>

<%@include file="/master/rodape.jsp" %>