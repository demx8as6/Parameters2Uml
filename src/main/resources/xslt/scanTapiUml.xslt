<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:fn="http://www.w3.org/2005/xpath-functions" xmlns:xmi="http://www.omg.org/spec/XMI/20131001" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:OpenInterfaceModel_Profile="http:///schemas/OpenInterfaceModel_Profile/_3NKYsD78EeiIisB6uOvKFA/8" xmlns:OpenModel_Profile="http:///schemas/OpenModel_Profile/_S30WUD8HEeiIisB6uOvKFA/26" xmlns:ecore="http://www.eclipse.org/emf/2002/Ecore" xmlns:uml="http://www.eclipse.org/uml2/5.0.0/UML">
	<xsl:output method="text" version="1.0" encoding="UTF-8" indent="yes"/>
	<xsl:key name="typeRef" match="packagedElement" use="@xmi:id"/>
	<xsl:template match="/">
		<xsl:text>Long Name (labelspace.parameterName),Identifier (uuid),Group/Type/ObjectClass,Name,Description,Type,Unit,AccessControl,AttributeValueChangeNotification,Constrains,Characteristics</xsl:text>
		<xsl:text>&#xA;</xsl:text>
		<xsl:apply-templates select="//ownedAttribute"/>
		<xsl:text>&#xA;</xsl:text>
		<xsl:text>&#xA;</xsl:text>
		<xsl:text>Identifier (uuid),Long Name (objectClassName.parameterName),value,description</xsl:text>
		<xsl:text>&#xA;</xsl:text>
		<xsl:apply-templates select="//ownedLiteral"/>
	</xsl:template>
	<xsl:template match="ownedLiteral">
		<xsl:value-of select="@xmi:id"/>
		<xsl:text>,</xsl:text>
		<xsl:value-of select="../@name"/>
		<xsl:text>,</xsl:text>
		<xsl:value-of select="@name"/>
		<xsl:text>,</xsl:text>
		<xsl:choose>
			<xsl:when test="ownedComment">
				<xsl:apply-templates select="ownedComment"/>
			</xsl:when>
			<xsl:otherwise>
				<xsl:text>none</xsl:text>
			</xsl:otherwise>
		</xsl:choose>
		<xsl:text>&#xA;</xsl:text>
	</xsl:template>
	<xsl:template match="ownedAttribute">
		<xsl:value-of select="../@name"/>
		<xsl:text>.</xsl:text>
		<xsl:value-of select="@name"/>
		<xsl:text>,</xsl:text>
		<xsl:value-of select="@xmi:id"/>
		<xsl:text>,</xsl:text>
		<xsl:value-of select="../@name"/>
		<xsl:text>,</xsl:text>
		<xsl:value-of select="@name"/>
		<xsl:text>,</xsl:text>
		<xsl:choose>
			<xsl:when test="ownedComment">
				<xsl:apply-templates select="ownedComment"/>
			</xsl:when>
			<xsl:otherwise>
				<xsl:text>none</xsl:text>
			</xsl:otherwise>
		</xsl:choose>
		<xsl:text>,</xsl:text>
		<xsl:choose>
			<xsl:when test="@type">
				<xsl:apply-templates select="key('typeRef', @type)/@name"/>
			</xsl:when>
			<xsl:when test="type">
				<xsl:value-of select="fn:substring-after(type/@href, '#')"/>
			</xsl:when>
			<xsl:otherwise>
				<xsl:text>none</xsl:text>
			</xsl:otherwise>
		</xsl:choose>
		<xsl:text>&#xA;</xsl:text>
	</xsl:template>
	<xsl:template match="ownedComment">
		<xsl:text>&quot;</xsl:text>
		<xsl:apply-templates select="body"/>
		<xsl:text>&quot;</xsl:text>
	</xsl:template>
	<xsl:template match="body">
		<xsl:value-of select="fn:normalize-space(.)"/>
	</xsl:template>
</xsl:stylesheet>
