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
        <signal name="XLXN_3(31:0)" />
        <signal name="XLXN_3(18:17)" />
        <signal name="HEXS(15:0)" />
        <signal name="points(3:0)" />
        <signal name="LES(3:0)" />
        <signal name="XLXN_10" />
        <signal name="XLXN_11" />
        <signal name="XLXN_12(3:0)" />
        <signal name="XLXN_12(3)" />
        <signal name="XLXN_12(2)" />
        <signal name="XLXN_12(1)" />
        <signal name="XLXN_12(0)" />
        <signal name="AN(3:0)" />
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
        <blockdef name="clk_div">
            <timestamp>2023-11-8T9:1:10</timestamp>
            <rect width="256" x="64" y="-128" height="128" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="320" y="-108" height="24" />
            <line x2="384" y1="-96" y2="-96" x1="320" />
        </blockdef>
        <blockdef name="DispSync">
            <timestamp>2023-11-8T9:9:40</timestamp>
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
            <timestamp>2023-10-30T9:31:50</timestamp>
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
        <block symbolname="clk_div" name="XLXI_1">
            <blockpin signalname="clk" name="clk" />
            <blockpin signalname="RST" name="rst" />
            <blockpin signalname="XLXN_3(31:0)" name="clkdiv(31:0)" />
        </block>
        <block symbolname="DispSync" name="XLXI_2">
            <blockpin signalname="XLXN_3(18:17)" name="Scan(1:0)" />
            <blockpin signalname="HEXS(15:0)" name="Hexs(15:0)" />
            <blockpin signalname="points(3:0)" name="point(3:0)" />
            <blockpin signalname="LES(3:0)" name="LES(3:0)" />
            <blockpin signalname="XLXN_12(3:0)" name="HEX(3:0)" />
            <blockpin signalname="XLXN_10" name="p" />
            <blockpin signalname="XLXN_11" name="LE" />
            <blockpin signalname="AN(3:0)" name="AN(3:0)" />
        </block>
        <block symbolname="MyMC14495" name="XLXI_3">
            <blockpin signalname="XLXN_10" name="point" />
            <blockpin signalname="XLXN_11" name="LE" />
            <blockpin signalname="XLXN_12(3)" name="D3" />
            <blockpin signalname="XLXN_12(2)" name="D2" />
            <blockpin signalname="XLXN_12(1)" name="D1" />
            <blockpin signalname="XLXN_12(0)" name="D0" />
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
        <instance x="448" y="480" name="XLXI_1" orien="R0">
        </instance>
        <instance x="2064" y="784" name="XLXI_3" orien="R0">
        </instance>
        <instance x="464" y="1760" name="XLXI_2" orien="R0">
        </instance>
        <branch name="clk">
            <wire x2="448" y1="384" y2="384" x1="256" />
        </branch>
        <branch name="RST">
            <wire x2="448" y1="448" y2="448" x1="256" />
        </branch>
        <iomarker fontsize="28" x="256" y="384" name="clk" orien="R180" />
        <iomarker fontsize="28" x="256" y="448" name="RST" orien="R180" />
        <branch name="XLXN_3(31:0)">
            <wire x2="1104" y1="1312" y2="1312" x1="176" />
            <wire x2="176" y1="1312" y2="1536" x1="176" />
            <wire x2="176" y1="1536" y2="2080" x1="176" />
            <wire x2="1104" y1="384" y2="384" x1="832" />
            <wire x2="1104" y1="384" y2="1312" x1="1104" />
        </branch>
        <bustap x2="272" y1="1536" y2="1536" x1="176" />
        <branch name="XLXN_3(18:17)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="368" y="1536" type="branch" />
            <wire x2="368" y1="1536" y2="1536" x1="272" />
            <wire x2="464" y1="1536" y2="1536" x1="368" />
        </branch>
        <branch name="HEXS(15:0)">
            <wire x2="464" y1="1600" y2="1600" x1="384" />
        </branch>
        <branch name="points(3:0)">
            <wire x2="464" y1="1664" y2="1664" x1="400" />
        </branch>
        <branch name="LES(3:0)">
            <wire x2="448" y1="1728" y2="1728" x1="384" />
            <wire x2="464" y1="1728" y2="1728" x1="448" />
        </branch>
        <iomarker fontsize="28" x="384" y="1600" name="HEXS(15:0)" orien="R180" />
        <iomarker fontsize="28" x="400" y="1664" name="points(3:0)" orien="R180" />
        <iomarker fontsize="28" x="384" y="1728" name="LES(3:0)" orien="R180" />
        <branch name="XLXN_10">
            <wire x2="1456" y1="1600" y2="1600" x1="848" />
            <wire x2="1456" y1="704" y2="1600" x1="1456" />
            <wire x2="2064" y1="704" y2="704" x1="1456" />
        </branch>
        <branch name="XLXN_11">
            <wire x2="1440" y1="1664" y2="1664" x1="848" />
            <wire x2="1440" y1="624" y2="1664" x1="1440" />
            <wire x2="2064" y1="624" y2="624" x1="1440" />
        </branch>
        <branch name="XLXN_12(3:0)">
            <wire x2="1344" y1="1536" y2="1536" x1="848" />
            <wire x2="1344" y1="240" y2="304" x1="1344" />
            <wire x2="1344" y1="304" y2="384" x1="1344" />
            <wire x2="1344" y1="384" y2="464" x1="1344" />
            <wire x2="1344" y1="464" y2="544" x1="1344" />
            <wire x2="1344" y1="544" y2="1536" x1="1344" />
        </branch>
        <bustap x2="1440" y1="544" y2="544" x1="1344" />
        <branch name="XLXN_12(3)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1752" y="544" type="branch" />
            <wire x2="1760" y1="544" y2="544" x1="1440" />
            <wire x2="2064" y1="544" y2="544" x1="1760" />
        </branch>
        <bustap x2="1440" y1="464" y2="464" x1="1344" />
        <branch name="XLXN_12(2)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1752" y="464" type="branch" />
            <wire x2="1760" y1="464" y2="464" x1="1440" />
            <wire x2="2064" y1="464" y2="464" x1="1760" />
        </branch>
        <bustap x2="1440" y1="384" y2="384" x1="1344" />
        <branch name="XLXN_12(1)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1752" y="384" type="branch" />
            <wire x2="1760" y1="384" y2="384" x1="1440" />
            <wire x2="2064" y1="384" y2="384" x1="1760" />
        </branch>
        <bustap x2="1440" y1="304" y2="304" x1="1344" />
        <branch name="XLXN_12(0)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1752" y="304" type="branch" />
            <wire x2="1760" y1="304" y2="304" x1="1440" />
            <wire x2="2064" y1="304" y2="304" x1="1760" />
        </branch>
        <branch name="AN(3:0)">
            <wire x2="1776" y1="1728" y2="1728" x1="848" />
        </branch>
        <iomarker fontsize="28" x="1776" y="1728" name="AN(3:0)" orien="R0" />
        <branch name="Segment(7:0)">
            <wire x2="2800" y1="176" y2="304" x1="2800" />
            <wire x2="2800" y1="304" y2="368" x1="2800" />
            <wire x2="2800" y1="368" y2="432" x1="2800" />
            <wire x2="2800" y1="432" y2="496" x1="2800" />
            <wire x2="2800" y1="496" y2="512" x1="2800" />
            <wire x2="2800" y1="512" y2="560" x1="2800" />
            <wire x2="2800" y1="560" y2="624" x1="2800" />
            <wire x2="2800" y1="624" y2="688" x1="2800" />
            <wire x2="2800" y1="688" y2="752" x1="2800" />
            <wire x2="2800" y1="752" y2="976" x1="2800" />
            <wire x2="3280" y1="976" y2="976" x1="2800" />
        </branch>
        <iomarker fontsize="28" x="3280" y="976" name="Segment(7:0)" orien="R0" />
        <bustap x2="2704" y1="304" y2="304" x1="2800" />
        <branch name="Segment(7)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="2576" y="304" type="branch" />
            <wire x2="2576" y1="304" y2="304" x1="2448" />
            <wire x2="2704" y1="304" y2="304" x1="2576" />
        </branch>
        <bustap x2="2704" y1="368" y2="368" x1="2800" />
        <branch name="Segment(6)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="2576" y="368" type="branch" />
            <wire x2="2576" y1="368" y2="368" x1="2448" />
            <wire x2="2704" y1="368" y2="368" x1="2576" />
        </branch>
        <bustap x2="2704" y1="432" y2="432" x1="2800" />
        <branch name="Segment(5)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="2576" y="432" type="branch" />
            <wire x2="2576" y1="432" y2="432" x1="2448" />
            <wire x2="2704" y1="432" y2="432" x1="2576" />
        </branch>
        <bustap x2="2704" y1="496" y2="496" x1="2800" />
        <branch name="Segment(4)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="2576" y="496" type="branch" />
            <wire x2="2576" y1="496" y2="496" x1="2448" />
            <wire x2="2704" y1="496" y2="496" x1="2576" />
        </branch>
        <bustap x2="2704" y1="560" y2="560" x1="2800" />
        <branch name="Segment(3)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="2576" y="560" type="branch" />
            <wire x2="2576" y1="560" y2="560" x1="2448" />
            <wire x2="2704" y1="560" y2="560" x1="2576" />
        </branch>
        <bustap x2="2704" y1="624" y2="624" x1="2800" />
        <branch name="Segment(2)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="2576" y="624" type="branch" />
            <wire x2="2576" y1="624" y2="624" x1="2448" />
            <wire x2="2704" y1="624" y2="624" x1="2576" />
        </branch>
        <bustap x2="2704" y1="688" y2="688" x1="2800" />
        <branch name="Segment(1)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="2576" y="688" type="branch" />
            <wire x2="2576" y1="688" y2="688" x1="2448" />
            <wire x2="2704" y1="688" y2="688" x1="2576" />
        </branch>
        <bustap x2="2704" y1="752" y2="752" x1="2800" />
        <branch name="Segment(0)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="2576" y="752" type="branch" />
            <wire x2="2576" y1="752" y2="752" x1="2448" />
            <wire x2="2704" y1="752" y2="752" x1="2576" />
        </branch>
    </sheet>
</drawing>