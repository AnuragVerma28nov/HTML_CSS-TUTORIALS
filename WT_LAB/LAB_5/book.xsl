<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

  <xsl:output method="html" indent="yes"/>

  <!-- Root template -->
  <xsl:template match="/">
    <html>
      <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
        <title>Library</title>
        <!-- link to the external CSS file -->
        <link rel="stylesheet" type="text/css" href="style.css"/>
      </head>
      <body>
        <h1>Library Catalog</h1>
        <div class="library">
          <xsl:apply-templates select="library/book"/>
        </div>
      </body>
    </html>
  </xsl:template>

  <!-- Template for each book -->
  <xsl:template match="book">
    <div class="book">
      <h2>
        <xsl:value-of select="title"/>
      </h2>
      <div class="meta">
        <span class="author">
          <xsl:value-of select="concat(author/firstname, ' ', author/lastname)"/>
        </span>
        <span class="publisher"> — <xsl:value-of select="publisher"/></span>
        <span class="year"> (<xsl:value-of select="year"/>)</span>
      </div>
      <div class="isbn">ISBN: <xsl:value-of select="@isbn"/></div>
      <div class="category">Category: <xsl:value-of select="@category"/></div>
      <div class="price">Price: $<xsl:value-of select="price"/></div>
      <xsl:if test="description">
        <p class="description"><xsl:value-of select="description"/></p>
      </xsl:if>
    </div>
  </xsl:template>

</xsl:stylesheet>



