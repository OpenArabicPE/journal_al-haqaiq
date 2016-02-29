---
title: "Readme: Digial Haqāʾiq"
author: Till Grallert
date: 2016-02-26
---

This project is inspired by and follows the principles of [Digital Muqtabas](https://github.com/tillgrallert/digital-muqtabas).

If you just want to browse the edition in a more human-readable view, start [here](https://rawgit.com/tillgrallert/digital-haqaiq/master/xml/oclc_644997575-i_1.TEIP5.xml).

# Scope and deliverables of the project

The purpose and scope of the project is to provide an open, collaborative, referencable, and scholarly digital edition of Muḥammad Kurd ʿAlī's journal *al-Muqtabas*, which includes the full text, semantic mark-up, bibliographic metadata, and digital imagery. All files but the digital facsimiles are hosted on [GitHub](https://www.github.com).

- Current deliverables:
    - Full text of 34 issues with semantic mark-up as TEI P5 XML with its own schema.
    - The text of digital edition links to open-access digital facsimiles if available (see below).
    - [A rudimentary webview](https://github.com/tillgrallert/tei-boilerplate-arabic-editions), based on [TEI Boilerplate](http://dcl.slis.indiana.edu/teibp/), shows digital text and images side by side. It provides an automatically generated table of content and links to the bibliographic metadata of every article.
    - Bibliographic metadata for every article in *al-Ḥaqāʾiq* is provided as individual BibTeX file in the sub-folder `metadata`. The metadata includes a URL pointing to the webview of this item.

# The journal *al-Ḥaqāʾiq*

ʿAbd al-Qādir al-Iskandarānī published three volumes of the monthly journal *al-Ḥaqāʾiq* in Damascus between [7 August 1910](https://rawgit.com/tillgrallert/digital-haqaiq/master/xml/oclc_644997575-i_1.TEIP5.xml) and [1 November 1913](https://rawgit.com/tillgrallert/digital-haqaiq/master/xml/oclc_644997575-i_35.TEIP5.xml). The annual local subscription cost was 1 *mecidiye* and, according to foreign observer, the issue was sold at a price of Ps 23.[^1]

[^1]: Thomsen, P. "Verzeichnis der Arabischen Zeitungen und Zeitschriften Palästinas." *Zeitschrift des Deutschen Palästina-Vereins (1878-1945)* 35, no. 4 (1912):214

## issues

- vol. 1
    1. 1-32
        + the structure of the transcription is pretty bad. Some pages were not transcribed, sometimes the head of pages was transcribed as an article head etc.
    2. 33-72
    3. 73-112
    4. 113-152
    5. 153-194
    6. 195-236
    7. 235-274, missing from the transcription
    8. 275-316
    9. 317-356
    10. 357-396
    11. 397-438
    12. 439-480

## sections

- al-ʿulamāʾ
- al-akhlāq
- al-lugha al-ʿarabiyya
- al-intiqād

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

The main challenge is to combine the full text and the images in a TEI edition. As *al-maktabat al-shāmila* did not reproduce page breaks true to the print edition, every single one of the more than 1500 page breaks must be added manually and linked to the digital image of the page.

The TEI files can be found in the folder [xml](xml/).

## General design

The edition should be conceived of as a corpus of tei files that are grouped by means of xinclude. This way, volumes can be constructed as single TEI files containing a `<group/>` of TEI files and a volume specific `<front/>` and `<back/>`

# [Web display](https://rawgit.com/tillgrallert/digital-haqaiq/master/xml/oclc_644997575-i_1.TEIP5.xml): TEI Boilerplate

To allow a quick review of the mark-up and read the journal's content, I decided to customise [TEI Boilerplate](http://dcl.slis.indiana.edu/teibp/) for a first display of the TEI files in the browser without need for pre-processed HTML and to host this heavily customised boilerplate view as part of another [GitHub repository](https://www.github.com/tillgrallert/tei-boilerplate-arabic-editions) that can be used across various projects. For a first impression see [here](https://rawgit.com/tillgrallert/digital-haqaiq/master/xml/oclc_644997575-i_1.TEIP5.xml). It is important to note that at the moment there is no front-end beyond the GitHub repository that allows for searching and browsing across files.

# To do

- the scan at HathiTrust contains duplicated pages etc. and thus, the links to the online facsimile must be corrected.