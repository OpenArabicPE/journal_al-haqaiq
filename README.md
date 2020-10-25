---
title: "Readme: Digial Haqāʾiq"
author: Till Grallert
date: 2019-05-17
---

# An open, collaborative, and scholarly digital edition of ʿAbd al-Qādir al-Iskandarānī's monthly journal *al-Ḥaqāʾiq* (Damascus, 1910--1913)

[![GitHub release](https://img.shields.io/github/release/openarabicpe/journal_al-haqaiq.svg)](https://github.com/openarabicpe/journal_al-haqaiq/releases)
[![DOI](https://zenodo.org/badge/52619834.svg)](https://zenodo.org/badge/latestdoi/52619834)

This digital edition of ʿAbd al-Qādir al-Iskandarānī's monthly journal *al-Ḥaqāʾiq* (Damascus, 1910--1913) is part of and follows the principles of [Open Arabic Periodical Editions (OpenArabicPE)](https://openarabicpe.github.io) that were originally developped in the context of [Digital Muqtabas](https://github.com/tillgrallert/digital-muqtabas).

If you just want to browse the edition in a more human-readable view, start [here](https://openarabicpe.github.io/journal_al-haqaiq/xml/oclc_644997575-i_1.TEIP5.xml) and be reminded that facsimiles have not yet been added beyond the first volume and that, due to HathiTrust's scanning habits, page breaks might not yet link to the correct facsimile. All bibliographic metadata is available as part of [OpenArabicPE's public Zotero group](https://www.zotero.org/groups/904125/openarabicpe/items/collectionKey/JXZGTSWZ).

**UPDATE 2016-05-23**: apparently HathiTrust decided to remove the images from the public domain. I have inquired with them about the reasons for this removal but have not yet received a reply.

**UPDATE 2018-04-27**: we scanned all three volumes of al-Ḥaqāʾiq available at the library of the Orient-Institut Beirut and we are currently negotiating agreements with other institutions to host and archive the digital imagery. We plan for facsimiles to be online by the end of the year.

# 1. Scope and deliverables of the project

The purpose and scope of the project is to provide an open, collaborative, referencable, and scholarly digital edition of ʿAbd al-Qādir al-Iskandarānī's journal *al-Ḥaqāʾiq*, which includes the full text, semantic mark-up, bibliographic metadata, and digital imagery. All files but the digital facsimiles are hosted on [GitHub](https://www.github.com).

All deliverables and milestones will be covered in more detail in the following sections of this `readme.md`.

## 1.1 Deliverables

- Current deliverables:
    - Full text of 34 issues with semantic mark-up as TEI P5 XML with its [own schema](https://github.com/OpenArabicPE/OpenArabicPE_ODD). TEI files can be found in the folder `xml/`
    - The text of digital edition links to open-access digital facsimiles if available (see below).
    - [A webview](https://github.com/tillgrallert/tei-boilerplate-arabic-editions), based on [TEI Boilerplate](http://dcl.slis.indiana.edu/teibp/), shows digital text and images side by side. It provides an automatically generated table of content and links to the bibliographic metadata of every article. Click [here](https://openarabicpe.github.io/journal_al-haqaiq/xml/oclc_644997575-i_1.TEIP5.xml) to start reading *al-Ḥaqāʾiq*.
    - Bibliographic metadata for every article in *al-Ḥaqāʾiq* is provided as individual BibTeX and MODS files in the folder `metadata/`. The metadata includes a URL pointing to the webview of this item and the webview includes a link to the metadata files for every article.
        + To ease browsing the journal, we have set up the public Zotero group [OpenArabicPE/journal_al-haqaiq](https://www.zotero.org/groups/904125/openarabicpe/items/collectionKey/JXZGTSWZ). This group is updated by means of the MODS XML files.
- Planned deliverables
    + Scans of issues not currently available in open-access repositories, which we hold at [Orient-Institut Beirut](http://www.orient-institut.org).

## 1.2 Timeline / scheduled releases

[![GitHub release](https://img.shields.io/github/release/openarabicpe/journal_al-haqaiq.svg)](https://github.com/openarabicpe/journal_al-haqaiq/releases)

There is no proper release schedule yet but I conceive of version 1.0 as the first complete edition. Progress is tracked using a public [Trello board](https://trello.com/b/8LjguBCl/digital-ḥaqāʾiq).

- version 0.1 shall be the first "official" release. It is scheduled for April 2018 and will include
    1. TEI files of all at least one volume of *al-Ḥaqāʾiq* (i.e. 12 issues / files) with structural mark-up of mastheads, sections, articles, and with page breaks linked to the facsimiles;
    2. MODS / BibTeX files for all issues, sections, and articles;
    3. XSLT, JS, and CSS for a webview.
- versions 0.1.1 - 0.1.x: each completed issue will warant a minor release.
- versions 0.1 - 0.x: each completed volume of 11 to 12 issues / TEI files will warant an incremental release.
- version 1.0 shall include
    1. TEI files of all 35 issues of *al-Ḥaqāʾiq* with structural mark-up of mastheads, sections, articles, and with page breaks linked to the facsimiles;
    2. all the components of version 0.1

# 2. The journal *al-Ḥaqāʾiq*

ʿAbd al-Qādir al-Iskandarānī began publishing the monthly journal *al-Ḥaqāʾiq* in Damascus in [August 1910](https://openarabicpe.github.io/journal_al-haqaiq/xml/oclc_644997575-i_1.TEIP5.xml). Until the end of publication in late 1913 or early 1914, he had completed three volumes. The final issue of volume 3 contains the reference "will be continued ..." under several articles (e.g. [here](https://openarabicpe.github.io/journal_al-haqaiq/xml/oclc_644997575-i_35.TEIP5.xml#div_9.d1e1511) and [here](https://openarabicpe.github.io/journal_al-haqaiq/xml/oclc_644997575-i_35.TEIP5.xml#div_10.d1e1618)). According to some library catalogues---while stating that they hold no copy beyond the end of volume three---*al-Ḥaqāʾiq* published the first issue of volume four. The annual local subscription cost was 1 *mecidiye* and, according to foreign observer, the issue was sold at a price of Ps 23.[^1]

[^1]: Thomsen, P. "Verzeichnis der Arabischen Zeitungen und Zeitschriften Palästinas." *Zeitschrift des Deutschen Palästina-Vereins (1878-1945)* 35, no. 4 (1912):214

## frequency of publication

*al-Ḥaqāʾiq* was a monthly journal and followed the Islamic calendar. Each issue carried information on month and year in its masthead but no specific publication date. Few articles mention datable events but occasionally one is able to track referenced newspaper issues.

[Issue 2/10 of *Jumādā al-Ūlā 1330*](https://openarabicpe.github.io/journal_al-haqaiq/xml/oclc_644997575-i_22.TEIP5.xml) contains two articles reacting to the conflagration of *Sūq al-Ḥamīdiyya* in Damascus on 27 April 1912 (10 Jum I 1330 aH).

There is an, as of yet, unexplained six-month gap in publication between June and December 1912.


# 3. Input:
## 3.1 Digital imagery

Digital files are available from [HathiTrust (vol. 1)](http://hdl.handle.net/2027/njp.32101036074001) and it seems that the Bayerische Staatsbibliothek in Munich sells [PDFs of vols. 1-3](https://opacplus.bsb-muenchen.de/metaopac/search.do?methodToCall=volumeSearch&dbIdentifier=100&forward=success&catKey=8827480&isPeriodical=N)

### 3.1.1 [HathiTrust](https://www.hathitrust.org/)

- links to volumes
    + [Vol. 1](http://hdl.handle.net/2027/njp.32101036074001): Princeton
- access
    + The journal is in the public domain in the US and can be freely accessed and downloaded
    + Outside the US, access is restricted.
    + Formal [licence](https://www.hathitrust.org/access_use#pd-us-google):

> Public Domain or Public Domain in the United States, Google-digitized: In addition to the terms for works that are in the Public Domain or in the Public Domain in the United States above, the following statement applies: The digital images and OCR of this work were produced by Google, Inc. (indicated by a watermark on each page in the PageTurner). Google requests that the images and OCR not be re-hosted, redistributed or used commercially. The images are provided for educational, scholarly, non-commercial purposes.
>
> Note: There are no restrictions on use of text transcribed from the images, or paraphrased or translated using the images.

## 3.2 Full text

Somebody took the pains to create fully searchable text files and uploaded everything to [al-Maktaba al-Shamela](http://shamela.ws/index.php/book/29676).

### 3.2.1 [al-Maktaba al-Shāmila](http://www.shamela.ws)

- Extent: According to the main [entry](http://shamela.ws/index.php/book/29676), *shamela* has all 35 issues.
- Transcribers, editors: Apparently, they have been typed and copy-edited by unnamed humans.
- Features edition: paragraphs, page breaks, headlines.
- Features interface:
    + all issues can be browsed for headlines and searched
    + all pages can be individually adressed in the browser: [http://shamela.ws/browse.php/book-29676#page-113](http://shamela.ws/browse.php/book-29676#page-113)

# 4. Deliverable: TEI edition

The main challenge is to combine the full text and the images in a TEI edition. As *al-maktaba al-shāmila* did not reproduce page breaks true to the print edition, every single one of the more than 1500 page breaks must be added manually and linked to the digital image of the page.

The TEI files can be found in the folder [`xml/`](xml/).

## 4.1 General design

The edition should be conceived of as a corpus of tei files that are grouped by means of xinclude. This way, volumes can be constructed as single TEI files containing a `<group/>` of TEI files and a volume specific `<front/>` and `<back/>`

Detailled description and notes on the mark-up can be found in a separate repository for the TEI schema: [OpenArabicPE_ODD](https://github.com/OpenArabicPE/OpenArabicPE_ODD).

# 5. Deliverable: A [Web display](https://openarabicpe.github.io/journal_al-haqaiq/xml/oclc_644997575-i_1.TEIP5.xml)adapting TEI Boilerplate

To allow a quick review of the mark-up and read the journal's content, I decided to customise [TEI Boilerplate](http://dcl.slis.indiana.edu/teibp/) for a first display of the TEI files in the browser without need for pre-processed HTML and to host this heavily customised boilerplate view as part of another [GitHub repository](https://www.github.com/tillgrallert/tei-boilerplate-arabic-editions) that can be used across various projects. For a first impression see [here](https://openarabicpe.github.io/journal_al-haqaiq/xml/oclc_644997575-i_1.TEIP5.xml). It is important to note that at the moment there is no front-end beyond the GitHub repository that allows for searching and browsing across files.

# 6. Deliverable: Bibliographic metadata / index

Bibliographic metadata for every article in *al-Ḥaqāʾiq* is provided in two formats: BibTeX and MODS in the sub-folder [`metadata/`](metadata/). The metadata includes a URL pointing to the webview of this item and the webview, in turn, includes links to the metadata files for every article.

## 6.1 BibTeX

<!-- Added reference to principles of minimal computing etc.  -->
[BibTeX](http://www.bibtex.org/Format/) is a plain text format which has been around for more than 30 years and which is widely supported by reference managers. Thus it seems to be a safe bet to preserve and exchange minimal bibliographic data. OpenArbicPE maintains a number of [XSLT stylesheets to automatically generate BibTeX files](https://github.com/OpenArabicPE/convert_tei-to-bibtex) from the TEI source:

1. `Tei2BibTex-articles.xsl`: generates one BibTeX file for each article and section of a periodical issue.
2. `Tei2BibTex-issues.xsl`: generates one BibTeX file per periodical issue, comprising entries for every article and section.


There are, however, a number of problems with the format:

- The format and thus the tools implementing it aren't really strict.
- The [format description](http://www.bibtex.org/Format/) is fairly short and since development of BibTeX stalled between 1988 and 2010, it is most definitely not the most current or detailed when it comes to bibliographic metadata descriptions.[^13]
- Only basic information can be included:
    + information on publication dates is commonly limited to year and month only
    + periodicals are not perceived as having different editions or print-runs
    + non-Gregorian calendars cannot be added.

## 6.2 MODS (Metadata Object Description Schema)

The [MODS standard](http://www.loc.gov/standards/mods/) is expressed in XML and maintained by the [Network Development and MARC Standards Office](http://www.loc.gov/marc/ndmso.html) of the Library of Congress with input from users. Compared to BibTeX MODS has he advantage of being properly standardised, human and machine readable, and much better suited to include all the needed bibliographic information.

OpenArabicPE maintains a number of [XSLT stylesheets to automatically generate MODS XML files](https://github.com/OpenArabicPE/convert_tei-to-mods) from the TEI source:

1. `Tei2Mods-articles.xsl`: generates one MODS file for each article and section of a periodical issue.
2. `Tei2Mods-issues.xsl`: generates one MODS file per periodical issue, comprising entries for every article and section.

MODS also serves as the intermediary format for the free [bibutils suite](https://sourceforge.net/projects/bibutils/) of conversions between bibliographic metadata formats (including BibTeX) which is under constant development and released under a GNU/GPL (General Public License). `Tei2Mods-issues.xsl` and `bibutils` provide a means to automatically generate a large number of bibliographic formats to suit the reference manager one is working with; e.g.:

- to generate EndNote (refer-format) one only needs the following terminal command: `$ xml2end MODS.xml > output_file.end`
- to generate BibTex: `$ xml2bib MODS.xml > output_file.bib`


## 6.3 Index by means of a Zotero group

As the webview or reading edition is implemented on the issue level and as we have currently no plans to implement and host a database on the backend, OpenArabicPE needed a way to navigate and browse all articles, authors etc. To this end, we have set up the public [Zotero group OpenArabicPE](ttps://www.zotero.org/groups/openarabicpe/items/). It can be updated by means of the MODS or BibTeX files. Updating from MODS is the preferred method since it is the more expressive format.

[Zotero groups](https://www.zotero.org/groups) are great way to share bibliographic metadata. Hosted by the Roy Rosenzweig Center for History and Media, they allow for public access to structured bibliographic metadata through a web interface. Of course they also integrate with the free and open-source reference manager [Zotero](https://www.zotero.org). All one needs is a free Zotero account and either the Zotero plug-in for the Firefox and Chrome browsers or the Zotero standalone version for Mac OSX and Linux. One can then join the group and sync all data to the local installation of Zotero, which means that, similar to the webview and all other components of this edition, bibliographic metadata can be browsed and searched through a graphical user interface without a continuous internet connection.



[^13]:[Wikipedia](https://en.wikipedia.org/wiki/BibTeX) has a better description than the official website.