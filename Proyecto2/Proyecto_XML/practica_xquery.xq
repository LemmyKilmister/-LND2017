<html>
<h2>Consulta 1</h2>
<table border="1">
<tr>
<th>Numero de licencias de la primera empresa</th>
</tr>
{for $x in //empresa[1]/licencias/count(licencia) return <td>La primera empresa tiene: {$x} licencias</td>} 
<br></br>
</table>
<h2>Consulta 2</h2>
<table border="1">
<tr>
<th colspan="4">Medidas de prevencion que tengan 12 o mas caracteres</th>
</tr>
{for $x in //empresa[1]/medidasPrevencion/medida[string-length() > 12]/text() return <td>Esta medida tiene mas de 12 caracteres: {$x} </td>}
</table>
<h2>Consulta 3</h2>

<table border= "1">
<tr>
<th>Ganancia por mes de la primera empresa</th>
</tr>
{for $x in //empresa[1]/ganancia return <td>La ganancia de esta empresa por mes ha sido de: {$x div 12}</td>}
</table>
<table border="1">
<h2>Consulta 4</h2>
<tr>
<th colspan="5">Medidas alfabeticamente</th>
</tr>
{for $x in //empresa[1]/medidasPrevencion/medida/text() order by $x return <td>{$x}</td>}
</table>
<h2>Consulta 5</h2>
<table border="1">
<tr>
<th colspan="3">En mayuscula todo el texto</th>
</tr>
{for $x in //empleado/upper-case(nombreEmpleado) return <td>{$x}</td>}
</table>
<table border="1">
<h2>Consulta 6</h2>
<tr>
<th colspan="2">Licencias que esten desde la posicion 3</th>
</tr>
{for $x in //licencias/licencia[position() > 3]/text() return<td>{$x}</td>}
</table>
</html>