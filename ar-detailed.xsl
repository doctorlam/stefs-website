<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:output method="html" />
	<xsl:template match="/augmented-reality">
	<!--copy from here down-->
	<html>
	
		<head>
			<link rel="stylesheet" type="text/css" href="ar-website.css" />
		</head>
	
		<body>
			<header>
				<h1>Augmented Reality</h1>
				<nav>
					<ul>
						<li><a href="home.html" class="link"><span>Home</span></a></li>
						<li>|</li>
						<li><a href="augmented-reality.xml" class="link"><span>Quick Byte</span></a></li>
						<li>|</li>
						<li><a href="augmented-reality-detailed.xml" class="link"><span>Food for Thought</span></a></li>
						<li>|</li>
						<li><a href="reflection.html" class="link"><span>Memo</span></a></li>
					</ul>
				</nav>
			</header>

			<!--Because freezing the header gave me other headaches-->
			<div class="white-space">
			</div>
			
			<div class="page-contents">		
				<h1>Food for Thought</h1>
				<figure>
					<img src="pokemon-go.jpg" alt="missing"/>
					<figcaption>Using a phone screen to project a digital pokemon into physcial space</figcaption>
				</figure>
				<div class="article-text">
					<h2><xsl:value-of select="ar-def/article/what/subtitle" /></h2>
					<p><xsl:for-each select="ar-def/article/what/summary">
						<xsl:value-of select="." />
					</xsl:for-each>
					</p>
					<h2><xsl:value-of select="ar-def/article/importance/subtitle" /></h2>
					<p><xsl:for-each select="ar-def/article/importance/summary">
						<xsl:value-of select="." />
					</xsl:for-each>
					<h2><xsl:value-of select="ar-def/article/why/subtitle" /></h2>
					<p><xsl:for-each select="ar-def/article/why/summary">
						<xsl:value-of select="." />
					</xsl:for-each>
					</p>
					</p>
					<h2><xsl:value-of select="ar-original-content/title" /></h2>
					<p><xsl:for-each select="ar-original-content/article/summary">
						<xsl:value-of select="." />
					</xsl:for-each>
					</p>
					<xsl:for-each select="ar-original-content/article/example">
						<p><xsl:value-of select="." /></p>
					</xsl:for-each>
					<p><xsl:for-each select="ar-original-content/article/conclusion">
						<xsl:value-of select="." />
					</xsl:for-each>
					</p>
				</div>
			</div>

			<footer>
				<p class="about-me">Website by Stephanie Botica - TECM 5191 - Fall 2017</p>
				<p class="contact-info">Contact me at <a href="mailto:stef.botica@gmail.com">stef.botica@gmail.com</a></p>
				<!--bonus points for making it easy for the viewer to contact me?-->
			</footer>
		</body>

	</html>
	</xsl:template>
</xsl:stylesheet>