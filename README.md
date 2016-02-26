---
title: "Readme: Digial Haqāʾiq"
author: Till Grallert
date: 2016-02-26
---

This project is inspired by and follows the principles of [Digital Muqtabas](https://github.com/tillgrallert/digital-muqtabas).

# Scope and deliverables of the project

The purpose and scope of the project is to provide an open, collaborative, referencable, and scholarly digital edition of Muḥammad Kurd ʿAlī's journal *al-Muqtabas*, which includes the full text, semantic mark-up, bibliographic metadata, and digital imagery. All files but the digital facsimiles are hosted on [GitHub](https://www.github.com).

- Current deliverables:
    - Full text of 34 issues with semantic mark-up as TEI P5 XML with its own schema.
    - The text of digital edition links to open-access digital facsimiles if available (see below).
    - [A rudimentary webview](https://github.com/tillgrallert/tei-boilerplate-arabic-editions), based on [TEI Boilerplate](http://dcl.slis.indiana.edu/teibp/), shows digital text and images side by side. It provides an automatically generated table of content and links to the bibliographic metadata of every article.
    - Bibliographic metadata for every article in *al-Ḥaqāʾiq* is provided as individual BibTeX file in the sub-folder `metadata`. The metadata includes a URL pointing to the webview of this item.

# The journal *al-Ḥaqāʾiq*

# Digital imagery

Digital files are available from [HathiTrust (vol. 1)](http://hdl.handle.net/2027/njp.32101036074001) and it seems that the Bayerische Staatsbibliothek in Munich sells [PDFs of vols. 1-3](https://opacplus.bsb-muenchen.de/metaopac/hitList.do?methodToCall=backToCompleteList&identifier=100_SOLR_SERVER_959229700)

## [HathiTrust](https://www.hathitrust.org/)

- links to volumes
    + [Vol. 1](http://hdl.handle.net/2027/njp.32101036074001)
- access
    + The journal is in the public domain in the US and can be freely accessed and downloaded
    + Outside the US, access is restricted.
    + Formal [licence](https://www.hathitrust.org/access_use#pd-us-google): 

> Public Domain or Public Domain in the United States, Google-digitized: In addition to the terms for works that are in the Public Domain or in the Public Domain in the United States above, the following statement applies: The digital images and OCR of this work were produced by Google, Inc. (indicated by a watermark on each page in the PageTurner). Google requests that the images and OCR not be re-hosted, redistributed or used commercially. The images are provided for educational, scholarly, non-commercial purposes.
> 
> Note: There are no restrictions on use of text transcribed from the images, or paraphrased or translated using the images.

# Full text

Somebody took the pains to create fully searchable text files and uploaded everything to [al-Maktaba al-Shamela](http://shamela.ws/index.php/book/29676).

## [al-Maktaba al-Shāmila](http://www.shamela.ws)

- Extent: According to the main [entry](http://shamela.ws/index.php/book/26523), *shamela* has all 96 issues. 
- Transcribers, editors: Apparently, they have been typed and copy-edited by unnamed humans. 
- Features edition: paragraphs, page breaks, headlines.
- Features interface:
    + all issues can be browsed for headlines and searched
    + all pages can be individually adressed in the browser: [http://shamela.ws/browse.php/book-29676#page-2290](http://shamela.ws/browse.php/book-29676#page-2290)

# TEI edition

The main challenge is to combine the full text and the images in a TEI edition. As *al-maktabat al-shāmila* did not reproduce page breaks true to the print edition, every single one of the more than 6000 page breaks must be added manually and linked to the digital image of the page.

## General design

The edition should be conceived of as a corpus of tei files that are grouped by means of xinclude. This way, volumes can be constructed as single TEI files containing a `<group/>` of TEI files and a volume specific `<front/>` and `<back/>`

# Web display: TEI Boilerplate

To allow a quick review of the mark-up and read the journal's content, I decided to customise [TEI Boilerplate](http://dcl.slis.indiana.edu/teibp/) for a first display of the TEI files in the browser without need for pre-processed HTML and to host this heavily customised boilerplate view as part of another [GitHub repository](https://www.github.com/tillgrallert/tei-boilerplate-arabic-editions) that can be used across various projects. For a first impression see [here](https://rawgit.com/tillgrallert/digital-muqtabas/master/xml/oclc_4770057679-i_60.TEIP5.xml). It is important to note that at the moment there is no front-end beyond the GitHub repository that allows for searching and browsing across files.