<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
  <xsl:template match="/">
<html>
  <head>
    <link rel="stylesheet" type="text/css" href="estilo.css"/>
   </head>
   <body>
       <h1>Datos del Empresario y sus Trabajadores</h1>
       <div id="tabla">
       <table>
         <tr>
         <th>Nombre</th>
         <th>Edad</th>
         <th>Pais</th>
         <th colspan="2">Dni</th>
         </tr>
         <xsl:for-each select="//datosempresario[2]">
         <xsl:if test="edad &lt; 18">
         <td><xsl:value-of select="nombre"/></td>
         <td  id="bajo"><xsl:value-of select="edad"/></td>
         <td><xsl:value-of select="pais"/></td>
         <td colspan="2"><xsl:value-of select="dni"/></td>
         </xsl:if>
         <xsl:if test="edad &gt; 18">
         <td><xsl:value-of select="nombre"/></td>
         <td><xsl:value-of select="edad"/></td>
         <td><xsl:value-of select="pais"/></td>
         <td colspan="2"><xsl:value-of select="dni"/></td>
         </xsl:if>
         </xsl:for-each>
         
         <tr>
         <th id="empresa1">Nombre Trabajador</th>
         <th id="empresa1">Edad Trabajador</th>
         <th id="empresa1">Lugar de Nacimiento</th>
         <th id="empresa1">País</th>
         <th id="empresa1">Horas trabajadas</th>
         </tr>
         <xsl:for-each select="//Empleados[2]/empleado[1]">
         <xsl:if test="edad &lt; 18">
         <td><xsl:value-of select="nombreEmpleado"/></td>
         <td  id="bajo"><xsl:value-of select="edad"/></td>
         <td><xsl:value-of select="lugarNacimiento"/></td>
         <td><xsl:value-of select="tipoContrato"/></td>
         <td><xsl:value-of select="HorasTrabajadas"/></td>
         </xsl:if>
         <xsl:if test="edad &gt;= 18">
         <td><xsl:value-of select="nombreEmpleado"/></td>
         <td><xsl:value-of select="edad"/></td>
         <td><xsl:value-of select="lugarNacimiento"/></td>
         <td><xsl:value-of select="tipoContrato"/></td>
         <td><xsl:value-of select="HorasTrabajadas"/></td>
         </xsl:if>
         </xsl:for-each>
         <tr></tr>
         <xsl:for-each select="//Empleados[2]/empleado[2]">
         <xsl:if test="edad &lt; 18">
         <td><xsl:value-of select="nombreEmpleado"/></td>
         <td  id="bajo"><xsl:value-of select="edad"/></td>
         <td><xsl:value-of select="lugarNacimiento"/></td>
         <td><xsl:value-of select="tipoContrato"/></td>
         <td><xsl:value-of select="HorasTrabajadas"/></td>
         </xsl:if>
         <xsl:if test="edad &gt;= 18">
         <td><xsl:value-of select="nombreEmpleado"/></td>
         <td><xsl:value-of select="edad"/></td>
         <td><xsl:value-of select="lugarNacimiento"/></td>
         <td><xsl:value-of select="tipoContrato"/></td>
         <td><xsl:value-of select="HorasTrabajadas"/></td>
         </xsl:if>
         </xsl:for-each>
         </table>
         </div>
         <h1>Socios</h1>
         <article>
         <section>
         <xsl:for-each select="//socios[2]/socio[1]">
        <li>Nombre: <xsl:value-of select="nombreSocio"/></li>
       <li>Porcentaje: <xsl:value-of select="porcentajeRetribuido"/>% = <xsl:value-of select="//empresa[2]/ganancia *//socios[2]/socio[1]/porcentajeRetribuido div 100"/></li>
       <li>Edad: <xsl:value-of select="edad"/></li>
      </xsl:for-each>
      </section>
      <section>
      <xsl:for-each select="//socios[2]/socio[2]">
        <li>Nombre: <xsl:value-of select="nombreSocio"/></li>
       <li>Porcentaje: <xsl:value-of select="porcentajeRetribuido"/>% = <xsl:value-of select="//empresa[2]/ganancia *//socios[2]/socio[2]/porcentajeRetribuido div 100"/></li>
       <li>Edad: <xsl:value-of select="edad"/></li>
      </xsl:for-each>
      </section>
      </article>
     </body>
     </html>
  </xsl:template>
</xsl:stylesheet>
