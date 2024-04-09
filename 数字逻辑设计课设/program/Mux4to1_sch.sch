<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="kintex7" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="XLXN_2" />
        <signal name="XLXN_3" />
        <signal name="XLXN_4" />
        <signal name="XLXN_5" />
        <signal name="XLXN_6" />
        <signal name="XLXN_7" />
        <signal name="s(1)" />
        <signal name="XLXN_9" />
        <signal name="s(0)" />
        <signal name="XLXN_11" />
        <signal name="XLXN_12" />
        <signal name="XLXN_13" />
        <signal name="XLXN_14" />
        <signal name="XLXN_15" />
        <signal name="XLXN_17" />
        <signal name="XLXN_18" />
        <signal name="XLXN_19" />
        <signal name="XLXN_21" />
        <signal name="I0" />
        <signal name="I1" />
        <signal name="XLXN_25" />
        <signal name="I2" />
        <signal name="I3" />
        <signal name="s(1:0)" />
        <signal name="o" />
        <port polarity="Input" name="I0" />
        <port polarity="Input" name="I1" />
        <port polarity="Input" name="I2" />
        <port polarity="Input" name="I3" />
        <port polarity="Input" name="s(1:0)" />
        <port polarity="Output" name="o" />
        <blockdef name="inv">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-32" y2="-32" x1="0" />
            <line x2="160" y1="-32" y2="-32" x1="224" />
            <line x2="128" y1="-64" y2="-32" x1="64" />
            <line x2="64" y1="-32" y2="0" x1="128" />
            <line x2="64" y1="0" y2="-64" x1="64" />
            <circle r="16" cx="144" cy="-32" />
        </blockdef>
        <blockdef name="and2">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-64" y2="-64" x1="0" />
            <line x2="64" y1="-128" y2="-128" x1="0" />
            <line x2="192" y1="-96" y2="-96" x1="256" />
            <arc ex="144" ey="-144" sx="144" sy="-48" r="48" cx="144" cy="-96" />
            <line x2="64" y1="-48" y2="-48" x1="144" />
            <line x2="144" y1="-144" y2="-144" x1="64" />
            <line x2="64" y1="-48" y2="-144" x1="64" />
        </blockdef>
        <blockdef name="or4">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="48" y1="-64" y2="-64" x1="0" />
            <line x2="64" y1="-128" y2="-128" x1="0" />
            <line x2="64" y1="-192" y2="-192" x1="0" />
            <line x2="48" y1="-256" y2="-256" x1="0" />
            <line x2="192" y1="-160" y2="-160" x1="256" />
            <arc ex="112" ey="-208" sx="192" sy="-160" r="88" cx="116" cy="-120" />
            <line x2="48" y1="-208" y2="-208" x1="112" />
            <line x2="48" y1="-112" y2="-112" x1="112" />
            <line x2="48" y1="-256" y2="-208" x1="48" />
            <line x2="48" y1="-64" y2="-112" x1="48" />
            <arc ex="48" ey="-208" sx="48" sy="-112" r="56" cx="16" cy="-160" />
            <arc ex="192" ey="-160" sx="112" sy="-112" r="88" cx="116" cy="-200" />
        </blockdef>
        <block symbolname="inv" name="XLXI_1">
            <blockpin signalname="s(1)" name="I" />
            <blockpin signalname="XLXN_4" name="O" />
        </block>
        <block symbolname="inv" name="XLXI_2">
            <blockpin signalname="s(0)" name="I" />
            <blockpin signalname="XLXN_6" name="O" />
        </block>
        <block symbolname="and2" name="XLXI_3">
            <blockpin signalname="XLXN_6" name="I0" />
            <blockpin signalname="XLXN_4" name="I1" />
            <blockpin signalname="XLXN_11" name="O" />
        </block>
        <block symbolname="and2" name="XLXI_4">
            <blockpin signalname="s(0)" name="I0" />
            <blockpin signalname="XLXN_4" name="I1" />
            <blockpin signalname="XLXN_12" name="O" />
        </block>
        <block symbolname="and2" name="XLXI_5">
            <blockpin signalname="s(1)" name="I0" />
            <blockpin signalname="XLXN_6" name="I1" />
            <blockpin signalname="XLXN_13" name="O" />
        </block>
        <block symbolname="and2" name="XLXI_6">
            <blockpin signalname="s(1)" name="I0" />
            <blockpin signalname="s(0)" name="I1" />
            <blockpin signalname="XLXN_14" name="O" />
        </block>
        <block symbolname="and2" name="XLXI_7">
            <blockpin signalname="I0" name="I0" />
            <blockpin signalname="XLXN_11" name="I1" />
            <blockpin signalname="XLXN_17" name="O" />
        </block>
        <block symbolname="and2" name="XLXI_8">
            <blockpin signalname="I1" name="I0" />
            <blockpin signalname="XLXN_12" name="I1" />
            <blockpin signalname="XLXN_15" name="O" />
        </block>
        <block symbolname="and2" name="XLXI_9">
            <blockpin signalname="I2" name="I0" />
            <blockpin signalname="XLXN_13" name="I1" />
            <blockpin signalname="XLXN_18" name="O" />
        </block>
        <block symbolname="and2" name="XLXI_10">
            <blockpin signalname="I3" name="I0" />
            <blockpin signalname="XLXN_14" name="I1" />
            <blockpin signalname="XLXN_19" name="O" />
        </block>
        <block symbolname="or4" name="XLXI_11">
            <blockpin signalname="XLXN_19" name="I0" />
            <blockpin signalname="XLXN_18" name="I1" />
            <blockpin signalname="XLXN_15" name="I2" />
            <blockpin signalname="XLXN_17" name="I3" />
            <blockpin signalname="o" name="O" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <instance x="1056" y="528" name="XLXI_1" orien="R0" />
        <instance x="1056" y="1040" name="XLXI_2" orien="R0" />
        <instance x="1840" y="656" name="XLXI_3" orien="R0" />
        <instance x="1840" y="1040" name="XLXI_4" orien="R0" />
        <instance x="1824" y="1552" name="XLXI_5" orien="R0" />
        <instance x="1824" y="1968" name="XLXI_6" orien="R0" />
        <instance x="2416" y="880" name="XLXI_7" orien="R0" />
        <instance x="2416" y="1376" name="XLXI_8" orien="R0" />
        <instance x="2400" y="1840" name="XLXI_9" orien="R0" />
        <instance x="2400" y="2304" name="XLXI_10" orien="R0" />
        <instance x="2960" y="1520" name="XLXI_11" orien="R0" />
        <branch name="XLXN_4">
            <wire x2="1552" y1="496" y2="496" x1="1280" />
            <wire x2="1552" y1="496" y2="528" x1="1552" />
            <wire x2="1840" y1="528" y2="528" x1="1552" />
            <wire x2="1552" y1="528" y2="912" x1="1552" />
            <wire x2="1840" y1="912" y2="912" x1="1552" />
        </branch>
        <branch name="XLXN_6">
            <wire x2="1536" y1="1008" y2="1008" x1="1280" />
            <wire x2="1536" y1="1008" y2="1424" x1="1536" />
            <wire x2="1824" y1="1424" y2="1424" x1="1536" />
            <wire x2="1536" y1="592" y2="1008" x1="1536" />
            <wire x2="1840" y1="592" y2="592" x1="1536" />
        </branch>
        <branch name="s(1)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="576" y="496" type="branch" />
            <wire x2="576" y1="496" y2="496" x1="400" />
            <wire x2="752" y1="496" y2="496" x1="576" />
            <wire x2="896" y1="496" y2="496" x1="752" />
            <wire x2="1056" y1="496" y2="496" x1="896" />
            <wire x2="896" y1="496" y2="1488" x1="896" />
            <wire x2="1824" y1="1488" y2="1488" x1="896" />
            <wire x2="896" y1="1488" y2="1904" x1="896" />
            <wire x2="1824" y1="1904" y2="1904" x1="896" />
        </branch>
        <branch name="s(0)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="544" y="1008" type="branch" />
            <wire x2="544" y1="1008" y2="1008" x1="400" />
            <wire x2="688" y1="1008" y2="1008" x1="544" />
            <wire x2="1008" y1="1008" y2="1008" x1="688" />
            <wire x2="1024" y1="1008" y2="1008" x1="1008" />
            <wire x2="1056" y1="1008" y2="1008" x1="1024" />
            <wire x2="1024" y1="1008" y2="1840" x1="1024" />
            <wire x2="1824" y1="1840" y2="1840" x1="1024" />
            <wire x2="1008" y1="912" y2="1008" x1="1008" />
            <wire x2="1344" y1="912" y2="912" x1="1008" />
            <wire x2="1344" y1="912" y2="976" x1="1344" />
            <wire x2="1840" y1="976" y2="976" x1="1344" />
        </branch>
        <branch name="XLXN_11">
            <wire x2="2256" y1="560" y2="560" x1="2096" />
            <wire x2="2256" y1="560" y2="752" x1="2256" />
            <wire x2="2416" y1="752" y2="752" x1="2256" />
        </branch>
        <branch name="XLXN_12">
            <wire x2="2256" y1="944" y2="944" x1="2096" />
            <wire x2="2256" y1="944" y2="1248" x1="2256" />
            <wire x2="2416" y1="1248" y2="1248" x1="2256" />
        </branch>
        <branch name="XLXN_13">
            <wire x2="2240" y1="1456" y2="1456" x1="2080" />
            <wire x2="2240" y1="1456" y2="1712" x1="2240" />
            <wire x2="2400" y1="1712" y2="1712" x1="2240" />
        </branch>
        <branch name="XLXN_14">
            <wire x2="2240" y1="1872" y2="1872" x1="2080" />
            <wire x2="2240" y1="1872" y2="2176" x1="2240" />
            <wire x2="2400" y1="2176" y2="2176" x1="2240" />
        </branch>
        <branch name="XLXN_15">
            <wire x2="2816" y1="1280" y2="1280" x1="2672" />
            <wire x2="2816" y1="1280" y2="1328" x1="2816" />
            <wire x2="2960" y1="1328" y2="1328" x1="2816" />
        </branch>
        <branch name="XLXN_17">
            <wire x2="2960" y1="784" y2="784" x1="2672" />
            <wire x2="2960" y1="784" y2="1264" x1="2960" />
        </branch>
        <branch name="XLXN_18">
            <wire x2="2800" y1="1744" y2="1744" x1="2656" />
            <wire x2="2800" y1="1392" y2="1744" x1="2800" />
            <wire x2="2960" y1="1392" y2="1392" x1="2800" />
        </branch>
        <branch name="XLXN_19">
            <wire x2="2960" y1="2208" y2="2208" x1="2656" />
            <wire x2="2960" y1="1456" y2="2208" x1="2960" />
        </branch>
        <branch name="I0">
            <wire x2="1488" y1="2112" y2="2112" x1="896" />
            <wire x2="1488" y1="816" y2="2112" x1="1488" />
            <wire x2="2080" y1="816" y2="816" x1="1488" />
            <wire x2="2416" y1="816" y2="816" x1="2080" />
        </branch>
        <branch name="I1">
            <wire x2="1760" y1="2256" y2="2256" x1="912" />
            <wire x2="1872" y1="1312" y2="1312" x1="1760" />
            <wire x2="2416" y1="1312" y2="1312" x1="1872" />
            <wire x2="1760" y1="1312" y2="2256" x1="1760" />
        </branch>
        <branch name="I2">
            <wire x2="2128" y1="2352" y2="2352" x1="960" />
            <wire x2="2400" y1="1776" y2="1776" x1="2128" />
            <wire x2="2128" y1="1776" y2="2352" x1="2128" />
        </branch>
        <branch name="I3">
            <wire x2="2240" y1="2464" y2="2464" x1="848" />
            <wire x2="2400" y1="2240" y2="2240" x1="2240" />
            <wire x2="2240" y1="2240" y2="2464" x1="2240" />
        </branch>
        <branch name="s(1:0)">
            <wire x2="176" y1="720" y2="736" x1="176" />
            <wire x2="304" y1="736" y2="736" x1="176" />
            <wire x2="304" y1="736" y2="1008" x1="304" />
            <wire x2="304" y1="1008" y2="1024" x1="304" />
            <wire x2="304" y1="464" y2="496" x1="304" />
            <wire x2="304" y1="496" y2="736" x1="304" />
        </branch>
        <iomarker fontsize="28" x="176" y="720" name="s(1:0)" orien="R270" />
        <bustap x2="400" y1="496" y2="496" x1="304" />
        <bustap x2="400" y1="1008" y2="1008" x1="304" />
        <iomarker fontsize="28" x="896" y="2112" name="I0" orien="R180" />
        <iomarker fontsize="28" x="912" y="2256" name="I1" orien="R180" />
        <iomarker fontsize="28" x="960" y="2352" name="I2" orien="R180" />
        <iomarker fontsize="28" x="848" y="2464" name="I3" orien="R180" />
        <branch name="o">
            <wire x2="3248" y1="1360" y2="1360" x1="3216" />
        </branch>
        <iomarker fontsize="28" x="3248" y="1360" name="o" orien="R0" />
    </sheet>
</drawing>