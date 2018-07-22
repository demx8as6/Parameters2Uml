<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0" xmlns:onf="uri:onf:tooling:properties" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:fn="http://www.w3.org/2005/xpath-functions" exclude-result-prefixes="onf xsl xs fn">
	<xsl:output method="xml" version="1.0" encoding="UTF-8" indent="yes"/>
	<xsl:template match="/onf:properties">
		<projectDescription>
			<name>
				<xsl:value-of select="@name"/>
			</name>
			<comment/>
			<projects>
			</projects>
			<buildSpec>
			</buildSpec>
			<natures>
			</natures>
		</projectDescription>
	</xsl:template>
</xsl:stylesheet>
