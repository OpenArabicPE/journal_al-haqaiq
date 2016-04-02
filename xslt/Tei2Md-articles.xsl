<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:tss="http://www.thirdstreetsoftware.com/SenteXML-1.0"
    xmlns:tei="http://www.tei-c.org/ns/1.0"
    xmlns:xs="http://www.w3.org/2001/XMLSchema"
    xmlns:xd="http://www.pnp-software.com/XSLTdoc"
    xpath-default-namespace="http://www.tei-c.org/ns/1.0"
    version="2.0">
    <xsl:output method="text" encoding="UTF-8" indent="yes" omit-xml-declaration="yes" name="text"/>
    <xsl:strip-space elements="*"/>

    <!-- this stylesheet generates a plain text file for each <div> in the body of the TEI source file following the markdown syntax -->
   
    
  
    
    <xd:doc scope="stylesheet">
        <xd:desc>
            <xd:p>This stylesheet produces a simple markdown file from TEI XML input</xd:p>
        </xd:desc>
    </xd:doc>
    <xsl:output encoding="UTF-8" indent="no" method="text" name="txt" media-type="text/plain" omit-xml-declaration="yes"/>
    <xsl:strip-space elements="*"/>

    <xsl:variable name="vFileId" select="tei:TEI/@xml:id"/>
    <xsl:variable name="vgFileUrl"
        select="concat('https://rawgit.com/tillgrallert/digital-haqaiq/master/xml/', tokenize(base-uri(), '/')[last()])"/>
    <xsl:variable name="vN" select="'&#x0A;'"/>
    <xsl:param name="pLang" select="'ar'"/>

    <xsl:template match="/">
            <xsl:apply-templates select="descendant::tei:text/tei:body/descendant::tei:div"/>
    </xsl:template>

    
    <xsl:template
        match="tei:div[@type = 'section'][not(ancestor::tei:div[@type = 'article'])] | tei:div[@type = 'article'][not(ancestor::tei:div[@type = 'bill'])] | tei:div[@type = 'bill']">
        <xsl:variable name="vLang" select="$pLang"/>
        <!-- variables identifying the digital surrogate -->
        <xsl:variable name="vTitleStmt" select="ancestor::tei:TEI/tei:teiHeader/tei:fileDesc/tei:titleStmt"/>
        <!-- Need information on edition, date of edition, editors, transcribers etc.  -->
        <!-- variables identifying the original source -->
        <xsl:variable name="vBiblStructSource"
            select="ancestor::tei:TEI/tei:teiHeader/tei:fileDesc/tei:sourceDesc/tei:biblStruct"/>
        <xsl:variable name="vPublDate"
            select="$vBiblStructSource/tei:monogr/tei:imprint/tei:date[1]"/>
        <xsl:variable name="vPublicationType" select="'Newspaper article'"/>
        <xsl:variable name="vPublicationTitle"
            select="$vBiblStructSource/tei:monogr/tei:title[@level = 'j'][@xml:lang = $vLang][not(@type = 'sub')]"/>
        <xsl:variable name="vArticleTitle">
            <xsl:if test="@type = 'article' and ancestor::tei:div[@type = 'section']">
                <xsl:apply-templates select="ancestor::tei:div[@type = 'section']/tei:head"
                    mode="mPlainText"/>
                <xsl:text>: </xsl:text>
            </xsl:if>
            <xsl:apply-templates select="./tei:head" mode="mPlainText"/>
        </xsl:variable>
        <xsl:variable name="vUrl" select="concat($vgFileUrl, '#', @xml:id)"/>
        <xsl:variable name="vIssue" select="$vBiblStructSource//tei:biblScope[@unit = 'issue']/@n"/>
        <xsl:variable name="vVolume" select="$vBiblStructSource//tei:biblScope[@unit = 'volume']/@n"/>
        <xsl:variable name="vPages">
            <xsl:value-of select="preceding::tei:pb[@ed = 'print'][1]/@n"/>
            <xsl:if
                test="preceding::tei:pb[@ed = 'print'][1]/@n != descendant::tei:pb[@ed = 'print'][last()]/@n">
                <xsl:text>-</xsl:text>
                <xsl:value-of select="descendant::tei:pb[@ed = 'print'][last()]/@n"/>
            </xsl:if>
        </xsl:variable>
        <xsl:variable name="vPubPlace"
            select="$vBiblStructSource/tei:monogr/tei:imprint/tei:pubPlace/tei:placeName[@xml:lang = $vLang]"/>
        <xsl:variable name="vPublisher" select="$vBiblStructSource/tei:monogr/tei:imprint/tei:publisher/tei:orgName[@xml:lang = $vLang]"/>
        
        <xsl:result-document href="../md/{concat($vPublDate/@when,'-',$vFileId,'-',@xml:id)}.md" method="text">
            <!-- some metadata on the file itself: YAML -->
            <xsl:text>---</xsl:text><xsl:value-of select="$vN"/>
            <xsl:text>author: </xsl:text><xsl:value-of select=""/><xsl:value-of select="$vN"/>
            <xsl:text>date: </xsl:text><xsl:value-of select="$vPublDate/@when"/><xsl:value-of select="$vN"/>
            <xsl:text>---</xsl:text><xsl:value-of select="$vN"/><xsl:value-of select="$vN"/>
            <xsl:text># </xsl:text><xsl:value-of select="child::tei:head"/><xsl:value-of select="$vN"/>
            <xsl:value-of select="$vN"/>
            <xsl:value-of select="normalize-space(.)"/>
        </xsl:result-document>
    </xsl:template>

    <!-- prevent output from sections of articles -->
    <xsl:template match="tei:div[@type = 'section'][ancestor::tei:div[@type = 'article']]"/>

    <xsl:template match="tei:lb | tei:cb | tei:pb" mode="mPlainText">
        <xsl:text> </xsl:text>
    </xsl:template>

    <!-- prevent notes in div/head from producing output -->
    <xsl:template match="tei:head/tei:note" mode="mPlainText"/>


</xsl:stylesheet>
