<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:output method="html"/>

	<xsl:template match="badges">
		<html>
			<body>
				<h1>Activity Badges</h1>
				<xsl:for-each select="badge[@type='activity']">
					<xsl:sort select="name" order="descending"/>
					<h2>
						<xsl:value-of select="name"/>
					</h2>
					<p>
						<xsl:value-of select="description"/>
					</p>
					<xsl:for-each select="levels/availability">
						<p>
							<xsl:choose>
								<xsl:when test="@level = 'beaver'">Beaver level: </xsl:when>
								<xsl:when test="@level = 'scout'">Scout level: </xsl:when>
								<xsl:otherwise>Cub level: </xsl:otherwise>
							</xsl:choose>
							<xsl:value-of select="."/>
						</p>
					</xsl:for-each>
				</xsl:for-each>
				<p>
					<i>© College Productions Ltd - All rights reserved</i>
				</p>
			</body>
		</html>
	</xsl:template>

</xsl:stylesheet>