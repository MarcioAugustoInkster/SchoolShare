<!-- jQuery 3 -->
<script src="/tema/bower_components/jquery/dist/jquery.min.js"></script>
<!-- jQuery UI 1.11.4 -->
<script src="/tema/bower_components/jquery-ui/jquery-ui.min.js"></script>
<!-- Resolve conflict in jQuery UI tooltip with Bootstrap tooltip -->
<script>
  $.widget.bridge('uibutton', $.ui.button);
</script>
<!-- Bootstrap 3.3.7 -->
<script src="/tema/bower_components/bootstrap/dist/js/bootstrap.min.js"></script>
<!-- Morris.js charts -->
<script src="/tema/bower_components/raphael/raphael.min.js"></script>
<script src="/tema/bower_components/morris.js/morris.min.js"></script>
<!-- Sparkline -->
<script src="/tema/bower_components/jquery-sparkline/dist/jquery.sparkline.min.js"></script>
<!-- jvectormap -->
<script src="/tema/plugins/jvectormap/jquery-jvectormap-1.2.2.min.js"></script>
<script src="/tema/plugins/jvectormap/jquery-jvectormap-world-mill-en.js"></script>
<!-- jQuery Knob Chart -->
<script src="/tema/bower_components/jquery-knob/dist/jquery.knob.min.js"></script>
<!-- daterangepicker -->
<script src="/tema/bower_components/moment/min/moment.min.js"></script>
<script src="/tema/bower_components/bootstrap-daterangepicker/daterangepicker.js"></script>
<!-- datepicker -->
<script src="/tema/bower_components/bootstrap-datepicker/dist/js/bootstrap-datepicker.min.js"></script>
<!-- Bootstrap WYSIHTML5 -->
<script src="/tema/plugins/bootstrap-wysihtml5/bootstrap3-wysihtml5.all.min.js"></script>
<!-- Slimscroll -->
<script src="/tema/bower_components/jquery-slimscroll/jquery.slimscroll.min.js"></script>
<!-- FastClick -->
<script src="/tema/bower_components/fastclick/lib/fastclick.js"></script>
<!-- AdminLTE App -->
<script src="/tema/dist/js/adminlte.min.js"></script>
<!-- AdminLTE dashboard demo (This is only for demo purposes) -->
<script src="/tema/dist/js/pages/dashboard.js"></script>
<!-- AdminLTE for demo purposes -->
<script src="/tema/bower_components/datatables.net/js/jquery.dataTables.min.js"></script>
<script src="/tema/bower_components/datatables.net-bs/js/dataTables.bootstrap.min.js"></script>
<!-- JQuery interator for multiple browsers -->
<script src="/js/jquery/jquery-3.3.1.min.js" type="text/javascript"></script>
<script src="/js/jquery.mask.js" type="text/javascript"></script>

<script type="text/javascript">
    $(document).ready(function() {
        $("input[name='professorAnoNascimento']").mask('00/00/0000', 
        {placeholder: '__/__/____'});
    });
    
    $(document).ready(function() {
        $("input[name='alunoAnoNascimento']").mask('00/00/0000', 
        {placeholder: '__/__/____'});
    });
    
    $(document).ready(function() {
        $("input[name='professorTelefone']").mask('(00) 0000-0000', 
        {placeholder: '(__) ____-____'});
    });
    
    $(document).ready(function() {
        $("input[name='turmaDataInicio']").mask('00/00/0000', 
        {placeholder: '__/__/____'});
    });
    
    $(document).ready(function() {
        $("input[name='turmaDataFinal']").mask('00/00/0000', 
        {placeholder: '__/__/____'});
    });
    
    $(document).ready(function() {
        $("input[name='turmaCargaHora']").mask('000', 
        {placeholder: '___'});
    });
</script>
<script src="/js/forms-action-iterator.js" type="text/javascript"></script>
<!-- Carrega conteúdos dentro de componentes ao acionar eventos -->
<script type="text/javascript" src="/js/load-contents.js"></script>
