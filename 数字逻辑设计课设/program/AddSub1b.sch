<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="kintex7" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="XLXN_5" />
        <signal name="XLXN_6" />
        <signal name="XLXN_7" />
        <signal name="XLXN_8" />
        <signal name="XLXN_9" />
        <signal name="C0" />
        <signal name="S" />
        <signal name="XLXN_16" />
        <signal name="XLXN_15" />
        <signal name="XLXN_11" />
        <signal name="XLXN_10" />
        <signal name="C" />
        <signal name="A" />
        <signal name="XLXN_38" />
        <signal name="XLXN_39" />
        <signal name="XLXN_40" />
        <signal name="B" />
        <signal name="Ctrl" />
        <port polarity="Output" name="C0" />
        <port polarity="Output" name="S" />
        <port polarity="Input" name="C" />
        <port polarity="Input" name="A" />
        <port polarity="Input" name="B" />
        <port polarity="Input" name="Ctrl" />
        <blockdef name="xor2">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-64" y2="-64" x1="0" />
            <line x2="60" y1="-128" y2="-128" x1="0" />
            <line x2="208" y1="-96" y2="-96" x1="256" />
            <arc ex="44" ey="-144" sx="48" sy="-48" r="56" cx="16" cy="-96" />
            <arc ex="64" ey="-144" sx="64" sy="-48" r="56" cx="32" cy="-96" />
            <line x2="64" y1="-144" y2="-144" x1="128" />
            <line x2="64" y1="-48" y2="-48" x1="128" />
            <arc ex="128" ey="-144" sx="208" sy="-96" r="88" cx="132" cy="-56" />
            <arc ex="208" ey="-96" sx="128" sy="-48" r="88" cx="132" cy="-136" />
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
        <blockdef name="or3">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="48" y1="-64" y2="-64" x1="0" />
            <line x2="72" y1="-128" y2="-128" x1="0" />
            <line x2="48" y1="-192" y2="-192" x1="0" />
            <line x2="192" y1="-128" y2="-128" x1="256" />
            <arc ex="192" ey="-128" sx="112" sy="-80" r="88" cx="116" cy="-168" />
            <arc ex="48" ey="-176" sx="48" sy="-80" r="56" cx="16" cy="-128" />
            <line x2="48" y1="-64" y2="-80" x1="48" />
            <line x2="48" y1="-192" y2="-176" x1="48" />
            <line x2="48" y1="-80" y2="-80" x1="112" />
            <arc ex="112" ey="-176" sx="192" sy="-128" r="88" cx="116" cy="-88" />
            <line x2="48" y1="-176" y2="-176" x1="112" />
        </blockdef>
        <block symbolname="or3" name="XLXI_6">
            <blockpin signalname="XLXN_15" name="I0" />
            <blockpin signalname="XLXN_11" name="I1" />
            <blockpin signalname="XLXN_10" name="I2" />
            <blockpin signalname="C0" name="O" />
        </block>
        <block symbolname="and2" name="XLXI_5">
            <blockpin signalname="C" name="I0" />
            <blockpin signalname="A" name="I1" />
            <blockpin signalname="XLXN_15" name="O" />
        </block>
        <block symbolname="and2" name="XLXI_4">
            <blockpin signalname="C" name="I0" />
            <blockpin signalname="XLXN_39" name="I1" />
            <blockpin signalname="XLXN_11" name="O" />
        </block>
        <block symbolname="and2" name="XLXI_3">
            <blockpin signalname="XLXN_39" name="I0" />
            <blockpin signalname="A" name="I1" />
            <blockpin signalname="XLXN_10" name="O" />
        </block>
        <block symbolname="xor2" name="XLXI_2">
            <blockpin signalname="C" name="I0" />
            <blockpin signalname="XLXN_16" name="I1" />
            <blockpin signalname="S" name="O" />
        </block>
        <block symbolname="xor2" name="XLXI_1">
            <blockpin signalname="XLXN_39" name="I0" />
            <blockpin signalname="A" name="I1" />
            <blockpin signalname="XLXN_16" name="O" />
        </block>
        <block symbolname="xor2" name="XLXI_19">
            <blockpin signalname="Ctrl" name="I0" />
            <blockpin signalname="B" name="I1" />
            <blockpin signalname="XLXN_39" name="O" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="5440" height="3520">
        <instance x="1808" y="1296" name="XLXI_6" orien="R0" />
        <instance x="1360" y="1408" name="XLXI_5" orien="R0" />
        <instance x="1360" y="1264" name="XLXI_4" orien="R0" />
        <instance x="1360" y="1120" name="XLXI_3" orien="R0" />
        <instance x="1744" y="832" name="XLXI_2" orien="R0" />
        <instance x="1104" y="560" name="XLXI_1" orien="R0" />
        <branch name="C0">
            <wire x2="2096" y1="1168" y2="1168" x1="2064" />
        </branch>
        <branch name="S">
            <wire x2="2400" y1="736" y2="736" x1="2000" />
        </branch>
        <branch name="XLXN_16">
            <wire x2="1552" y1="464" y2="464" x1="1360" />
            <wire x2="1552" y1="464" y2="704" x1="1552" />
            <wire x2="1744" y1="704" y2="704" x1="1552" />
        </branch>
        <branch name="XLXN_15">
            <wire x2="1808" y1="1312" y2="1312" x1="1616" />
            <wire x2="1808" y1="1232" y2="1312" x1="1808" />
        </branch>
        <branch name="XLXN_11">
            <wire x2="1808" y1="1168" y2="1168" x1="1616" />
        </branch>
        <branch name="XLXN_10">
            <wire x2="1808" y1="1024" y2="1024" x1="1616" />
            <wire x2="1808" y1="1024" y2="1104" x1="1808" />
        </branch>
        <branch name="C">
            <wire x2="1168" y1="768" y2="768" x1="768" />
            <wire x2="1168" y1="768" y2="1200" x1="1168" />
            <wire x2="1360" y1="1200" y2="1200" x1="1168" />
            <wire x2="1168" y1="1200" y2="1344" x1="1168" />
            <wire x2="1360" y1="1344" y2="1344" x1="1168" />
            <wire x2="1744" y1="768" y2="768" x1="1168" />
        </branch>
        <branch name="A">
            <wire x2="896" y1="432" y2="432" x1="752" />
            <wire x2="1104" y1="432" y2="432" x1="896" />
            <wire x2="896" y1="432" y2="992" x1="896" />
            <wire x2="1360" y1="992" y2="992" x1="896" />
            <wire x2="896" y1="992" y2="1280" x1="896" />
            <wire x2="1360" y1="1280" y2="1280" x1="896" />
        </branch>
        <iomarker fontsize="28" x="752" y="432" name="A" orien="R180" />
        <iomarker fontsize="28" x="768" y="768" name="C" orien="R180" />
        <iomarker fontsize="28" x="2096" y="1168" name="C0" orien="R0" />
        <iomarker fontsize="28" x="2400" y="736" name="S" orien="R0" />
        <branch name="XLXN_39">
            <wire x2="992" y1="496" y2="496" x1="800" />
            <wire x2="1104" y1="496" y2="496" x1="992" />
            <wire x2="992" y1="496" y2="1056" x1="992" />
            <wire x2="1360" y1="1056" y2="1056" x1="992" />
            <wire x2="992" y1="1056" y2="1136" x1="992" />
            <wire x2="1360" y1="1136" y2="1136" x1="992" />
        </branch>
        <instance x="544" y="592" name="XLXI_19" orien="R0" />
        <branch name="B">
            <wire x2="544" y1="464" y2="464" x1="512" />
        </branch>
        <iomarker fontsize="28" x="512" y="464" name="B" orien="R180" />
        <branch name="Ctrl">
            <wire x2="544" y1="528" y2="528" x1="512" />
        </branch>
        <iomarker fontsize="28" x="512" y="528" name="Ctrl" orien="R180" />
    </sheet>
</drawing>