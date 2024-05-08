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
                <style>
                    table {
                        border: solid 1px black;
                    }
                    th, td {
                        border: solid 1px black;
                    }
                </style>
            </head>
            <body>
                <h1>Datos de la empresa</h1>
                <p>Nombre: <xsl:value-of select="Empresas/Empresa/Nombre"/></p>
                <p>Ubicacion: <xsl:value-of select="Empresas/Empresa/Ubicacion"/></p>
                <p>Numero de empleados: <xsl:value-of select="Empresas/Empresa/NumeroDeEmpleados"/></p>
                <table>
                    <tr>
                        <th>Nombre</th>
                        <th>Fecha de inicio</th>
                        <th>Responsable</th>
                        <th>Presupuesto</th>
                        <th>Finalizado</th>
                        <th>Subvencion</th>
                    </tr>
                    <xsl:for-each select="Empresas/Empresa/Proyectos/Proyecto">
                    <tr>
                        <td><xsl:value-of select="Nombre"/></td>
                        <td><xsl:value-of select="FechaInicio"/></td>
                        <td><xsl:value-of select="Responsable"/></td>
                        <td><xsl:value-of select="Presupuesto"/></td>
                        <td><xsl:value-of select="Finalizado"/></td>
                        <td><xsl:value-of select="Subvencion"/></td>
                    </tr>    
                    </xsl:for-each>
                </table>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>