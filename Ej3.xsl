<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
	xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

	<!-- TODO: Auto-generated template -->

	<!-- 3. Mostrar una tabla con las siguientes columnas: 3.1. Precio del libro, 
		ordenando los resultados por este campo (Nota: se ordenan como si fueran 
		números y cadenas). 3.2. Título del libro. Se mostrará el fondo de la celda 
		en color rojo si el precio es mayor de 100. 3.3. Año de publicación. Se mostrará 
		el texto en cursiva. -->

	<xsl:template match="/">
		<html>
			<head>
				<title>Tabla</title>
			</head>
			<body>
				<xsl:apply-templates select="libreria" />
			</body>
		</html>
	</xsl:template>

	<xsl:template match="libreria">
		<table border="1">
			<tr>
				<th>Precio del libro</th>
				<th>Titulo del libro</th>
				<th>Año de publicacion</th>
			</tr>
			<xsl:for-each select="libro">
				<xsl:sort select="precio" order="descending"
					data-type="number" />
				<tr>
					<td>
						<xsl:value-of select="precio"></xsl:value-of>
					</td>
					<xsl:choose>
						<xsl:when test="precio &gt; 100">
							<td style="background-color: red;">
								<xsl:value-of select="titulo"></xsl:value-of>
							</td>
						</xsl:when>
						<xsl:otherwise>
							<td>
								<xsl:value-of select="titulo"></xsl:value-of>
							</td>
						</xsl:otherwise>
					</xsl:choose>
					<td>
						<em>
							<xsl:value-of select="@anio"></xsl:value-of>
						</em>
					</td>
				</tr>
			</xsl:for-each>
		</table>
	</xsl:template>
	</xsl:stylesheet>