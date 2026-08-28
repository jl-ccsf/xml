<?xml version="1.0" encoding="UTF-8"?>
<!--jl-ccsf 02/28/2026-->
<!--Financial Startup Clients Template-->
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:output method="html" version="5.0" encoding="UTF-8"/>    
    <xsl:template match="/">
        <!--XHTML-->
        <html lang="en">
            <head>
                <title>Homework 4: XPath in Practice</title>
                <!--META-->
                <meta name="description" content="XPath practice for CNIT-131A at CCSF, Spring 2026"/>
                <meta name="keywords" content="XML, XSLT, Xpath, XL-FO, HTML, CSS, CCSF, student"/>
                <meta name="author" content="jl-ccsf"/>
                <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
                <!--CSS-->
                <link rel="stylesheet" type="text/css" href="financial_startup_clients.css"/>
            </head>
            <body>
                <div id="content">
                    <!--NAV-->
                    <nav>
                        <a href="https://github.com/jl-ccsf/xml/cnit-131a/src/index.html" title="Assignments" id="home">
                            <button id="return">&lt; Directory</button>
                        </a>
                    </nav>
                    <br/>
                    <!--MAIN-->
                    <main>
                        <h1>ABC Financial Startup</h1>
                            <img src="assets/financial_startup.jpg" alt="An upward arrow and two figures high-fiving" id="logo"/>
                            <p>Alotta Busy Coders (ABC) is a new crypto management company for coders who don't have time to gamble.</p>
                            <!--XPath-->
                            <p>After 16 years of tireless growth, ABC now serves a grand total of
                                <span class="blue">
                                    <xsl:text> </xsl:text>
                                    <!--Output 8-->
                                    <xsl:value-of select="count(accounts/client)"/>
                                    <xsl:text> </xsl:text>
                                </span>
                                clients!
                            </p>
                            <p>Here are all of our valued clients' names:
                                <span class="blue">
                                    <xsl:text> </xsl:text>
                                    <!--Output all names-->
                                    <xsl:for-each select="accounts/client/name">
                                        <xsl:value-of select="first"/>
                                            <xsl:text> </xsl:text>
                                        <xsl:value-of select="last"/>
                                        <xsl:choose>
                                            <xsl:when test="position()=last()">.</xsl:when>
                                            <xsl:when test="position()=last() - 1">, and </xsl:when>
                                            <xsl:otherwise>, </xsl:otherwise>
                                        </xsl:choose>
                                    </xsl:for-each>
                                </span>
                            </p>
                            <p>
                                <span class="blue">
                                    <!--Output 3-->
                                    <xsl:value-of select="count(accounts/client/years[. &gt; 7])"/>
                                    <xsl:text> </xsl:text>
                                </span>
                                of our clients have been with us more than 7 years!
                            </p>
                    </main>
                        <!--FOOTER-->
                    <footer>
                        <!--Copyleft-->
                        <button id="license">
                            <a href="https://creativecommons.org/licenses/by-sa/4.0/" title="CC-BY-SA-4" target="_blank" id="cc"></a>
                            <img src="https://mirrors.creativecommons.org/presskit/icons/cc.svg" alt="Creative Commons icon" class="svg"/>
                            <img src="https://mirrors.creativecommons.org/presskit/icons/by.svg" alt="Creative Commons Attribution icon" class="svg"/>
                            <img src="https://mirrors.creativecommons.org/presskit/icons/sa.svg" alt="Creative Commons ShareAlike icon" class="svg"/>
                        </button>
                        <p id="attribution">2026 <a href="mailto:jl-ccsf@proton.me?subject=Re:CNIT-131A" title="Email me">jl-ccsf</a></p>
                    </footer>
                </div>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>
