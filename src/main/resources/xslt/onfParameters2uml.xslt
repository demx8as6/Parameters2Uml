<?xml version="1.0" encoding="UTF-8"?>
<!-- Mit XMLSpy v2018 rel. 2 sp1 (x64) (http://www.altova.com) von Martin Skorupski (highstreet technologies GmbH) bearbeitet -->
<xsl:stylesheet version="2.0" xmlns:onf="uri:onf:tooling:properties" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:fn="http://www.w3.org/2005/xpath-functions" xmlns:architecture="http://www.eclipse.org/papyrus/infra/core/architecture" xmlns:ecore="http://www.eclipse.org/emf/2002/Ecore" xmlns:math="http://exslt.org/math" xmlns:uml="http://www.eclipse.org/uml2/5.0.0/UML" xmlns:xmi="http://www.omg.org/spec/XMI/20131001" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:yang="urn:ietf:params:xml:ns:yang:ietf-yang-types" xmlns:yin="urn:ietf:params:xml:ns:yang:yin:1" xmlns:OpenInterfaceModel_Profile="http:///schemas/OpenInterfaceModel_Profile/_3NKYsD78EeiIisB6uOvKFA/8" xmlns:OpenModel_Profile="http:///schemas/OpenModel_Profile/_S30WUD8HEeiIisB6uOvKFA/26" exclude-result-prefixes="onf xsl xs fn yang yin">
	<xsl:output method="xml" version="1.0" encoding="UTF-8" indent="yes"/>
	<xsl:key name="parameterRefByGroup" match="onf:parameter" use="@Group"/>
	<xsl:template match="/">
		<xmi:XMI xmi:version="20131001" xsi:schemaLocation="http:///schemas/OpenInterfaceModel_Profile/_3NKYsD78EeiIisB6uOvKFA/8 UmlProfiles/OpenInterfaceModelProfile/OpenInterfaceModel_Profile.profile.uml#_3NPRMD78EeiIisB6uOvKFA http:///schemas/OpenModel_Profile/_S30WUD8HEeiIisB6uOvKFA/26 UmlProfiles/OpenModelProfile/OpenModel_Profile.profile.uml#_S32LgD8HEeiIisB6uOvKFA">
			<xsl:apply-templates select="*"/>
		</xmi:XMI>
	</xsl:template>
	<xsl:template match="onf:group" mode="profile">
		<OpenModel_Profile:OpenModelClass xmi:id="{fn:generate-id()}_omc" base_Class="{@Identifier}"/>
		<OpenInterfaceModel_Profile:OpenInterfaceModelClass xmi:id="{fn:generate-id()}_oic" base_Class="{@Identifier}"/>
	</xsl:template>
	<xsl:template match="onf:parameter" mode="profile">
		<OpenModel_Profile:OpenModelAttribute xmi:id="{fn:generate-id()}_omc" base_Class="{@Identifier}"/>
		<OpenInterfaceModel_Profile:OpenInterfaceModelAttribute xmi:id="{fn:generate-id()}_oic" base_Class="{@Identifier}"/>
	</xsl:template>
	<xsl:template match="onf:groups" mode="profile">
		<xsl:apply-templates select="onf:group" mode="profile"/>
	</xsl:template>
	<xsl:template match="onf:parameters" mode="profile">
		<xsl:apply-templates select="onf:parameter" mode="profile"/>
	</xsl:template>
	<xsl:template match="onf:parameter">
		<ownedAttribute xmi:type="uml:Property" xmi:id="{@Identifier}" name="{@Name}" visibility="private" isReadOnly="{onf:isReadOnly(@AccessControl)}">
			<ownedComment xmi:type="uml:Comment" xmi:id="{@Identifier}_comment" annotatedElement="{@Identifier}">
				<body>
					<xsl:value-of select="@Description"/>
				</body>
			</ownedComment>
			<type xmi:type="uml:PrimitiveType" href="pathmap://UML_LIBRARIES/UMLPrimitiveTypes.library.uml#String"/>
			<defaultValue xmi:type="uml:StringExpression" xmi:id="{@Identifier}_default" symbol="{@Default}"/>
		</ownedAttribute>
	</xsl:template>
	<xsl:template match="onf:group">
		<packagedElement xmi:type="uml:Class" xmi:id="{@Identifier}" name="{@Name}">
			<ownedComment xmi:type="uml:Comment" xmi:id="{@Identifier}_comment" annotatedElement="{@Identifier}">
				<body>
					<xsl:value-of select="@Description"/>
				</body>
			</ownedComment>
			<xsl:apply-templates select="key('parameterRefByGroup', @Name)"/>
		</packagedElement>
	</xsl:template>
	<xsl:template match="onf:groups">
		<xsl:apply-templates select="onf:group"/>
	</xsl:template>
	<xsl:template match="onf:properties">
		<uml:Model xmi:id="{fn:generate-id()}" name="{@name}">
			<packageImport xmi:type="uml:PackageImport" xmi:id="{fn:generate-id()}pi">
				<importedPackage xmi:type="uml:Model" href="pathmap://UML_LIBRARIES/UMLPrimitiveTypes.library.uml#_0"/>
			</packageImport>
			<!-- <xsl:apply-templates select="yin:description"/> -->
			<packagedElement xmi:type="uml:Package" xmi:id="{fn:generate-id()}_typedefinitions" name="TypeDefinitions">
				<!-- <xsl:apply-templates select="//yin:container | //yin:list"/> -->
			</packagedElement>
			<packagedElement xmi:type="uml:Package" xmi:id="{fn:generate-id()}_cbjectclasses" name="ObjectClasses">
				<xsl:apply-templates select="onf:groups"/>
			</packagedElement>
			<packagedElement xmi:type="uml:Package" xmi:id="{fn:generate-id()}_notifications" name="Notifications"/>
			<packagedElement xmi:type="uml:Package" xmi:id="{fn:generate-id()}_diagrams" name="Diagrams"/>
			<packagedElement xmi:type="uml:Package" xmi:id="{fn:generate-id()}_associations" name="Associations"/>
			<profileApplication xmi:type="uml:ProfileApplication" xmi:id="{fn:generate-id()}pa1">
				<eAnnotations xmi:type="ecore:EAnnotation" xmi:id="_mfas8I20Eeid5cthly3JOg" source="PapyrusVersion">
					<details xmi:type="ecore:EStringToStringMapEntry" xmi:id="_mfas8Y20Eeid5cthly3JOg" key="Version" value="0.0.9"/>
					<details xmi:type="ecore:EStringToStringMapEntry" xmi:id="_mfas8o20Eeid5cthly3JOg" key="Comment" value="BITS encoding and bitsDefinition property added."/>
					<details xmi:type="ecore:EStringToStringMapEntry" xmi:id="_mfas8420Eeid5cthly3JOg" key="Copyright" value=""/>
					<details xmi:type="ecore:EStringToStringMapEntry" xmi:id="_mfas9I20Eeid5cthly3JOg" key="Date" value="2018-04-13"/>
					<details xmi:type="ecore:EStringToStringMapEntry" xmi:id="_mfas9Y20Eeid5cthly3JOg" key="Author" value="IISOMI"/>
				</eAnnotations>
				<eAnnotations xmi:type="ecore:EAnnotation" xmi:id="d1e1pa1ea2" source="http://www.eclipse.org/uml2/2.0.0/UML">
					<references xmi:type="ecore:EPackage" href="UmlProfiles/OpenInterfaceModelProfile/OpenInterfaceModel_Profile.profile.uml#_3NPRMD78EeiIisB6uOvKFA"/>
				</eAnnotations>
				<appliedProfile xmi:type="uml:Profile" href="UmlProfiles/OpenInterfaceModelProfile/OpenInterfaceModel_Profile.profile.uml#_UbM6ILbyEeaufdfMFhfy_A"/>
			</profileApplication>
			<profileApplication xmi:type="uml:ProfileApplication" xmi:id="{fn:generate-id()}pa2">
				<eAnnotations xmi:type="ecore:EAnnotation" xmi:id="_mfbUAY20Eeid5cthly3JOg" source="PapyrusVersion">
					<details xmi:type="ecore:EStringToStringMapEntry" xmi:id="_mfbUAo20Eeid5cthly3JOg" key="Version" value="0.2.14"/>
					<details xmi:type="ecore:EStringToStringMapEntry" xmi:id="_mfbUA420Eeid5cthly3JOg" key="Comment" value="New stereotype OpenModelStatement added. It contains the generic information of the model and extends the Metaclass &quot;Model&quot;."/>
					<details xmi:type="ecore:EStringToStringMapEntry" xmi:id="_mfbUBI20Eeid5cthly3JOg" key="Copyright" value=""/>
					<details xmi:type="ecore:EStringToStringMapEntry" xmi:id="_mfbUBY20Eeid5cthly3JOg" key="Date" value="2018-04-13"/>
					<details xmi:type="ecore:EStringToStringMapEntry" xmi:id="_mfbUBo20Eeid5cthly3JOg" key="Author" value="IISOMI"/>
				</eAnnotations>
				<eAnnotations xmi:type="ecore:EAnnotation" xmi:id="d1e1pa2ea2" source="http://www.eclipse.org/uml2/2.0.0/UML">
					<references xmi:type="ecore:EPackage" href="UmlProfiles/OpenModelProfile/OpenModel_Profile.profile.uml#_S32LgD8HEeiIisB6uOvKFA"/>
				</eAnnotations>
				<appliedProfile xmi:type="uml:Profile" href="UmlProfiles/OpenModelProfile/OpenModel_Profile.profile.uml#_m1xqsHBgEd6FKu9XX1078A"/>
			</profileApplication>
			<profileApplication xmi:type="uml:ProfileApplication" xmi:id="{fn:generate-id()}pa3">
				<eAnnotations xmi:type="ecore:EAnnotation" xmi:id="{fn:generate-id()}pa3ea1" source="PapyrusVersion">
					<details xmi:type="ecore:EStringToStringMapEntry" xmi:id="{fn:generate-id()}pa3ea1d1" key="Version" value="0.0.4"/>
					<details xmi:type="ecore:EStringToStringMapEntry" xmi:id="{fn:generate-id()}pa3ea1d2" key="Comment" value="Metaclasses Property and Stereotype added via &lt;Element Import>."/>
					<details xmi:type="ecore:EStringToStringMapEntry" xmi:id="{fn:generate-id()}pa3ea1d3" key="Copyright" value=""/>
					<details xmi:type="ecore:EStringToStringMapEntry" xmi:id="{fn:generate-id()}pa3ea1d4" key="Date" value="2017-08-08"/>
					<details xmi:type="ecore:EStringToStringMapEntry" xmi:id="{fn:generate-id()}pa3ea1d5" key="Author" value=""/>
				</eAnnotations>
				<eAnnotations xmi:type="ecore:EAnnotation" xmi:id="{fn:generate-id()}pa3ea2" source="http://www.eclipse.org/uml2/2.0.0/UML">
					<references xmi:type="ecore:EPackage" href="UmlProfiles/ProfileLifecycleProfile/ProfileLifecycle_Profile.profile.uml#_AL3HsHweEee8oZaf2rRQlg"/>
				</eAnnotations>
				<appliedProfile xmi:type="uml:Profile" href="UmlProfiles/ProfileLifecycleProfile/ProfileLifecycle_Profile.profile.uml#_CBpGoEdZEearpawF38eisA"/>
			</profileApplication>
		</uml:Model>
		<xsl:apply-templates select="onf:groups" mode="profile"/>
		<xsl:apply-templates select="onf:parameters" mode="profile"/>
	</xsl:template>
	<!-- functions -->
	<xsl:function name="onf:isReadOnly">
		<xsl:param name="in"/>
		<xsl:choose>
			<xsl:when test="$in = 'read-write' ">false</xsl:when>
			<xsl:otherwise>true</xsl:otherwise>
		</xsl:choose>
	</xsl:function>
</xsl:stylesheet>
