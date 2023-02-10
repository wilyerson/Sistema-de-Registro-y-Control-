<?php 


$conn = mysqli_connect("localhost","root","","sirce"); 

$columns = ['cedulapersona', 'estadocivilpersona', 'nombrespersona', 'apellidospersona', 'fechanacimientopersona'];

$table = "persona";

$campo = isset($_POST['campo']) ? $conn->real_escape_string($_POST['campo']) : null;

$where = ''; 

if ($campo != null) {
    $where = "WHERE (";

    $cont = count($columns);
    for ($i=0; $i < $cont; $i++) { 
        $where .= $columns[$i] . " LIKE '%". $campo . "%' OR ";
    }
    $where = substr_replace($where, "", -3);
    $where .= ")";
}


$sql = "SELECT " .implode(", ", $columns) . "
FROM $table
$where ";

//echo $sql;
//exit;

$resultado = $conn->query($sql);
$num_rows = $resultado->num_rows;

$html = '';

if ($num_rows > 0) {
    
    while ($row = $resultado->fetch_assoc()) {
        // code...
        $html .= '<tr>';
        $html .= '<td>' . $row['cedulapersona'] . '</td>';
        $html .= '<td>' . $row['estadocivilpersona'] . '</td>';
        $html .= '<td>' . $row['nombrespersona'] . '</td>';
        $html .= '<td>' . $row['apellidospersona'] . '</td>';
        $html .= '<td>' . $row['fechanacimientopersona'] . '</td>';
        $html .= '<td><a href="">ver</a></td>';
        $html .= '<td><a href="">modificar</a></td>';
        $html .= '</tr>';
    }
}else
    {
        $html .= '<tr>';
        $html .= '<td colspan="7">Sin resultado</td>';
        $html .= '</tr>';
    }

    echo json_encode($html, JSON_UNESCAPED_UNICODE);






?>