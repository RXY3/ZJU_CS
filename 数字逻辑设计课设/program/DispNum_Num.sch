<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="kintex7" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="Hexs(15:0)" />
        <signal name="Hexs(3:0)" />
        <signal name="Hexs(7:4)" />
        <signal name="Hexs(11:8)" />
        <signal name="Hexs(15:12)" />
        <signal name="HEX(3:0)" />
        <signal name="p" />
        <signal name="point(3:0)" />
        <signal name="Scan(1:0)" />
        <signal name="point(3)" />
        <signal name="point(2)" />
        <signal name="point(1)" />
        <signal name="point(0)" />
        <signal name="LES(3:0)" />
        <signal name="LES(3)" />
        <signal name="LES(2)" />
        <signal name="LES(1)" />
        <signal name="LES(0)" />
        <signal name="LE" />
        <signal name="Scan(1)" />
        <signal name="Scan(0)" />
        <signal name="XLXN_28" />
        <signal name="AN(3:0)" />
        <signal name="XLXN_38" />
        <signal name="XLXN_39" />
        <signal name="XLXN_40" />
        <signal name="XLXN_41" />
        <signal name="AN(3)" />
        <signal name="AN(2)" />
        <signal name="AN(1)" />
        <signal name="AN(0)" />
        <port polarity="Input" name="Hexs(15:0)" />
        <port polarity="Output" name="HEX(3:0)" />
        <port polarity="Output" name="p" />
        <port polarity="Input" name="point(3:0)" />
        <port polarity="Input" name="Scan(1:0)" />
        <port polarity="Input" name="LES(3:0)" />
        <port polarity="Output" name="LE" />
        <port polarity="Output" name="AN(3:0)" />
        <blockdef name="Mux4to1b4">
            <timestamp>2023-11-1T2:48:52</timestamp>
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
        <blockdef name="Mux4to1">
            <timestamp>2023-11-1T3:20:55</timestamp>
            <rect width="256" x="64" y="-320" height="320" />
            <line x2="0" y1="-288" y2="-288" x1="64" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="384" y1="-288" y2="-288" x1="320" />
        </blockdef>
        <blockdef name="d2_4e">
            <timestamp>2000-1-1T10:10:10</timestamp>
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
        <blockdef name="inv4">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="160" y1="-32" y2="-32" x1="224" />
            <line x2="160" y1="-96" y2="-96" x1="224" />
            <line x2="160" y1="-160" y2="-160" x1="224" />
            <line x2="160" y1="-224" y2="-224" x1="224" />
            <line x2="64" y1="-32" y2="-32" x1="0" />
            <line x2="64" y1="-96" y2="-96" x1="0" />
            <line x2="64" y1="-160" y2="-160" x1="0" />
            <line x2="64" y1="-224" y2="-224" x1="0" />
            <line x2="128" y1="-256" y2="-224" x1="64" />
            <line x2="64" y1="-224" y2="-192" x1="128" />
            <line x2="64" y1="-192" y2="-256" x1="64" />
            <circle r="16" cx="144" cy="-32" />
            <line x2="128" y1="-64" y2="-32" x1="64" />
            <line x2="64" y1="-32" y2="0" x1="128" />
            <line x2="64" y1="0" y2="-64" x1="64" />
            <line x2="128" y1="-128" y2="-96" x1="64" />
            <line x2="64" y1="-96" y2="-64" x1="128" />
            <line x2="64" y1="-64" y2="-128" x1="64" />
            <circle r="16" cx="144" cy="-96" />
            <line x2="128" y1="-192" y2="-160" x1="64" />
            <line x2="64" y1="-160" y2="-128" x1="128" />
            <line x2="64" y1="-128" y2="-192" x1="64" />
            <circle r="16" cx="144" cy="-160" />
            <circle r="16" cx="144" cy="-224" />
        </blockdef>
        <block symbolname="Mux4to1b4" name="XLXI_1">
            <blockpin signalname="Scan(1:0)" name="s(1:0)" />
            <blockpin signalname="Hexs(3:0)" name="I0(3:0)" />
            <blockpin signalname="Hexs(7:4)" name="I1(3:0)" />
            <blockpin signalname="Hexs(11:8)" name="I2(3:0)" />
            <blockpin signalname="Hexs(15:12)" name="I3(3:0)" />
            <blockpin signalname="HEX(3:0)" name="o(3:0)" />
        </block>
        <block symbolname="Mux4to1" name="XLXI_3">
            <blockpin signalname="point(0)" name="I0" />
            <blockpin signalname="point(1)" name="I1" />
            <blockpin signalname="point(2)" name="I2" />
            <blockpin signalname="point(3)" name="I3" />
            <blockpin signalname="Scan(1:0)" name="s(1:0)" />
            <blockpin signalname="p" name="o" />
        </block>
        <block symbolname="Mux4to1" name="XLXI_4">
            <blockpin signalname="LES(0)" name="I0" />
            <blockpin signalname="LES(1)" name="I1" />
            <blockpin signalname="LES(2)" name="I2" />
            <blockpin signalname="LES(3)" name="I3" />
            <blockpin signalname="Scan(1:0)" name="s(1:0)" />
            <blockpin signalname="LE" name="o" />
        </block>
        <block symbolname="d2_4e" name="XLXI_5">
            <blockpin signalname="Scan(0)" name="A0" />
            <blockpin signalname="Scan(1)" name="A1" />
            <blockpin signalname="XLXN_28" name="E" />
            <blockpin signalname="XLXN_41" name="D0" />
            <blockpin signalname="XLXN_40" name="D1" />
            <blockpin signalname="XLXN_39" name="D2" />
            <blockpin signalname="XLXN_38" name="D3" />
        </block>
        <block symbolname="vcc" name="XLXI_6">
            <blockpin signalname="XLXN_28" name="P" />
        </block>
        <block symbolname="inv4" name="XLXI_11">
            <blockpin signalname="XLXN_38" name="I0" />
            <blockpin signalname="XLXN_39" name="I1" />
            <blockpin signalname="XLXN_40" name="I2" />
            <blockpin signalname="XLXN_41" name="I3" />
            <blockpin signalname="AN(3)" name="O0" />
            <blockpin signalname="AN(2)" name="O1" />
            <blockpin signalname="AN(1)" name="O2" />
            <blockpin signalname="AN(0)" name="O3" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="5440" height="3520">
        <instance x="992" y="2336" name="XLXI_1" orien="R0">
        </instance>
        <iomarker fontsize="28" x="512" y="1760" name="Scan(1:0)" orien="R180" />
        <branch name="Hexs(15:0)">
            <wire x2="720" y1="2144" y2="2144" x1="560" />
            <wire x2="720" y1="2144" y2="2176" x1="720" />
            <wire x2="720" y1="2176" y2="2240" x1="720" />
            <wire x2="720" y1="2240" y2="2304" x1="720" />
            <wire x2="720" y1="2304" y2="2320" x1="720" />
            <wire x2="720" y1="2080" y2="2112" x1="720" />
            <wire x2="720" y1="2112" y2="2144" x1="720" />
        </branch>
        <iomarker fontsize="28" x="560" y="2144" name="Hexs(15:0)" orien="R180" />
        <bustap x2="816" y1="2112" y2="2112" x1="720" />
        <branch name="Hexs(3:0)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="904" y="2112" type="branch" />
            <wire x2="912" y1="2112" y2="2112" x1="816" />
            <wire x2="992" y1="2112" y2="2112" x1="912" />
        </branch>
        <bustap x2="816" y1="2176" y2="2176" x1="720" />
        <branch name="Hexs(7:4)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="904" y="2176" type="branch" />
            <wire x2="912" y1="2176" y2="2176" x1="816" />
            <wire x2="992" y1="2176" y2="2176" x1="912" />
        </branch>
        <bustap x2="816" y1="2240" y2="2240" x1="720" />
        <branch name="Hexs(11:8)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="904" y="2240" type="branch" />
            <wire x2="912" y1="2240" y2="2240" x1="816" />
            <wire x2="992" y1="2240" y2="2240" x1="912" />
        </branch>
        <bustap x2="816" y1="2304" y2="2304" x1="720" />
        <branch name="Hexs(15:12)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="904" y="2304" type="branch" />
            <wire x2="912" y1="2304" y2="2304" x1="816" />
            <wire x2="992" y1="2304" y2="2304" x1="912" />
        </branch>
        <branch name="HEX(3:0)">
            <wire x2="1760" y1="2048" y2="2048" x1="1376" />
        </branch>
        <iomarker fontsize="28" x="1760" y="2048" name="HEX(3:0)" orien="R0" />
        <branch name="p">
            <wire x2="1744" y1="2480" y2="2480" x1="1376" />
        </branch>
        <iomarker fontsize="28" x="1744" y="2480" name="p" orien="R0" />
        <branch name="point(3:0)">
            <wire x2="528" y1="2448" y2="2448" x1="384" />
            <wire x2="528" y1="2448" y2="2480" x1="528" />
            <wire x2="528" y1="2480" y2="2528" x1="528" />
            <wire x2="528" y1="2528" y2="2544" x1="528" />
            <wire x2="528" y1="2544" y2="2608" x1="528" />
            <wire x2="528" y1="2608" y2="2672" x1="528" />
        </branch>
        <instance x="992" y="2768" name="XLXI_3" orien="R0">
        </instance>
        <branch name="Scan(1:0)">
            <wire x2="624" y1="1760" y2="1760" x1="512" />
            <wire x2="624" y1="1760" y2="2048" x1="624" />
            <wire x2="640" y1="2048" y2="2048" x1="624" />
            <wire x2="992" y1="2048" y2="2048" x1="640" />
            <wire x2="640" y1="2048" y2="2736" x1="640" />
            <wire x2="992" y1="2736" y2="2736" x1="640" />
            <wire x2="640" y1="2736" y2="3168" x1="640" />
            <wire x2="640" y1="3168" y2="3328" x1="640" />
            <wire x2="640" y1="3328" y2="3440" x1="640" />
            <wire x2="1584" y1="3440" y2="3440" x1="640" />
            <wire x2="992" y1="3168" y2="3168" x1="640" />
            <wire x2="1584" y1="3088" y2="3184" x1="1584" />
            <wire x2="1584" y1="3184" y2="3248" x1="1584" />
            <wire x2="1584" y1="3248" y2="3440" x1="1584" />
        </branch>
        <iomarker fontsize="28" x="384" y="2448" name="point(3:0)" orien="R180" />
        <bustap x2="624" y1="2672" y2="2672" x1="528" />
        <branch name="point(3)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="808" y="2672" type="branch" />
            <wire x2="816" y1="2672" y2="2672" x1="624" />
            <wire x2="992" y1="2672" y2="2672" x1="816" />
        </branch>
        <bustap x2="624" y1="2608" y2="2608" x1="528" />
        <branch name="point(2)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="808" y="2608" type="branch" />
            <wire x2="816" y1="2608" y2="2608" x1="624" />
            <wire x2="992" y1="2608" y2="2608" x1="816" />
        </branch>
        <bustap x2="624" y1="2544" y2="2544" x1="528" />
        <branch name="point(1)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="808" y="2544" type="branch" />
            <wire x2="816" y1="2544" y2="2544" x1="624" />
            <wire x2="992" y1="2544" y2="2544" x1="816" />
        </branch>
        <bustap x2="624" y1="2480" y2="2480" x1="528" />
        <branch name="point(0)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="808" y="2480" type="branch" />
            <wire x2="816" y1="2480" y2="2480" x1="624" />
            <wire x2="992" y1="2480" y2="2480" x1="816" />
        </branch>
        <instance x="992" y="3200" name="XLXI_4" orien="R0">
        </instance>
        <branch name="LES(3:0)">
            <wire x2="528" y1="2880" y2="2880" x1="336" />
            <wire x2="528" y1="2880" y2="2912" x1="528" />
            <wire x2="528" y1="2912" y2="2976" x1="528" />
            <wire x2="528" y1="2976" y2="3040" x1="528" />
            <wire x2="528" y1="3040" y2="3104" x1="528" />
        </branch>
        <iomarker fontsize="28" x="336" y="2880" name="LES(3:0)" orien="R180" />
        <bustap x2="624" y1="3104" y2="3104" x1="528" />
        <branch name="LES(3)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="808" y="3104" type="branch" />
            <wire x2="816" y1="3104" y2="3104" x1="624" />
            <wire x2="992" y1="3104" y2="3104" x1="816" />
        </branch>
        <bustap x2="624" y1="3040" y2="3040" x1="528" />
        <branch name="LES(2)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="808" y="3040" type="branch" />
            <wire x2="816" y1="3040" y2="3040" x1="624" />
            <wire x2="992" y1="3040" y2="3040" x1="816" />
        </branch>
        <bustap x2="624" y1="2976" y2="2976" x1="528" />
        <branch name="LES(1)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="808" y="2976" type="branch" />
            <wire x2="816" y1="2976" y2="2976" x1="624" />
            <wire x2="992" y1="2976" y2="2976" x1="816" />
        </branch>
        <bustap x2="624" y1="2912" y2="2912" x1="528" />
        <branch name="LES(0)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="808" y="2912" type="branch" />
            <wire x2="816" y1="2912" y2="2912" x1="624" />
            <wire x2="992" y1="2912" y2="2912" x1="816" />
        </branch>
        <branch name="LE">
            <wire x2="1648" y1="2912" y2="2912" x1="1376" />
        </branch>
        <iomarker fontsize="28" x="1648" y="2912" name="LE" orien="R0" />
        <instance x="1888" y="3504" name="XLXI_5" orien="R0" />
        <bustap x2="1680" y1="3248" y2="3248" x1="1584" />
        <branch name="Scan(1)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1784" y="3248" type="branch" />
            <wire x2="1792" y1="3248" y2="3248" x1="1680" />
            <wire x2="1888" y1="3248" y2="3248" x1="1792" />
        </branch>
        <bustap x2="1680" y1="3184" y2="3184" x1="1584" />
        <branch name="Scan(0)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1784" y="3184" type="branch" />
            <wire x2="1792" y1="3184" y2="3184" x1="1680" />
            <wire x2="1888" y1="3184" y2="3184" x1="1792" />
        </branch>
        <instance x="1712" y="3376" name="XLXI_6" orien="R0" />
        <branch name="XLXN_28">
            <wire x2="1776" y1="3376" y2="3440" x1="1776" />
            <wire x2="1872" y1="3440" y2="3440" x1="1776" />
            <wire x2="1872" y1="3376" y2="3440" x1="1872" />
            <wire x2="1888" y1="3376" y2="3376" x1="1872" />
        </branch>
        <branch name="AN(3:0)">
            <wire x2="2864" y1="3072" y2="3168" x1="2864" />
            <wire x2="2864" y1="3168" y2="3184" x1="2864" />
            <wire x2="2864" y1="3184" y2="3232" x1="2864" />
            <wire x2="2864" y1="3232" y2="3248" x1="2864" />
            <wire x2="2864" y1="3248" y2="3312" x1="2864" />
            <wire x2="2864" y1="3312" y2="3376" x1="2864" />
            <wire x2="2864" y1="3376" y2="3392" x1="2864" />
            <wire x2="2864" y1="3392" y2="3456" x1="2864" />
            <wire x2="3168" y1="3456" y2="3456" x1="2864" />
        </branch>
        <iomarker fontsize="28" x="3168" y="3456" name="AN(3:0)" orien="R0" />
        <branch name="XLXN_38">
            <wire x2="2304" y1="3376" y2="3376" x1="2272" />
        </branch>
        <branch name="XLXN_39">
            <wire x2="2304" y1="3312" y2="3312" x1="2272" />
        </branch>
        <branch name="XLXN_40">
            <wire x2="2304" y1="3248" y2="3248" x1="2272" />
        </branch>
        <branch name="XLXN_41">
            <wire x2="2304" y1="3184" y2="3184" x1="2272" />
        </branch>
        <instance x="2304" y="3408" name="XLXI_11" orien="R0" />
        <bustap x2="2768" y1="3376" y2="3376" x1="2864" />
        <branch name="AN(3)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="2648" y="3376" type="branch" />
            <wire x2="2656" y1="3376" y2="3376" x1="2528" />
            <wire x2="2768" y1="3376" y2="3376" x1="2656" />
        </branch>
        <bustap x2="2768" y1="3312" y2="3312" x1="2864" />
        <branch name="AN(2)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="2648" y="3312" type="branch" />
            <wire x2="2656" y1="3312" y2="3312" x1="2528" />
            <wire x2="2768" y1="3312" y2="3312" x1="2656" />
        </branch>
        <bustap x2="2768" y1="3248" y2="3248" x1="2864" />
        <branch name="AN(1)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="2648" y="3248" type="branch" />
            <wire x2="2656" y1="3248" y2="3248" x1="2528" />
            <wire x2="2768" y1="3248" y2="3248" x1="2656" />
        </branch>
        <bustap x2="2768" y1="3184" y2="3184" x1="2864" />
        <branch name="AN(0)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="2648" y="3184" type="branch" />
            <wire x2="2656" y1="3184" y2="3184" x1="2528" />
            <wire x2="2768" y1="3184" y2="3184" x1="2656" />
        </branch>
    </sheet>
</drawing>