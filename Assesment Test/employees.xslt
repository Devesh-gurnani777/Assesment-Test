<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0">
<xsl:template match="/">
<table>
<tr>
<th> Employee Name</th>
<th> Designation</th>
<th> Date of Joining</th>
</tr>
<xsl:apply-templates select= "//employee[designation='Technical Writer']" />
<xsl:apply-templates select= "//employee[salary>500000 and salary < 700000]"/>
</table>
</xsl:template>

<xsl:template match="employee">
<tr>
<td> <xsl:value-of-select="name"/></td>
<td> <xsl:value-of-select="designation"/></td>
<td> <xsl:value-of-select="joiningDate"/></td>
</tr></xsl:template>
</xsl:stylesheet>