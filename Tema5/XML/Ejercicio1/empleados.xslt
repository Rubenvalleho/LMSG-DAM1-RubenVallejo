<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <!-- Identificamos el punto de partida del documento XML -->
  <xsl:template match="/">
    <!-- Comenzamos a construir la estructura del nuevo documento -->
    <html>
      <body>
        <h2>Lista de Empleados</h2>
        <ul>
          <!-- Iteramos sobre cada empleado -->
          <xsl:for-each select="empleados/empleado">
            <!-- Mostramos sólo el nombre de cada empleado -->
            <li>
               |Nombre: <xsl:value-of select="nombre "/>
               |Apellido: <xsl:value-of select="apellido"/>
               |Puesto: <xsl:value-of select=" puesto"/>
            </li>
          </xsl:for-each>
        </ul>
      </body>
    </html>
  </xsl:template>
</xsl:stylesheet>