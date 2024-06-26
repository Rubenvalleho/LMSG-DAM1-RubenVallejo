<?xml version="1.0" encoding="utf-8"?>
<!DOCTYPE xsl:stylesheet  [
<!ENTITY nbsp   "&#160;">
<!ENTITY copy   "&#169;">
<!ENTITY reg    "&#174;">
<!ENTITY trade  "&#8482;">
<!ENTITY mdash  "&#8212;">
<!ENTITY ldquo  "&#8220;">
<!ENTITY rdquo  "&#8221;"> 
<!ENTITY pound  "&#163;">
<!ENTITY yen    "&#165;">
<!ENTITY euro   "&#8364;">
]>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="html" encoding="utf-8" doctype-public="-//W3C//DTD XHTML 1.0 Transitional//EN" doctype-system="http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd"/>
    <xsl:template match="/">
        <html xmlns="http://www.w3.org/1999/xhtml">
            <head>
                <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
                <title>Documento sin título</title>
                <link href="style.css" rel="stylesheet" type="text/css" />
            </head>
            
            <body>
                <div class="container">
                    <header>
                        <div>
                            <img src="img/header.png" />
                        </div>
                        
                        <div class="header__candidatos">
                        <xsl:for-each select="escrutinio/resultados/partido">
                        <img src="img/carru-{@carru}.jpg"/>    
                        </xsl:for-each>
                        </div>
                        
                        <div class="header__titulo"><xsl:value-of select="escrutinio/@elecciones"/></div>
                    </header> 
                    <main>                        
                        <xsl:for-each select="escrutinio">
                        <section class="general">
                            <div>Nº de Escaños: <xsl:value-of select="escanios"/> </div>
                            <div>Porciento Escrutado: <xsl:value-of select="porciento_escrutado"/> %</div>
                            <img src="img/ico-e12.png" />
                        </section>
                        </xsl:for-each>
                        <div class="bgmarron"></div>
                        <xsl:for-each select="escrutinio/votos">
                        <section class="votos">
                            <ul>
                                <li>Votos Contabilizados: <xsl:value-of select="contabilizados/cantidad"/>- <xsl:value-of select="contabilizados/porcentaje"/>%</li>
                                <li>Abstenciones: <xsl:value-of select="abstenciones/cantidad"/> - <xsl:value-of select="abstenciones/porcentaje"/> %</li>
                                <li>Nulos: <xsl:value-of select="nulos/cantidad"/> - <xsl:value-of select="nulos/porcentaje"/> %</li>
                                <li>Blancos: <xsl:value-of select="blancos/cantidad"/> - <xsl:value-of select="blancos/porcentaje"/> %</li>
                            </ul>
                        </section>
                        </xsl:for-each>

                        <section class="partidos">
                            <table>
                                <tr>
                                    <th>&nbsp;</th>
                                    <th>PARTIDO</th>
                                    <th>VOTOS</th>
                                    <th>ESCAÑOS</th>
                                    <th>PORCENTAJE</th>
                                </tr>    
                                <xsl:for-each select="escrutinio/resultados/partido">                            
                                <tr>
                                    <td><img src="img/{@nombre}.png"/></td>
                                    <td><xsl:value-of select="@nombre"/></td>
                                    <td><xsl:value-of select="electos"/></td>
                                    <td><xsl:value-of select="votos_numero"/></td>
                                    <td><xsl:value-of select="votos_porciento"/></td>
                                </tr>
                                </xsl:for-each>
                            </table>
                        </section>

                    </main>
                    <footer>1º Lenguajes de Marcas</footer>
                </div>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>