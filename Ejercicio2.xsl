<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
	xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	
	<xsl:template match="/">
		<!-- TODO: Auto-generated template -->
		<!-- 2. Mostrar una lista enumerada con todos los títulos de libros cuyo 
			precio sea menor de 100. -->

		<html>
			<body>
				<ol>

					<xsl:for-each select="/libreria/libro">

						<xsl:if test="precio &lt; 100">
							<li>
								<xsl:value-of select="titulo"/>
								<xsl:value-of select="precio"/>euros

							</li>

						</xsl:if>
					</xsl:for-each>
				</ol>
			</body>
		</html>
	</xsl:template>
</xsl:stylesheet>