<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
  <xsl:template match="/">
  <html>
   <body>
     <h1>Campeonato Ajedrez</h1>
     <table border="1">
     <tr>
         <th style="Text-align:left">Nombre</th>
         <th style="Text-align:left">Puntuación</th>
        </tr>
       <xsl:for-each select= "//jugador[nombre = 'pepe']">
          <xsl:if test="puntuacion &lt;1300">
         <tr bgcolor="#FF0000">
           <td><xsl:value-of select="nombre"/></td>
          <td><xsl:value-of select=" sum(puntuacion) div count(puntuacion)"/></td>
         </tr>
        </xsl:if>
        <xsl:if test="puntuacion &gt;=1300">
         <tr bgcolor="#9acd32">
           <td><xsl:value-of select="nombre"/></td>
          <td><xsl:value-of select="sum(puntuacion) div count(puntuacion)"/></td>
         </tr>
        </xsl:if>
       </xsl:for-each>
       <xsl:for-each select= "//jugador[nombre = 'Manolo']">
          <xsl:if test="puntuacion &lt; 1300">
         <tr bgcolor="#FF0000">
           <td><xsl:value-of select="nombre"/></td>
          <td><xsl:value-of select="sum(puntuacion) div count(puntuacion)"/></td>
         </tr>
        </xsl:if>
        <xsl:if test="puntuacion &gt;=1300">
         <tr bgcolor="#9acd32">
           <td><xsl:value-of select="nombre"/></td>
          <td><xsl:value-of select="sum(puntuacion) div count(puntuacion)"/></td>
         </tr>
        </xsl:if>
       </xsl:for-each>
       <xsl:for-each select= "//jugador[nombre = 'Paco']">
         <xsl:if test="puntuacion &lt; 1300">
         <tr bgcolor="#FF0000">
           <td><xsl:value-of select="nombre"/></td>
          <td><xsl:value-of select="sum(puntuacion) div count(puntuacion)"/></td>
         </tr>
        </xsl:if>
        <xsl:if test="puntuacion &gt;=1300">
         <tr bgcolor="#9acd32">
           <td><xsl:value-of select="nombre"/></td>
          <td><xsl:value-of select="sum(puntuacion) div count(puntuacion)"/></td>
         </tr>
        </xsl:if>
       </xsl:for-each>
       <xsl:for-each select= "//jugador[nombre = 'Dani']">
        <xsl:if test="puntuacion &lt;1300">
         <tr bgcolor="#FF0000">
           <td><xsl:value-of select="nombre"/></td>
          <td><xsl:value-of select="sum(puntuacion) div count(puntuacion)"/></td>
         </tr>
        </xsl:if>
        <xsl:if test="puntuacion &gt;=1300">
         <tr bgcolor="#9acd32">
           <td><xsl:value-of select="nombre"/></td>
          <td><xsl:value-of select="sum(puntuacion) div count(puntuacion)"/></td>
         </tr>
         </xsl:if>
       </xsl:for-each>
     </table>
   </body>
  </html>
  </xsl:template>
</xsl:stylesheet>