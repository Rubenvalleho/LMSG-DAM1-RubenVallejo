<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                xmlns:xs="http://www.w3.org/2001/XMLSchema"
                xmlns:array="http://www.w3.org/2005/xpath-functions/array"
                xmlns:map="http://www.w3.org/2005/xpath-functions/map"
                xmlns:math="http://www.w3.org/2005/xpath-functions/math"
                exclude-result-prefixes="#all"
                expand-text="yes"
                version="3.0">

    <xsl:output method="html" indent="yes"/>
    <xsl:mode on-no-match="shallow-copy"/>

    <xsl:template match="/">
        <html>
        <head>
        <link rel="stylesheet" href="style.css" type="text/css"/>
        </head>
        <body>
            <h2><p>Alumnos Matriculados 2020-2021</p></h2>
            <table>
                <tr>
                    <th>Matrícula</th>
                    <th>Nombre</th>
                    <th>Apellidos</th>
                    <th>Matemáticas</th>
                    <th>Lengua Castellana y Literatura</th>
                    <th>Ingles</th>
                </tr>
                <xsl:for-each select="alumnos/alumno">
                <xsl:if test="@anio_matricula=2020 or @anio=2021">
                <xsl:variable name="matematicas" select="asignaturas/asignatura[nombreasignatura='Matematicas']/nota"/>
                <xsl:variable name="lengua" select="asignaturas/asignatura[nombreasignatura='Lengua']/nota"/>
                <xsl:variable name="ingles" select="asignaturas/asignatura[nombreasignatura='Matematicas']/nota"/>

                   <tr>
                    <td><xsl:value-of select="@matricula"/></td>
                    <td><xsl:value-of select="nombre"/></td>
                    <td><xsl:value-of select="apellidos"/></td>
                    <td>
                    <xsl:choose>
                        <xsl:when test="$matematicas &lt; 5">Suspenso</xsl:when>
                        <xsl:when test="$matematicas &lt; 6">Suficiente</xsl:when>
                        <xsl:when test="$matematicas &lt; 7">Bien</xsl:when>
                        <xsl:when test="$matematicas &lt; 9">Notable</xsl:when>
                        <xsl:when test="$matematicas &gt;= 9">Sobresaliente</xsl:when>
                    </xsl:choose>
                    </td>
                    <td><xsl:value-of select="asignaturas/asignatura[nombreasignatura='Lengua']/nota"/></td>
                    <td><xsl:value-of select="asignaturas/asignatura[nombreasignatura='Ingles']/nota"/></td>
                </tr>
                 
                </xsl:if>
                </xsl:for-each>
                    
            </table>
        </body>
        </html>
    </xsl:template>
</xsl:stylesheet>