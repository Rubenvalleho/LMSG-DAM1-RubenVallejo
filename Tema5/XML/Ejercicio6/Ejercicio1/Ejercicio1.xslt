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

    <xsl:template match="/">
        <html>
            <body>
                <xsl:if test="document/grade &gt;= 70">
                    <p>Enhorabuena has aprobado con: <xsl:value-of select="document/grade"/>.</p>
                </xsl:if>
                <xsl:if test="document/grade &lt;= 70">
                    <p>Lo siento, has suspendido tu nota es: <xsl:value-of select="document/grade"/>.</p>
                </xsl:if>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>