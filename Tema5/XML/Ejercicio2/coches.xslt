<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:output name="html"/>
    <xsl:template match="/">
        <html>
            <body>
                <h2>Lista de coches</h2>
                <ul>
            <!-- Iteramos sobre cada empleado -->
            <xsl:for-each select="coches/coche">
            <br/>
            <!-- Mostramos sólo el nombre de cada empleado -->
                    <li>
                    <strong>|Marca:</strong> <xsl:value-of select="marca "/><br/>
                    <strong>|Modelo: </strong><xsl:value-of select="modelo"/><br/>
                    <strong>|Año: </strong><xsl:value-of select=" año"/><br/>
                    <strong>|Precio:</strong> <xsl:value-of select="precio"/><br/>
                    </li>
            </xsl:for-each>
                </ul>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>