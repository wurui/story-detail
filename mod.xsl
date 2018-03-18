<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:oxm="https://www.openxsl.com">
    
    <xsl:template match="/root" name="wurui.story-detail">
        <!-- className 'J_OXMod' required  -->
        <div class="J_OXMod oxmod-story-detail" ox-mod="story-detail">
        	<xsl:variable name="detail" select="data/storylist/i[1]"/>
        	<h1>
                <xsl:value-of select="$detail/title"/>
            </h1>

    		<p class="time">
            	<xsl:value-of select="$detail/type"/>
            	&#160;<xsl:value-of select="$detail/time/y"/>-<xsl:value-of select="$detail/time/M"/>-<xsl:value-of select="$detail/time/d"/>
            </p>
            <div class="content">
            	<xsl:value-of select="$detail/content" disable-output-escaping="yes"/>
            </div>
                        
            
        </div>
    </xsl:template>
</xsl:stylesheet>
