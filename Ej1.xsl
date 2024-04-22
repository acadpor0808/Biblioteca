<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
	xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:template match="/">
		<!-- TODO: Auto-generated template -->

		<!-- 1. Mostrar una lista enumerada con todos los nombres de autores ordenados 
			por apellidos. -->

		<html>
			<body>
				<ol>

					<xsl:for-each select="libreria/libro">

						<xsl:sort select="autor/apellido" order="ascending"></xsl:sort>
						<xsl:for-each select="autor">

							<li>
								<xsl:value-of select="apellido"></xsl:value-of>

								<xsl:value-of select="nombre"></xsl:value-of>
							</li>
						</xsl:for-each>

					</xsl:for-each>
				</ol>
			</body>
		</html>

	</xsl:template>

	
</xsl:stylesheet>