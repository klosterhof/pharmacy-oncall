<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:template match="/">
        <html>
            <head>
                <title>Pharmacy On-Call Schedules</title>
                <style>
                    body {
                        font-family: Arial, sans-serif;
                        margin: 20px;
                    }
                    h1 {
                        text-align: center;
                        color: #4CAF50;
                    }
                    table {
                        width: 100%;
                        border-collapse: collapse;
                        margin: 20px 0;
                    }
                    th, td {
                        border: 1px solid #ddd;
                        padding: 8px;
                        text-align: left;
                    }
                    th {
                        background-color: #4CAF50;
                        color: white;
                    }
                    tr:nth-child(even) {
                        background-color: #f2f2f2;
                    }
                </style>
            </head>
            <body>
                <h1>Pharmacy On-Call Schedules</h1>
                <table>
                    <tr>
                        <th>Date</th>
                        <th>Pharmacy Name</th>
                        <th>Address</th>
                        <th>Phone</th>
                        <th>Distance</th>
                    </tr>
                    <xsl:for-each select="OnCallSchedules/Day">
                        <xsl:for-each select="Pharmacy">
                            <tr>
                                <td><xsl:value-of select="../@date" /></td>
                                <td><xsl:value-of select="Name" /></td>
                                <td><xsl:value-of select="Address" /></td>
                                <td><xsl:value-of select="Phone" /></td>
                                <td><xsl:value-of select="Distance" /></td>
                            </tr>
                        </xsl:for-each>
                    </xsl:for-each>
                </table>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>
