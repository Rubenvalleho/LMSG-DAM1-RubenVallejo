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
    <xsl:template match="/">
        <html>
            <head>
                <link rel="stylesheet" type="text/css" href="Ejercicio10.css" />
            </head>
            <body>
                <h1>Datos del IES</h1>
                <p><b>Nombre:</b>  <xsl:value-of select="/instituto/@nombre"/></p>
                <p><b>Ubicacion:</b> <xsl:value-of select="/instituto/@ubicacion"/></p>
                <h3>Profesores</h3>
                <table>
                    <tr>
                        <th>Nombre</th>
                        <th>Apellidos</th>
                        <th>Asignaturas</th>
                    </tr>
                    <xsl:for-each select="/instituto/profesores/profesor">
                    <tr>
                        <td><xsl:value-of select="nombre"/></td>
                        <td><xsl:value-of select="apellidos"/></td>
                        <td>
                            <xsl:for-each select="asignaturas/asignatura">
                            <ul>
                                <li><strong><xsl:value-of select="nombre"/>: </strong>   <xsl:value-of select="horas"/>/horas por semana </li>
                            </ul>
                            </xsl:for-each>
                        </td> 
                    </tr>
                    </xsl:for-each>
                </table>
                <h3>Alumnos</h3>
                <table>
                    <tr>
                        <th>Nombre</th>
                        <th>Apellidos</th>
                        <th>Edad</th>
                    </tr>
                    <xsl:for-each select="/instituto/alumnos/alumno">
                    <tr>
                        <td><xsl:value-of select="nombre"/></td>
                        <td><xsl:value-of select="apellido"/></td>
                        <td><xsl:value-of select="edad"/></td>
                    </tr>
                    </xsl:for-each>
                </table>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>