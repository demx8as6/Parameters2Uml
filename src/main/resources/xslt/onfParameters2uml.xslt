<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0" xmlns:onf="uri:onf:tooling:properties" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:fn="http://www.w3.org/2005/xpath-functions"

	xmlns:architecture="http://www.eclipse.org/papyrus/infra/core/architecture" 
	xmlns:ecore="http://www.eclipse.org/emf/2002/Ecore" 
	xmlns:math="http://exslt.org/math" 
	xmlns:uml="http://www.eclipse.org/uml2/5.0.0/UML" 
	xmlns:xmi="http://www.omg.org/spec/XMI/20131001" 
	xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" 
	xmlns:yang="urn:ietf:params:xml:ns:yang:ietf-yang-types" 
	xmlns:yin="urn:ietf:params:xml:ns:yang:yin:1" exclude-result-prefixes="onf xsl xs fn yang yin"

>
	<xsl:output method="xml" version="1.0" encoding="UTF-8" indent="yes"/>
	
	
	<xsl:template match="/">
		<xmi:XMI xmi:version="20131001">
			<xsl:apply-templates select="*"/>
		</xmi:XMI>
	</xsl:template>


	<xsl:template match="onf:properties">
		<uml:Model xmi:id="{fn:generate-id()}" name="{@name}">
			<packageImport xmi:type="uml:PackageImport" xmi:id="{fn:generate-id()}pi">
				<importedPackage xmi:type="uml:Model" href="pathmap://UML_LIBRARIES/UMLPrimitiveTypes.library.uml#_0"/>
			</packageImport>
			<!-- <xsl:apply-templates select="yin:description"/> -->
			<packagedElement xmi:type="uml:Package" xmi:id="{fn:generate-id()}oc" name="ObjectClasses">
				<!-- <xsl:apply-templates select="//yin:container | //yin:list"/> -->
			</packagedElement>
			<packagedElement xmi:type="uml:Package" xmi:id="{fn:generate-id()}_{@name}" name="Diagrams"/>
			<profileApplication xmi:type="uml:ProfileApplication" xmi:id="{fn:generate-id()}pa1">
				<eAnnotations xmi:type="ecore:EAnnotation" xmi:id="{fn:generate-id()}pa1ea1" source="PapyrusVersion">
					<details xmi:type="ecore:EStringToStringMapEntry" xmi:id="{fn:generate-id()}pa1ea1d1" key="Version" value="0.0.8"/>
					<details xmi:type="ecore:EStringToStringMapEntry" xmi:id="{fn:generate-id()}pa1ea1d2" key="Comment" value="ProfileLifecycle Profile v0.0.4 applied."/>
					<details xmi:type="ecore:EStringToStringMapEntry" xmi:id="{fn:generate-id()}pa1ea1d3" key="Copyright" value=""/>
					<details xmi:type="ecore:EStringToStringMapEntry" xmi:id="{fn:generate-id()}pa1ea1d4" key="Date" value="2017-08-16"/>
					<details xmi:type="ecore:EStringToStringMapEntry" xmi:id="{fn:generate-id()}pa1ea1d5" key="Author" value=""/>
				</eAnnotations>
				<eAnnotations xmi:type="ecore:EAnnotation" xmi:id="{fn:generate-id()}pa1ea2" source="http://www.eclipse.org/uml2/2.0.0/UML">
					<references xmi:type="ecore:EPackage" href="UmlProfiles/OpenInterfaceModelProfile/OpenInterfaceModel_Profile.profile.uml#_jdlJkIJYEee3epvelL_xvA"/>
				</eAnnotations>
				<appliedProfile xmi:type="uml:Profile" href="UmlProfiles/OpenInterfaceModelProfile/OpenInterfaceModel_Profile.profile.uml#_UbM6ILbyEeaufdfMFhfy_A"/>
			</profileApplication>
			<profileApplication xmi:type="uml:ProfileApplication" xmi:id="{fn:generate-id()}pa2">
				<eAnnotations xmi:type="ecore:EAnnotation" xmi:id="{fn:generate-id()}pa2ea1" source="PapyrusVersion">
					<details xmi:type="ecore:EStringToStringMapEntry" xmi:id="{fn:generate-id()}pa2ea1d1" key="Version" value="0.2.13"/>
					<details xmi:type="ecore:EStringToStringMapEntry" xmi:id="{fn:generate-id()}pa2ea1d2" key="Comment" value="ProfileLifecycle Profile v0.0.4 applied."/>
					<details xmi:type="ecore:EStringToStringMapEntry" xmi:id="{fn:generate-id()}pa2ea1d3" key="Copyright" value=""/>
					<details xmi:type="ecore:EStringToStringMapEntry" xmi:id="{fn:generate-id()}pa2ea1d4" key="Date" value="2017-08-16"/>
					<details xmi:type="ecore:EStringToStringMapEntry" xmi:id="{fn:generate-id()}pa2ea1d5" key="Author" value=""/>
				</eAnnotations>
				<eAnnotations xmi:type="ecore:EAnnotation" xmi:id="{fn:generate-id()}pa2ea2" source="http://www.eclipse.org/uml2/2.0.0/UML">
					<references xmi:type="ecore:EPackage" href="UmlProfiles/OpenModelProfile/OpenModel_Profile.profile.uml#_JpVIYIJYEee3epvelL_xvA"/>
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
	</xsl:template>


</xsl:stylesheet>
