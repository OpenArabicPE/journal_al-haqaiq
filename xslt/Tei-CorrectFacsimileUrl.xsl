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
            <xd:p>This stylesheet generates a <tei:facsimile/> node with a pre-defined number of <tei:surface/> children. All parameters can be set through the group of variables at the beginning of the stylesheet.</xd:p>
            <xd:p>The variable $vEapIssueId must be changed for every issue of Muqtabas</xd:p>
        </xd:desc>
    </xd:doc>
    
    <xsl:output encoding="UTF-8" indent="yes" method="xml" name="xml" omit-xml-declaration="no" version="1.0"/>
    
    <!-- copy everything -->
    <xsl:template match="@* | node()">
        <xsl:copy>
            <xsl:apply-templates select="@* | node()"/>
        </xsl:copy>
    </xsl:template>
    <!-- volume in HathTrust collection -->
    <xsl:param name="vHathiTrustId" select="'njp.32101036074001'"/>
    <!-- URL to Hathi, this is always the same -->
    <xsl:variable name="vFileUrlHathi" select="concat('https://babel.hathitrust.org/cgi/imgsrv/image?id=',$vHathiTrustId,';seq=')"/>
        
    <xsl:template match="tei:graphic[starts-with(@url,'http://babel.hathitrust')]">
        <xsl:copy>
            <xsl:apply-templates select="@*[not(name()='url')]"/>
            <xsl:variable name="vHathiSeq" select="number(substring-after(@url,';seq='))+8"/>
            <xsl:attribute name="url" select="concat($vFileUrlHathi,$vHathiSeq)"/>
        </xsl:copy>
    </xsl:template>
    
    <!-- document the changes -->
    <xsl:template match="tei:revisionDesc">
        <xsl:copy>
            <xsl:element name="tei:change">
                <xsl:attribute name="when" select="format-date(current-date(),'[Y0001]-[M01]-[D01]')"/>
                <xsl:attribute name="who" select="'#pers_TG'"/>
                <xsl:text>Corrected the URL for digital images at HathiTrust.</xsl:text>
                <!--<xsl:text>Created </xsl:text><tei:gi>facsimile</tei:gi><xsl:text> for </xsl:text>
                <xsl:value-of select="$vNumberPages"/>
                <xsl:text> pages with references to a local copy of .tif and .jpeg as well as to the online resource for each page.</xsl:text>-->
            </xsl:element>
            <xsl:apply-templates select="@* | node()"/>
        </xsl:copy>
    </xsl:template>
</xsl:stylesheet>