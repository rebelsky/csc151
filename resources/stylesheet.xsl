<?xml version='1.0'?>
<!DOCTYPE stylesheet [
  <!ENTITY % CommonEntities SYSTEM "../resources/common.ent">
    %CommonEntities;
  <!ENTITY % CourseEntities SYSTEM "../resources/course.ent">
    %CourseEntities;
  <!ENTITY % GroupEntities SYSTEM "group.ent">
    %GroupEntities;
]>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                version='1.0'
                xmlns="http://www.w3.org/TR/xhtml1/transitional"
                exclude-result-prefixes="#default">

<xsl:import href="../resources/links.xsl"/>

<xsl:param name="filename" select="index.html"/>
<xsl:param name="directory"/>

<xsl:template name="body.attributes">
  <xsl:attribute name="style">background-image:url(../Images/logo.png);</xsl:attribute>
</xsl:template>

<xsl:template name="user.header.content">
<header>
<p class="course">
  &coursename; (&courseid; &semester;) : &group;
<br/>
</p>
<div class="head">
<xsl:call-template name="navlinks"/>
<p><a name="body"></a></p>
</div>
</header>
</xsl:template>

<xsl:template name="user.footer.content">
<footer>
<div class="foot">

<div class="NOPRINT">

<xsl:call-template name="navlinks"/>

<hr width="50%"/>

</div><!--noprint-->

<div class="pagenotes">

<div class="NOPRINT">
<p>
  <a>
    <xsl:attribute name="href">
      <xsl:value-of select="concat('http://wave.webaim.org/report#/&url;',$directory,'/',$filename)"/>
    </xsl:attribute>
    Check this page's accessibility on WAVE
  </a>.
</p>
</div>

<p>
Samuel A. Rebelsky, <a href="mailto:rebelsky@grinnell.edu">rebelsky@grinnell.edu</a>
</p>

<p>
Copyright &copy; 2007-2015 Janet Davis, Samuel A. Rebelsky, and Jerod Weinman.  
(Selected materials are copyright by John David Stone or Henry Walker
and are used with permission.)
</p>

<p>
<!--Creative Commons License-->
<img alt="Creative Commons License" style="border-width:0" src="../resources/cc-by-nc-3.0.png" /><br />This work is licensed under a <a rel="license" href="http://creativecommons.org/licenses/by-nc/3.0/">Creative Commons Attribution 3.0 Unported License</a>.  To view a copy of this
license, visit <code>http://creativecommons.org/licenses/by-nc/3.0/</code>
or send a letter to Creative Commons, 543 Howard Street, 5th Floor, 
San Francisco, California, 94105, USA.
<!--/Creative Commons License-->
</p>

</div><!--/pagenotes-->

</div><!--/foot-->
</footer>
</xsl:template>

</xsl:stylesheet>
