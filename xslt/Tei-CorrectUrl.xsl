<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet 
    xmlns:html="http://www.w3.org/1999/xhtml" 
    xmlns:tei="http://www.tei-c.org/ns/1.0"
    xmlns:xs="http://www.w3.org/2001/XMLSchema" 
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xd="http://www.pnp-software.com/XSLTdoc"
    xmlns="http://www.tei-c.org/ns/1.0"
    xpath-default-namespace="http://www.tei-c.org/ns/1.0"
    exclude-result-prefixes="xs xd html"
    version="2.0">
    
    <xd:doc scope="stylesheet">
        <xd:desc>
            <xd:p>This stylesheet corrects the URLs and <att>xml:id</att> on <gi>TEI</gi> to account for issues missing from the Shamela transcription</xd:p>
        </xd:desc>
    </xd:doc>
    <xsl:output encoding="UTF-8" indent="yes" method="xml" name="xml" omit-xml-declaration="no" version="1.0"/>
    
    <xsl:variable name="vFileName">
        <xsl:analyze-string select="tei:TEI/@xml:id" regex="(oclc.+\-i_)(\d+)">
            <xsl:matching-substring>
                <xsl:value-of select="regex-group(1)"/>
                <xsl:value-of select="number( regex-group(2))+1"/>
            </xsl:matching-substring>
        </xsl:analyze-string>
    </xsl:variable>
    
    <!-- reproduce everything -->
    <xsl:template match="@* | node()">
        <xsl:copy>
            <xsl:apply-templates select="@* | node()"/>
        </xsl:copy>
    </xsl:template>
    
    <xsl:template match="/">
        <xsl:result-document href="new-name/{$vFileName}.TEIP5.xml">
            <xsl:copy>
                <xsl:apply-templates select="node()"/>
            </xsl:copy>
        </xsl:result-document>
    </xsl:template>

    
    <xsl:template match="tei:publicationStmt/tei:idno[@type='url']">
        <xsl:copy>
            <xsl:analyze-string select="." regex="(https.+\-i_)(\d+)">
                <xsl:matching-substring>
                    <xsl:value-of select="regex-group(1)"/>
                    <xsl:value-of select="number( regex-group(2))+1"/>
                </xsl:matching-substring>
            </xsl:analyze-string>
        </xsl:copy>
    </xsl:template>
    
    <xsl:template match="tei:TEI/@xml:id">
        <xsl:attribute name="xml:id" select="$vFileName"/>
    </xsl:template>
    
    <!-- document the changes -->
    <xsl:template match="tei:revisionDesc" priority="100">
        <xsl:copy>
            <xsl:element name="tei:change">
                <xsl:attribute name="when" select="format-date(current-date(),'[Y0001]-[M01]-[D01]')"/>
                <xsl:text>Corrected the file's URL and </xsl:text><att>xml:id</att><xsl:text> on </xsl:text><gi>TEI</gi><xsl:text> to account for issues missing from the Shamela transcription.</xsl:text>
            </xsl:element>
            <xsl:apply-templates select="@* | node()"/>
        </xsl:copy>
    </xsl:template>
    
</xsl:stylesheet>