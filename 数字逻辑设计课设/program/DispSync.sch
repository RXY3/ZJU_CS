<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="kintex7" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="Scan(1:0)" />
        <signal name="Hexs(15:0)" />
        <signal name="Hexs(15:12)" />
        <signal name="HEX(3:0)" />
        <signal name="point(3:0)" />
        <signal name="point(3)" />
        <signal name="point(2)" />
        <signal name="point(1)" />
        <signal name="point(0)" />
        <signal name="LES(3:0)" />
        <signal name="LES(3)" />
        <signal name="LES(2)" />
        <signal name="LES(1)" />
        <signal name="LES(0)" />
        <signal name="p" />
        <signal name="LE" />
        <signal name="XLXN_23" />
        <signal name="Scan(1)" />
        <signal name="Scan(0)" />
        <signal name="AN(3:0)" />
        <signal name="XLXN_28" />
        <signal name="XLXN_29" />
        <signal name="XLXN_30" />
        <signal name="XLXN_31" />
        <signal name="AN(3)" />
        <signal name="AN(2)" />
        <signal name="AN(1)" />
        <signal name="AN(0)" />
        <signal name="Hexs(11:8)" />
        <signal name="Hexs(7:4)" />
        <signal name="Hexs(3:0)" />
        <port polarity="Input" name="Scan(1:0)" />
        <port polarity="Input" name="Hexs(15:0)" />
        <port polarity="Output" name="HEX(3:0)" />
        <port polarity="Input" name="point(3:0)" />
        <port polarity="Input" name="LES(3:0)" />
        <port polarity="Output" name="p" />
        <port polarity="Output" name="LE" />
        <port polarity="Output" name="AN(3:0)" />
        <blockdef name="Mux4to1b4">
            <timestamp>2023-11-8T8:31:18</timestamp>
            <rect width="256" x="64" y="-320" height="320" />
            <rect width="64" x="0" y="-300" height="24" />
            <line x2="0" y1="-288" y2="-288" x1="64" />
            <rect width="64" x="0" y="-236" height="24" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <rect width="64" x="0" y="-172" height="24" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <rect width="64" x="0" y="-108" height="24" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="320" y="-300" height="24" />
            <line x2="384" y1="-288" y2="-288" x1="320" />
        </blockdef>
        <blockdef name="Mux4to1_sch">
            <timestamp>2023-11-6T9:54:12</timestamp>
            <rect width="256" x="64" y="-320" height="320" />
            <line x2="0" y1="-288" y2="-288" x1="64" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="384" y1="-288" y2="-288" x1="320" />
        </blockdef>
        <blockdef name="D2_4E">
            <timestamp>2023-9-1T9:13:16</timestamp>
            <rect width="256" x="64" y="-384" height="320" />
            <line x2="64" y1="-128" y2="-128" x1="0" />
            <line x2="64" y1="-256" y2="-256" x1="0" />
            <line x2="64" y1="-320" y2="-320" x1="0" />
            <line x2="320" y1="-128" y2="-128" x1="384" />
            <line x2="320" y1="-192" y2="-192" x1="384" />
            <line x2="320" y1="-256" y2="-256" x1="384" />
            <line x2="320" y1="-320" y2="-320" x1="384" />
        </blockdef>
        <blockdef name="vcc">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-32" y2="-64" x1="64" />
            <line x2="64" y1="0" y2="-32" x1="64" />
            <line x2="32" y1="-64" y2="-64" x1="96" />
        </blockdef>
        <blockdef name="inv">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-32" y2="-32" x1="0" />
            <line x2="160" y1="-32" y2="-32" x1="224" />
            <line x2="128" y1="-64" y2="-32" x1="64" />
            <line x2="64" y1="-32" y2="0" x1="128" />
            <line x2="64" y1="0" y2="-64" x1="64" />
            <circle r="16" cx="144" cy="-32" />
        </blockdef>
        <block symbolname="Mux4to1b4" name="XLXI_1">
            <blockpin signalname="Scan(1:0)" name="s(1:0)" />
            <blockpin signalname="Hexs(3:0)" name="I0(3:0)" />
            <blockpin signalname="Hexs(7:4)" name="I1(3:0)" />
            <blockpin signalname="Hexs(11:8)" name="I2(3:0)" />
            <blockpin signalname="Hexs(15:12)" name="I3(3:0)" />
            <blockpin signalname="HEX(3:0)" name="o(3:0)" />
        </block>
        <block symbolname="Mux4to1_sch" name="XLXI_2">
            <blockpin signalname="point(0)" name="I0" />
            <blockpin signalname="point(1)" name="I1" />
            <blockpin signalname="point(2)" name="I2" />
            <blockpin signalname="point(3)" name="I3" />
            <blockpin signalname="Scan(1:0)" name="s(1:0)" />
            <blockpin signalname="p" name="o" />
        </block>
        <block symbolname="Mux4to1_sch" name="XLXI_3">
            <blockpin signalname="LES(0)" name="I0" />
            <blockpin signalname="LES(1)" name="I1" />
            <blockpin signalname="LES(2)" name="I2" />
            <blockpin signalname="LES(3)" name="I3" />
            <blockpin signalname="Scan(1:0)" name="s(1:0)" />
            <blockpin signalname="LE" name="o" />
        </block>
        <block symbolname="D2_4E" name="XLXI_7">
            <blockpin signalname="Scan(0)" name="A0" />
            <blockpin signalname="Scan(1)" name="A1" />
            <blockpin signalname="XLXN_23" name="E" />
            <blockpin signalname="XLXN_28" name="D0" />
            <blockpin signalname="XLXN_29" name="D1" />
            <blockpin signalname="XLXN_30" name="D2" />
            <blockpin signalname="XLXN_31" name="D3" />
        </block>
        <block symbolname="vcc" name="XLXI_9">
            <blockpin signalname="XLXN_23" name="P" />
        </block>
        <block symbolname="inv" name="XLXI_10">
            <blockpin signalname="XLXN_28" name="I" />
            <blockpin signalname="AN(0)" name="O" />
        </block>
        <block symbolname="inv" name="XLXI_11">
            <blockpin signalname="XLXN_29" name="I" />
            <blockpin signalname="AN(1)" name="O" />
        </block>
        <block symbolname="inv" name="XLXI_12">
            <blockpin signalname="XLXN_30" name="I" />
            <blockpin signalname="AN(2)" name="O" />
        </block>
        <block symbolname="inv" name="XLXI_13">
            <blockpin signalname="XLXN_31" name="I" />
            <blockpin signalname="AN(3)" name="O" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <instance x="1600" y="608" name="XLXI_1" orien="R0">
        </instance>
        <instance x="1600" y="1040" name="XLXI_2" orien="R0">
        </instance>
        <instance x="1584" y="1456" name="XLXI_3" orien="R0">
        </instance>
        <branch name="Scan(1:0)">
            <wire x2="896" y1="176" y2="176" x1="672" />
            <wire x2="896" y1="176" y2="320" x1="896" />
            <wire x2="1600" y1="320" y2="320" x1="896" />
            <wire x2="896" y1="320" y2="1008" x1="896" />
            <wire x2="1600" y1="1008" y2="1008" x1="896" />
            <wire x2="896" y1="1008" y2="1424" x1="896" />
            <wire x2="1584" y1="1424" y2="1424" x1="896" />
            <wire x2="896" y1="1424" y2="1680" x1="896" />
            <wire x2="896" y1="1680" y2="1744" x1="896" />
            <wire x2="896" y1="1744" y2="1776" x1="896" />
        </branch>
        <iomarker fontsize="28" x="672" y="176" name="Scan(1:0)" orien="R180" />
        <branch name="Hexs(15:0)">
            <wire x2="608" y1="640" y2="640" x1="480" />
            <wire x2="608" y1="320" y2="384" x1="608" />
            <wire x2="608" y1="384" y2="448" x1="608" />
            <wire x2="608" y1="448" y2="512" x1="608" />
            <wire x2="608" y1="512" y2="576" x1="608" />
            <wire x2="608" y1="576" y2="608" x1="608" />
            <wire x2="608" y1="608" y2="640" x1="608" />
        </branch>
        <iomarker fontsize="28" x="480" y="640" name="Hexs(15:0)" orien="R180" />
        <bustap x2="704" y1="576" y2="576" x1="608" />
        <branch name="Hexs(15:12)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1152" y="576" type="branch" />
            <wire x2="1152" y1="576" y2="576" x1="704" />
            <wire x2="1600" y1="576" y2="576" x1="1152" />
        </branch>
        <branch name="HEX(3:0)">
            <wire x2="2352" y1="320" y2="320" x1="1984" />
        </branch>
        <iomarker fontsize="28" x="2352" y="320" name="HEX(3:0)" orien="R0" />
        <branch name="point(3:0)">
            <wire x2="608" y1="1072" y2="1072" x1="448" />
            <wire x2="608" y1="720" y2="752" x1="608" />
            <wire x2="608" y1="752" y2="816" x1="608" />
            <wire x2="608" y1="816" y2="880" x1="608" />
            <wire x2="608" y1="880" y2="944" x1="608" />
            <wire x2="608" y1="944" y2="1072" x1="608" />
        </branch>
        <iomarker fontsize="28" x="448" y="1072" name="point(3:0)" orien="R180" />
        <bustap x2="704" y1="944" y2="944" x1="608" />
        <branch name="point(3)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1152" y="944" type="branch" />
            <wire x2="1152" y1="944" y2="944" x1="704" />
            <wire x2="1600" y1="944" y2="944" x1="1152" />
        </branch>
        <bustap x2="704" y1="880" y2="880" x1="608" />
        <branch name="point(2)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1152" y="880" type="branch" />
            <wire x2="1152" y1="880" y2="880" x1="704" />
            <wire x2="1600" y1="880" y2="880" x1="1152" />
        </branch>
        <bustap x2="704" y1="816" y2="816" x1="608" />
        <branch name="point(1)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1152" y="816" type="branch" />
            <wire x2="1152" y1="816" y2="816" x1="704" />
            <wire x2="1600" y1="816" y2="816" x1="1152" />
        </branch>
        <bustap x2="704" y1="752" y2="752" x1="608" />
        <branch name="point(0)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1152" y="752" type="branch" />
            <wire x2="1152" y1="752" y2="752" x1="704" />
            <wire x2="1600" y1="752" y2="752" x1="1152" />
        </branch>
        <branch name="LES(3:0)">
            <wire x2="608" y1="1456" y2="1456" x1="352" />
            <wire x2="608" y1="1104" y2="1168" x1="608" />
            <wire x2="608" y1="1168" y2="1232" x1="608" />
            <wire x2="608" y1="1232" y2="1296" x1="608" />
            <wire x2="608" y1="1296" y2="1360" x1="608" />
            <wire x2="608" y1="1360" y2="1456" x1="608" />
        </branch>
        <iomarker fontsize="28" x="352" y="1456" name="LES(3:0)" orien="R180" />
        <bustap x2="704" y1="1360" y2="1360" x1="608" />
        <branch name="LES(3)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1144" y="1360" type="branch" />
            <wire x2="1152" y1="1360" y2="1360" x1="704" />
            <wire x2="1584" y1="1360" y2="1360" x1="1152" />
        </branch>
        <bustap x2="704" y1="1296" y2="1296" x1="608" />
        <branch name="LES(2)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1144" y="1296" type="branch" />
            <wire x2="1152" y1="1296" y2="1296" x1="704" />
            <wire x2="1584" y1="1296" y2="1296" x1="1152" />
        </branch>
        <bustap x2="704" y1="1232" y2="1232" x1="608" />
        <branch name="LES(1)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1144" y="1232" type="branch" />
            <wire x2="1152" y1="1232" y2="1232" x1="704" />
            <wire x2="1584" y1="1232" y2="1232" x1="1152" />
        </branch>
        <bustap x2="704" y1="1168" y2="1168" x1="608" />
        <branch name="LES(0)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1144" y="1168" type="branch" />
            <wire x2="1152" y1="1168" y2="1168" x1="704" />
            <wire x2="1584" y1="1168" y2="1168" x1="1152" />
        </branch>
        <branch name="p">
            <wire x2="2336" y1="752" y2="752" x1="1984" />
        </branch>
        <branch name="LE">
            <wire x2="2368" y1="1168" y2="1168" x1="1968" />
        </branch>
        <iomarker fontsize="28" x="2336" y="752" name="p" orien="R0" />
        <iomarker fontsize="28" x="2368" y="1168" name="LE" orien="R0" />
        <instance x="1600" y="2000" name="XLXI_7" orien="R0">
        </instance>
        <branch name="XLXN_23">
            <wire x2="1472" y1="1872" y2="1872" x1="1408" />
            <wire x2="1600" y1="1872" y2="1872" x1="1472" />
        </branch>
        <instance x="1344" y="1872" name="XLXI_9" orien="R0" />
        <bustap x2="992" y1="1744" y2="1744" x1="896" />
        <branch name="Scan(1)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1296" y="1744" type="branch" />
            <wire x2="1296" y1="1744" y2="1744" x1="992" />
            <wire x2="1600" y1="1744" y2="1744" x1="1296" />
        </branch>
        <bustap x2="992" y1="1680" y2="1680" x1="896" />
        <branch name="Scan(0)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1296" y="1680" type="branch" />
            <wire x2="1296" y1="1680" y2="1680" x1="992" />
            <wire x2="1600" y1="1680" y2="1680" x1="1296" />
        </branch>
        <branch name="AN(3:0)">
            <wire x2="2624" y1="1472" y2="1680" x1="2624" />
            <wire x2="2624" y1="1680" y2="1744" x1="2624" />
            <wire x2="2624" y1="1744" y2="1808" x1="2624" />
            <wire x2="2624" y1="1808" y2="1872" x1="2624" />
            <wire x2="2624" y1="1872" y2="2192" x1="2624" />
        </branch>
        <branch name="XLXN_28">
            <wire x2="2176" y1="1680" y2="1680" x1="1984" />
        </branch>
        <branch name="XLXN_29">
            <wire x2="2176" y1="1744" y2="1744" x1="1984" />
        </branch>
        <branch name="XLXN_30">
            <wire x2="2176" y1="1808" y2="1808" x1="1984" />
        </branch>
        <branch name="XLXN_31">
            <wire x2="2176" y1="1872" y2="1872" x1="1984" />
        </branch>
        <instance x="2176" y="1712" name="XLXI_10" orien="R0" />
        <instance x="2176" y="1776" name="XLXI_11" orien="R0" />
        <instance x="2176" y="1840" name="XLXI_12" orien="R0" />
        <instance x="2176" y="1904" name="XLXI_13" orien="R0" />
        <iomarker fontsize="28" x="2624" y="1472" name="AN(3:0)" orien="R270" />
        <bustap x2="2528" y1="1872" y2="1872" x1="2624" />
        <branch name="AN(3)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="2464" y="1872" type="branch" />
            <wire x2="2464" y1="1872" y2="1872" x1="2400" />
            <wire x2="2528" y1="1872" y2="1872" x1="2464" />
        </branch>
        <bustap x2="2528" y1="1808" y2="1808" x1="2624" />
        <branch name="AN(2)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="2464" y="1808" type="branch" />
            <wire x2="2464" y1="1808" y2="1808" x1="2400" />
            <wire x2="2528" y1="1808" y2="1808" x1="2464" />
        </branch>
        <bustap x2="2528" y1="1744" y2="1744" x1="2624" />
        <branch name="AN(1)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="2464" y="1744" type="branch" />
            <wire x2="2464" y1="1744" y2="1744" x1="2400" />
            <wire x2="2528" y1="1744" y2="1744" x1="2464" />
        </branch>
        <bustap x2="2528" y1="1680" y2="1680" x1="2624" />
        <branch name="AN(0)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="2464" y="1680" type="branch" />
            <wire x2="2464" y1="1680" y2="1680" x1="2400" />
            <wire x2="2528" y1="1680" y2="1680" x1="2464" />
        </branch>
        <bustap x2="704" y1="512" y2="512" x1="608" />
        <branch name="Hexs(11:8)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1152" y="512" type="branch" />
            <wire x2="1152" y1="512" y2="512" x1="704" />
            <wire x2="1600" y1="512" y2="512" x1="1152" />
        </branch>
        <bustap x2="704" y1="448" y2="448" x1="608" />
        <branch name="Hexs(7:4)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1152" y="448" type="branch" />
            <wire x2="1152" y1="448" y2="448" x1="704" />
            <wire x2="1600" y1="448" y2="448" x1="1152" />
        </branch>
        <bustap x2="704" y1="384" y2="384" x1="608" />
        <branch name="Hexs(3:0)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1152" y="384" type="branch" />
            <wire x2="1152" y1="384" y2="384" x1="704" />
            <wire x2="1600" y1="384" y2="384" x1="1152" />
        </branch>
    </sheet>
</drawing>