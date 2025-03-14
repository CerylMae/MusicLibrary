<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="/">
        <html>
            <head>
                <title>Music Library</title>
                <style>
                    body { font-family: Arial, sans-serif; background-color: #f4f4f4; }
                    h2 { color: #333; }
                    .song { background: white; padding: 10px; margin: 10px 0; border-radius: 5px; box-shadow: 0 0 5px #aaa; }
                    .album-list { margin-left: 20px; }
                </style>
            </head>
            <body>
                <h2>Music Library</h2>
                <xsl:apply-templates select="music/song"/>
            </body>
        </html>
    </xsl:template>

    <xsl:template match="song">
        <div class="song">
            <h3><xsl:value-of select="songTitle"/> - <xsl:value-of select="artist"/></h3>
            <p><strong>Debut Year:</strong> <xsl:value-of select="debutYear"/></p>
            <p><strong>Albums:</strong></p>
            <ul class="album-list">
                <xsl:for-each select="albums/album">
                    <li><xsl:value-of select="."/></li>
                </xsl:for-each>
            </ul>
        </div>
    </xsl:template>
</xsl:stylesheet>
