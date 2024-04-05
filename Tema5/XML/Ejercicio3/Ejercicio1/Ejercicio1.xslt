<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                xmlns:xs="http://www.w3.org/2001/XMLSchema"
                xmlns:array="http://www.w3.org/2005/xpath-functions/array"
                xmlns:map="http://www.w3.org/2005/xpath-functions/map"
                xmlns:math="http://www.w3.org/2005/xpath-functions/math"
                exclude-result-prefixes="#all"
                expand-text="yes"
                version="3.0">
    <xsl:template match="/">
        <html>
            <title></title>
            <body>
                <h2>Lista de personas</h2>
                <xsl:for-each select="personas/persona">
                <br/>
                <h4>Nombre completo: <xsl:value-of select="nombre"/><xsl:text> </xsl:text><xsl:value-of select="apellido"/></h4>
                Edad: <xsl:value-of select="edad"/>    
                </xsl:for-each>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>