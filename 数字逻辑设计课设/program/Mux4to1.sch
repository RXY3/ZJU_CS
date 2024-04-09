<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="kintex7" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="XLXN_2" />
        <signal name="XLXN_4" />
        <signal name="XLXN_12" />
        <signal name="XLXN_13" />
        <signal name="XLXN_14" />
        <signal name="XLXN_15" />
        <signal name="I0" />
        <signal name="I1" />
        <signal name="I2" />
        <signal name="I3" />
        <signal name="XLXN_21" />
        <signal name="XLXN_22" />
        <signal name="XLXN_25" />
        <signal name="XLXN_26" />
        <signal name="o" />
        <signal name="s(1:0)" />
        <signal name="s(1)" />
        <signal name="s(0)" />
        <signal name="XLXN_27" />
        <signal name="XLXN_28" />
        <port polarity="Input" name="I0" />
        <port polarity="Input" name="I1" />
        <port polarity="Input" name="I2" />
        <port polarity="Input" name="I3" />
        <port polarity="Output" name="o" />
        <port polarity="Input" name="s(1:0)" />
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
        <block symbolname="inv" name="XLXI_3">
            <blockpin signalname="s(1)" name="I" />
            <blockpin signalname="XLXN_2" name="O" />
        </block>
        <block symbolname="inv" name="XLXI_4">
            <blockpin signalname="s(0)" name="I" />
            <blockpin signalname="XLXN_4" name="O" />
        </block>
        <block symbolname="and2" name="XLXI_5">
            <blockpin signalname="XLXN_4" name="I0" />
            <blockpin signalname="XLXN_2" name="I1" />
            <blockpin signalname="XLXN_12" name="O" />
        </block>
        <block symbolname="and2" name="XLXI_6">
            <blockpin signalname="s(0)" name="I0" />
            <blockpin signalname="XLXN_2" name="I1" />
            <blockpin signalname="XLXN_13" name="O" />
        </block>
        <block symbolname="and2" name="XLXI_7">
            <blockpin signalname="s(1)" name="I0" />
            <blockpin signalname="XLXN_4" name="I1" />
            <blockpin signalname="XLXN_14" name="O" />
        </block>
        <block symbolname="and2" name="XLXI_8">
            <blockpin signalname="s(1)" name="I0" />
            <blockpin signalname="s(0)" name="I1" />
            <blockpin signalname="XLXN_15" name="O" />
        </block>
        <block symbolname="and2" name="XLXI_9">
            <blockpin signalname="I0" name="I0" />
            <blockpin signalname="XLXN_12" name="I1" />
            <blockpin signalname="XLXN_21" name="O" />
        </block>
        <block symbolname="and2" name="XLXI_10">
            <blockpin signalname="I1" name="I0" />
            <blockpin signalname="XLXN_13" name="I1" />
            <blockpin signalname="XLXN_22" name="O" />
        </block>
        <block symbolname="and2" name="XLXI_11">
            <blockpin signalname="I2" name="I0" />
            <blockpin signalname="XLXN_14" name="I1" />
            <blockpin signalname="XLXN_25" name="O" />
        </block>
        <block symbolname="and2" name="XLXI_12">
            <blockpin signalname="I3" name="I0" />
            <blockpin signalname="XLXN_15" name="I1" />
            <blockpin signalname="XLXN_26" name="O" />
        </block>
        <block symbolname="or4" name="XLXI_13">
            <blockpin signalname="XLXN_26" name="I0" />
            <blockpin signalname="XLXN_25" name="I1" />
            <blockpin signalname="XLXN_22" name="I2" />
            <blockpin signalname="XLXN_21" name="I3" />
            <blockpin signalname="o" name="O" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <instance x="672" y="496" name="XLXI_4" orien="R0" />
        <instance x="1200" y="416" name="XLXI_5" orien="R0" />
        <instance x="1200" y="544" name="XLXI_6" orien="R0" />
        <instance x="1200" y="672" name="XLXI_7" orien="R0" />
        <instance x="1200" y="800" name="XLXI_8" orien="R0" />
        <branch name="XLXN_2">
            <wire x2="1040" y1="240" y2="240" x1="896" />
            <wire x2="1040" y1="240" y2="288" x1="1040" />
            <wire x2="1200" y1="288" y2="288" x1="1040" />
            <wire x2="1040" y1="288" y2="416" x1="1040" />
            <wire x2="1200" y1="416" y2="416" x1="1040" />
        </branch>
        <branch name="XLXN_4">
            <wire x2="1024" y1="464" y2="464" x1="896" />
            <wire x2="1024" y1="464" y2="544" x1="1024" />
            <wire x2="1200" y1="544" y2="544" x1="1024" />
            <wire x2="1024" y1="352" y2="464" x1="1024" />
            <wire x2="1200" y1="352" y2="352" x1="1024" />
        </branch>
        <instance x="672" y="272" name="XLXI_3" orien="R0" />
        <instance x="1728" y="464" name="XLXI_9" orien="R0" />
        <instance x="1728" y="592" name="XLXI_10" orien="R0" />
        <instance x="1728" y="720" name="XLXI_11" orien="R0" />
        <instance x="1728" y="848" name="XLXI_12" orien="R0" />
        <branch name="XLXN_12">
            <wire x2="1584" y1="320" y2="320" x1="1456" />
            <wire x2="1584" y1="320" y2="336" x1="1584" />
            <wire x2="1728" y1="336" y2="336" x1="1584" />
        </branch>
        <branch name="XLXN_13">
            <wire x2="1584" y1="448" y2="448" x1="1456" />
            <wire x2="1584" y1="448" y2="464" x1="1584" />
            <wire x2="1728" y1="464" y2="464" x1="1584" />
        </branch>
        <branch name="XLXN_14">
            <wire x2="1584" y1="576" y2="576" x1="1456" />
            <wire x2="1584" y1="576" y2="592" x1="1584" />
            <wire x2="1728" y1="592" y2="592" x1="1584" />
        </branch>
        <branch name="XLXN_15">
            <wire x2="1584" y1="704" y2="704" x1="1456" />
            <wire x2="1584" y1="704" y2="720" x1="1584" />
            <wire x2="1728" y1="720" y2="720" x1="1584" />
        </branch>
        <branch name="I0">
            <wire x2="928" y1="976" y2="976" x1="688" />
            <wire x2="1520" y1="976" y2="976" x1="928" />
            <wire x2="1520" y1="400" y2="976" x1="1520" />
            <wire x2="1728" y1="400" y2="400" x1="1520" />
        </branch>
        <iomarker fontsize="28" x="688" y="976" name="I0" orien="R180" />
        <branch name="I1">
            <wire x2="1440" y1="1056" y2="1056" x1="784" />
            <wire x2="1568" y1="1056" y2="1056" x1="1440" />
            <wire x2="1568" y1="528" y2="1056" x1="1568" />
            <wire x2="1728" y1="528" y2="528" x1="1568" />
        </branch>
        <iomarker fontsize="28" x="784" y="1056" name="I1" orien="R180" />
        <branch name="I2">
            <wire x2="1360" y1="1136" y2="1136" x1="720" />
            <wire x2="1536" y1="1136" y2="1136" x1="1360" />
            <wire x2="1536" y1="656" y2="1136" x1="1536" />
            <wire x2="1728" y1="656" y2="656" x1="1536" />
        </branch>
        <iomarker fontsize="28" x="720" y="1136" name="I2" orien="R180" />
        <branch name="I3">
            <wire x2="1408" y1="1216" y2="1216" x1="720" />
            <wire x2="1728" y1="784" y2="784" x1="1408" />
            <wire x2="1408" y1="784" y2="1216" x1="1408" />
        </branch>
        <iomarker fontsize="28" x="720" y="1216" name="I3" orien="R180" />
        <instance x="2096" y="704" name="XLXI_13" orien="R0" />
        <branch name="XLXN_21">
            <wire x2="2096" y1="368" y2="368" x1="1984" />
            <wire x2="2096" y1="368" y2="448" x1="2096" />
        </branch>
        <branch name="XLXN_22">
            <wire x2="2032" y1="496" y2="496" x1="1984" />
            <wire x2="2032" y1="496" y2="512" x1="2032" />
            <wire x2="2096" y1="512" y2="512" x1="2032" />
        </branch>
        <branch name="XLXN_25">
            <wire x2="2032" y1="624" y2="624" x1="1984" />
            <wire x2="2032" y1="576" y2="624" x1="2032" />
            <wire x2="2096" y1="576" y2="576" x1="2032" />
        </branch>
        <branch name="XLXN_26">
            <wire x2="2096" y1="752" y2="752" x1="1984" />
            <wire x2="2096" y1="640" y2="752" x1="2096" />
        </branch>
        <branch name="o">
            <wire x2="2384" y1="544" y2="544" x1="2352" />
        </branch>
        <iomarker fontsize="28" x="2384" y="544" name="o" orien="R0" />
        <iomarker fontsize="28" x="272" y="320" name="s(1:0)" orien="R180" />
        <branch name="s(1:0)">
            <wire x2="336" y1="320" y2="320" x1="272" />
            <wire x2="336" y1="320" y2="464" x1="336" />
            <wire x2="336" y1="240" y2="288" x1="336" />
            <wire x2="336" y1="288" y2="320" x1="336" />
        </branch>
        <bustap x2="432" y1="240" y2="240" x1="336" />
        <branch name="s(1)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="552" y="240" type="branch" />
            <wire x2="512" y1="240" y2="240" x1="432" />
            <wire x2="560" y1="240" y2="240" x1="512" />
            <wire x2="672" y1="240" y2="240" x1="560" />
            <wire x2="512" y1="240" y2="608" x1="512" />
            <wire x2="512" y1="608" y2="736" x1="512" />
            <wire x2="1200" y1="736" y2="736" x1="512" />
            <wire x2="1200" y1="608" y2="608" x1="512" />
        </branch>
        <bustap x2="432" y1="464" y2="464" x1="336" />
        <branch name="s(0)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="552" y="464" type="branch" />
            <wire x2="560" y1="464" y2="464" x1="432" />
            <wire x2="656" y1="464" y2="464" x1="560" />
            <wire x2="672" y1="464" y2="464" x1="656" />
            <wire x2="656" y1="352" y2="464" x1="656" />
            <wire x2="960" y1="352" y2="352" x1="656" />
            <wire x2="960" y1="352" y2="480" x1="960" />
            <wire x2="1200" y1="480" y2="480" x1="960" />
            <wire x2="960" y1="480" y2="672" x1="960" />
            <wire x2="1200" y1="672" y2="672" x1="960" />
        </branch>
    </sheet>
</drawing>