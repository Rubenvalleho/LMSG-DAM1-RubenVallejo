<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                xmlns:xs="http://www.w3.org/2001/XMLSchema"
                xmlns:array="http://www.w3.org/2005/xpath-functions/array"
                xmlns:map="http://www.w3.org/2005/xpath-functions/map"
                xmlns:math="http://www.w3.org/2005/xpath-functions/math"
                exclude-result-prefixes="#all"
                expand-text="yes"
                version="3.0">

    <xsl:output method="xml" indent="yes"/>
    <xsl:mode on-no-match="shallow-copy"/>

    <xsl:template match="/*">
    <html>
        <body>
        <xsl:value-of select="//producto[@categoria='Electrónica']"/>

        <xsl:value-of select="//producto[precio > 50]/(nombre | precio)"/>

        <xsl:value-of select="//producto[@id='2']/nombre"/>
        
        <xsl:value-of select="//producto[contains(nombre, 'Camisa')]"/>

        <xsl:value-of select="//producto[@categoria='Ropa']"/>
        
        <xsl:value-of select="//producto[precio >= 20 and precio <= 50]"/>
        
        <xsl:value-of select="//producto[@categoria='Electrónica' and precio < 30]"/>
        </body>
    </html>
    </xsl:template>
</xsl:stylesheet>