<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
  <xsl:template match="/">
  <html>
  <head>
    <link rel="stylesheet" type="text/css" href="estilo.css"/>
</head>
   <body id="e">
     
       <header>
     <h1>Registro de Empresa</h1>
         </header>
     <div id="tabla">
     <table>
     <tr>
       <th>Nombre del empresario</th>
       <th>edad</th>
       <th>Pais</th>
       <th>Lugar de nacimiento</th>
       <th>Dni</th>
      </tr>
       <xsl:for-each select="//datosempresario[1]">
         <td><xsl:value-of select="nombre"/></td>
         <td><xsl:value-of select="edad"/></td>
         <td><xsl:value-of select="pais"/></td>
         <td><xsl:value-of select="lugarNacimiento"/></td>
         <td><xsl:value-of select="dni"/></td>
       </xsl:for-each>
       <tr>
       <th id="empresa1">Nombre de la empresa</th>
      <th id="empresa1">Direccion</th>
      <th id="empresa1">Tipo de establecimiento</th>
      <th id="empresa1">antigüedad</th>
      <th id="empresa1">Numero de empleados</th>
       <tr>
       <xsl:for-each select="//empresa[1]">
         <td><xsl:value-of select="nombreEmpresa"/></td>
         <td><xsl:value-of select="direccion"/></td>
         <td><xsl:value-of select="tipoEstablecimiento"/></td>
         <td ><xsl:value-of select="antiguedad"/></td>
         <td ><xsl:value-of select="Nempleados"/></td>
         
       </xsl:for-each>
       </tr>
       </tr>
       <tr></tr>
       <th id="empresa1" colspan="5">Medidad de Prevencion Aplicadas</th>
       <tr>
       <xsl:for-each select="//medidasPrevencion[1]">
        <td><xsl:value-of select="medida[1]"/></td>
        <td><xsl:value-of select="medida[2]"/></td>
        <td><xsl:value-of select="medida[3]"/></td>
        <td><xsl:value-of select="medida[4]"/></td>
        <td><xsl:value-of select="medida[5]"/></td>
       </xsl:for-each>
       </tr>
        </table>
       </div>
       <h1>Empleados asociados a la empresa</h1>
     <article>
       <section>
     <div id="empleado">
       <xsl:for-each select="//empleado[1]">
       <li>Nombre: <xsl:value-of select="nombreEmpleado"/></li>
       <li>Edad: <xsl:value-of select="HorasTrabajadas"/></li>
       <li>Contrato: <xsl:value-of select="tipoContrato"/></li>
       </xsl:for-each>
      </div>
         </section>
       <section>
    <div id="empleado">
     <xsl:for-each select="//empleado[2]">
    <li>Nombre: <xsl:value-of select="nombreEmpleado"/></li>
       <li>Horas trabajadas: <xsl:value-of select="HorasTrabajadas"/></li>
       <li>Contrato: <xsl:value-of select="tipoContrato"/></li>
      </xsl:for-each>
    </div>
         </section>
    </article>
     
    <h1>Medidas de prevención</h1>
    <article id="prevencion1">
    <div id="prevencion">
    <xsl:for-each select="//medidasPrevencion[1]">
    <ol>
     <li><xsl:value-of select="medida[1]"/></li>
     <li><xsl:value-of select="medida[2]"/></li>
     <li><xsl:value-of select="medida[3]"/></li>
      <li><xsl:value-of select="medida[4]"/></li>
      <li><xsl:value-of select="medida[5]"/></li>
    </ol>
    </xsl:for-each>
    </div>
    </article>
   </body>
  </html>
  </xsl:template>
</xsl:stylesheet>
