<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0" xmlns:onf="uri:onf:tooling:properties" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:fn="http://www.w3.org/2005/xpath-functions" xmlns:xmi="http://www.omg.org/spec/XMI/20131001" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:css="http://www.eclipse.org/papyrus/infra/gmfdiag/css" xmlns:notation="http://www.eclipse.org/gmf/runtime/1.0.2/notation" xmlns:style="http://www.eclipse.org/papyrus/infra/gmfdiag/style" xmlns:uml="http://www.eclipse.org/uml2/5.0.0/UML" exclude-result-prefixes="onf xsl xs fn">
	<xsl:output method="xml" version="1.0" encoding="UTF-8" indent="yes"/>
	<xsl:template match="/">
		<xmi:XMI xmi:version="2.0">
			<xsl:apply-templates select="*"/>
		</xmi:XMI>
	</xsl:template>
	<xsl:template match="onf:properties">
		<notation:Diagram xmi:id="{fn:generate-id()}" type="PapyrusUMLClassDiagram" name="DataTypes" measurementUnit="Pixel">
			<!-- <xsl:apply-templates select="//yin:typedef | //yin:identity"/> -->
			<styles xmi:type="notation:StringValueStyle" xmi:id="{fn:generate-id()}dcv1" name="diagram_compatibility_version" stringValue="1.3.0"/>
			<styles xmi:type="notation:DiagramStyle" xmi:id="{fn:generate-id()}ds1"/>
			<styles xmi:type="style:PapyrusDiagramStyle" xmi:id="{fn:generate-id()}pds1" diagramKindId="org.eclipse.papyrus.uml.diagram.class">
				<owner xmi:type="uml:Package" href="{@name}.uml#{fn:generate-id()}_{@name}"/>
			</styles>
			<element xmi:type="uml:Package" href="{@name}.uml#{fn:generate-id()}_{@name}"/>
			<!-- <xsl:apply-templates select="//yin:typedef | //yin:identity" mode="edges"/> -->
		</notation:Diagram>
		<css:ModelStyleSheets xmi:id="{fn:generate-id()}mss1">
			<stylesheets xmi:type="css:StyleSheetReference" xmi:id="{fn:generate-id()}mss1ssr1" path="../css/ClassDiagramStyleSheet.css"/>
		</css:ModelStyleSheets>
	</xsl:template>
</xsl:stylesheet>
