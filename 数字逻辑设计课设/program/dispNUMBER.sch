<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="kintex7" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="clk" />
        <signal name="RST" />
        <signal name="clkd(31:0)" />
        <signal name="HEXS(15:0)" />
        <signal name="points(3:0)" />
        <signal name="LES(3:0)" />
        <signal name="clkd(18:17)" />
        <signal name="AN(3:0)" />
        <signal name="HEX(3:0)" />
        <signal name="HEX(3)" />
        <signal name="HEX(2)" />
        <signal name="HEX(1)" />
        <signal name="HEX(0)" />
        <signal name="XLXN_15" />
        <signal name="XLXN_16" />
        <signal name="Segment(7:0)" />
        <signal name="Segment(7)" />
        <signal name="Segment(6)" />
        <signal name="Segment(5)" />
        <signal name="Segment(4)" />
        <signal name="Segment(3)" />
        <signal name="Segment(2)" />
        <signal name="Segment(1)" />
        <signal name="Segment(0)" />
        <port polarity="Input" name="clk" />
        <port polarity="Input" name="RST" />
        <port polarity="Input" name="HEXS(15:0)" />
        <port polarity="Input" name="points(3:0)" />
        <port polarity="Input" name="LES(3:0)" />
        <port polarity="Output" name="AN(3:0)" />
        <port polarity="Output" name="Segment(7:0)" />
        <blockdef name="clkdiv">
            <timestamp>2023-10-18T16:14:0</timestamp>
            <rect width="256" x="64" y="-128" height="128" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="320" y="-108" height="24" />
            <line x2="384" y1="-96" y2="-96" x1="320" />
        </blockdef>
        <blockdef name="DispNum_Num">
            <timestamp>2023-11-1T3:30:49</timestamp>
            <rect width="256" x="64" y="-256" height="256" />
            <rect width="64" x="0" y="-236" height="24" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <rect width="64" x="0" y="-172" height="24" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <rect width="64" x="0" y="-108" height="24" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="320" y="-236" height="24" />
            <line x2="384" y1="-224" y2="-224" x1="320" />
            <line x2="384" y1="-160" y2="-160" x1="320" />
            <line x2="384" y1="-96" y2="-96" x1="320" />
            <rect width="64" x="320" y="-44" height="24" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
        </blockdef>
        <blockdef name="MyMC14495">
            <timestamp>2023-10-4T1:40:36</timestamp>
            <rect width="256" x="64" y="-512" height="512" />
            <line x2="0" y1="-480" y2="-480" x1="64" />
            <line x2="0" y1="-400" y2="-400" x1="64" />
            <line x2="0" y1="-320" y2="-320" x1="64" />
            <line x2="0" y1="-240" y2="-240" x1="64" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <line x2="0" y1="-80" y2="-80" x1="64" />
            <line x2="384" y1="-480" y2="-480" x1="320" />
            <line x2="384" y1="-416" y2="-416" x1="320" />
            <line x2="384" y1="-352" y2="-352" x1="320" />
            <line x2="384" y1="-288" y2="-288" x1="320" />
            <line x2="384" y1="-224" y2="-224" x1="320" />
            <line x2="384" y1="-160" y2="-160" x1="320" />
            <line x2="384" y1="-96" y2="-96" x1="320" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
        </blockdef>
        <block symbolname="clkdiv" name="XLXI_1">
            <blockpin signalname="clk" name="clk" />
            <blockpin signalname="RST" name="rst" />
            <blockpin signalname="clkd(31:0)" name="clkdiv(31:0)" />
        </block>
        <block symbolname="DispNum_Num" name="XLXI_2">
            <blockpin signalname="HEXS(15:0)" name="Hexs(15:0)" />
            <blockpin signalname="points(3:0)" name="point(3:0)" />
            <blockpin signalname="clkd(18:17)" name="Scan(1:0)" />
            <blockpin signalname="LES(3:0)" name="LES(3:0)" />
            <blockpin signalname="HEX(3:0)" name="HEX(3:0)" />
            <blockpin signalname="XLXN_15" name="p" />
            <blockpin signalname="XLXN_16" name="LE" />
            <blockpin signalname="AN(3:0)" name="AN(3:0)" />
        </block>
        <block symbolname="MyMC14495" name="XLXI_3">
            <blockpin signalname="XLXN_15" name="point" />
            <blockpin signalname="XLXN_16" name="LE" />
            <blockpin signalname="HEX(3)" name="D3" />
            <blockpin signalname="HEX(2)" name="D2" />
            <blockpin signalname="HEX(1)" name="D1" />
            <blockpin signalname="HEX(0)" name="D0" />
            <blockpin signalname="Segment(7)" name="p" />
            <blockpin signalname="Segment(6)" name="g" />
            <blockpin signalname="Segment(5)" name="f" />
            <blockpin signalname="Segment(4)" name="e" />
            <blockpin signalname="Segment(3)" name="d" />
            <blockpin signalname="Segment(2)" name="c" />
            <blockpin signalname="Segment(1)" name="b" />
            <blockpin signalname="Segment(0)" name="a" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <instance x="336" y="1152" name="XLXI_1" orien="R0">
        </instance>
        <branch name="clk">
            <wire x2="336" y1="1056" y2="1056" x1="304" />
        </branch>
        <iomarker fontsize="28" x="304" y="1056" name="clk" orien="R180" />
        <branch name="RST">
            <wire x2="336" y1="1120" y2="1120" x1="304" />
        </branch>
        <iomarker fontsize="28" x="304" y="1120" name="RST" orien="R180" />
        <branch name="clkd(31:0)">
            <wire x2="832" y1="1472" y2="1472" x1="416" />
            <wire x2="416" y1="1472" y2="1760" x1="416" />
            <wire x2="832" y1="1056" y2="1056" x1="720" />
            <wire x2="832" y1="1056" y2="1472" x1="832" />
        </branch>
        <instance x="816" y="1856" name="XLXI_2" orien="R0">
        </instance>
        <branch name="HEXS(15:0)">
            <wire x2="816" y1="1632" y2="1632" x1="288" />
        </branch>
        <iomarker fontsize="28" x="288" y="1632" name="HEXS(15:0)" orien="R180" />
        <branch name="points(3:0)">
            <wire x2="816" y1="1696" y2="1696" x1="320" />
        </branch>
        <iomarker fontsize="28" x="320" y="1696" name="points(3:0)" orien="R180" />
        <branch name="LES(3:0)">
            <wire x2="816" y1="1824" y2="1824" x1="320" />
        </branch>
        <iomarker fontsize="28" x="320" y="1824" name="LES(3:0)" orien="R180" />
        <bustap x2="512" y1="1760" y2="1760" x1="416" />
        <branch name="clkd(18:17)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="664" y="1760" type="branch" />
            <wire x2="672" y1="1760" y2="1760" x1="512" />
            <wire x2="816" y1="1760" y2="1760" x1="672" />
        </branch>
        <branch name="AN(3:0)">
            <wire x2="1840" y1="1824" y2="1824" x1="1200" />
        </branch>
        <iomarker fontsize="28" x="1840" y="1824" name="AN(3:0)" orien="R0" />
        <instance x="1632" y="1568" name="XLXI_3" orien="R0">
        </instance>
        <branch name="HEX(3:0)">
            <wire x2="1280" y1="1632" y2="1632" x1="1200" />
            <wire x2="1280" y1="1248" y2="1328" x1="1280" />
            <wire x2="1280" y1="1328" y2="1408" x1="1280" />
            <wire x2="1280" y1="1408" y2="1488" x1="1280" />
            <wire x2="1280" y1="1488" y2="1632" x1="1280" />
        </branch>
        <bustap x2="1376" y1="1248" y2="1248" x1="1280" />
        <branch name="HEX(3)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1504" y="1248" type="branch" />
            <wire x2="1504" y1="1248" y2="1248" x1="1376" />
            <wire x2="1632" y1="1248" y2="1248" x1="1504" />
        </branch>
        <bustap x2="1376" y1="1328" y2="1328" x1="1280" />
        <branch name="HEX(2)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1504" y="1328" type="branch" />
            <wire x2="1504" y1="1328" y2="1328" x1="1376" />
            <wire x2="1632" y1="1328" y2="1328" x1="1504" />
        </branch>
        <bustap x2="1376" y1="1408" y2="1408" x1="1280" />
        <branch name="HEX(1)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1504" y="1408" type="branch" />
            <wire x2="1504" y1="1408" y2="1408" x1="1376" />
            <wire x2="1632" y1="1408" y2="1408" x1="1504" />
        </branch>
        <bustap x2="1376" y1="1488" y2="1488" x1="1280" />
        <branch name="HEX(0)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1504" y="1488" type="branch" />
            <wire x2="1504" y1="1488" y2="1488" x1="1376" />
            <wire x2="1632" y1="1488" y2="1488" x1="1504" />
        </branch>
        <branch name="XLXN_15">
            <wire x2="1408" y1="1696" y2="1696" x1="1200" />
            <wire x2="1408" y1="1088" y2="1696" x1="1408" />
            <wire x2="1632" y1="1088" y2="1088" x1="1408" />
        </branch>
        <branch name="XLXN_16">
            <wire x2="1392" y1="1760" y2="1760" x1="1200" />
            <wire x2="1392" y1="1168" y2="1760" x1="1392" />
            <wire x2="1632" y1="1168" y2="1168" x1="1392" />
        </branch>
        <branch name="Segment(7:0)">
            <wire x2="2288" y1="1088" y2="1152" x1="2288" />
            <wire x2="2288" y1="1152" y2="1168" x1="2288" />
            <wire x2="2288" y1="1168" y2="1216" x1="2288" />
            <wire x2="2288" y1="1216" y2="1280" x1="2288" />
            <wire x2="2288" y1="1280" y2="1344" x1="2288" />
            <wire x2="2288" y1="1344" y2="1408" x1="2288" />
            <wire x2="2288" y1="1408" y2="1472" x1="2288" />
            <wire x2="2288" y1="1472" y2="1536" x1="2288" />
            <wire x2="2288" y1="1536" y2="1616" x1="2288" />
            <wire x2="2592" y1="1616" y2="1616" x1="2288" />
        </branch>
        <iomarker fontsize="28" x="2592" y="1616" name="Segment(7:0)" orien="R0" />
        <bustap x2="2192" y1="1088" y2="1088" x1="2288" />
        <branch name="Segment(7)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="2104" y="1088" type="branch" />
            <wire x2="2112" y1="1088" y2="1088" x1="2016" />
            <wire x2="2192" y1="1088" y2="1088" x1="2112" />
        </branch>
        <bustap x2="2192" y1="1152" y2="1152" x1="2288" />
        <branch name="Segment(6)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="2104" y="1152" type="branch" />
            <wire x2="2112" y1="1152" y2="1152" x1="2016" />
            <wire x2="2192" y1="1152" y2="1152" x1="2112" />
        </branch>
        <bustap x2="2192" y1="1216" y2="1216" x1="2288" />
        <branch name="Segment(5)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="2104" y="1216" type="branch" />
            <wire x2="2112" y1="1216" y2="1216" x1="2016" />
            <wire x2="2192" y1="1216" y2="1216" x1="2112" />
        </branch>
        <bustap x2="2192" y1="1280" y2="1280" x1="2288" />
        <branch name="Segment(4)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="2104" y="1280" type="branch" />
            <wire x2="2112" y1="1280" y2="1280" x1="2016" />
            <wire x2="2192" y1="1280" y2="1280" x1="2112" />
        </branch>
        <bustap x2="2192" y1="1344" y2="1344" x1="2288" />
        <branch name="Segment(3)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="2104" y="1344" type="branch" />
            <wire x2="2112" y1="1344" y2="1344" x1="2016" />
            <wire x2="2192" y1="1344" y2="1344" x1="2112" />
        </branch>
        <bustap x2="2192" y1="1408" y2="1408" x1="2288" />
        <branch name="Segment(2)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="2104" y="1408" type="branch" />
            <wire x2="2112" y1="1408" y2="1408" x1="2016" />
            <wire x2="2192" y1="1408" y2="1408" x1="2112" />
        </branch>
        <bustap x2="2192" y1="1472" y2="1472" x1="2288" />
        <branch name="Segment(1)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="2104" y="1472" type="branch" />
            <wire x2="2112" y1="1472" y2="1472" x1="2016" />
            <wire x2="2192" y1="1472" y2="1472" x1="2112" />
        </branch>
        <bustap x2="2192" y1="1536" y2="1536" x1="2288" />
        <branch name="Segment(0)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="2104" y="1536" type="branch" />
            <wire x2="2112" y1="1536" y2="1536" x1="2016" />
            <wire x2="2192" y1="1536" y2="1536" x1="2112" />
        </branch>
    </sheet>
</drawing>