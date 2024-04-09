<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="kintex7" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="s(1:0)" />
        <signal name="s(1)" />
        <signal name="s(0)" />
        <signal name="XLXN_5" />
        <signal name="XLXN_7" />
        <signal name="XLXN_19" />
        <signal name="XLXN_20" />
        <signal name="XLXN_21" />
        <signal name="XLXN_22" />
        <signal name="XLXN_23" />
        <signal name="XLXN_24" />
        <signal name="XLXN_25" />
        <signal name="XLXN_28" />
        <signal name="XLXN_29" />
        <signal name="XLXN_30" />
        <signal name="XLXN_31" />
        <signal name="XLXN_32" />
        <signal name="XLXN_33" />
        <signal name="XLXN_34" />
        <signal name="XLXN_35" />
        <signal name="XLXN_36" />
        <signal name="XLXN_37" />
        <signal name="XLXN_40" />
        <signal name="XLXN_45" />
        <signal name="XLXN_48" />
        <signal name="I0(3:0)" />
        <signal name="I0(2)" />
        <signal name="I0(0)" />
        <signal name="I0(1)" />
        <signal name="I1(3:0)" />
        <signal name="I1(2)" />
        <signal name="I1(1)" />
        <signal name="I1(0)" />
        <signal name="I1(3)" />
        <signal name="I2(3:0)" />
        <signal name="I2(2)" />
        <signal name="I2(3)" />
        <signal name="I2(1)" />
        <signal name="I2(0)" />
        <signal name="I3(3:0)" />
        <signal name="I3(2)" />
        <signal name="I3(3)" />
        <signal name="I3(1)" />
        <signal name="I3(0)" />
        <signal name="o(3:0)" />
        <signal name="o(0)" />
        <signal name="o(3)" />
        <signal name="o(2)" />
        <signal name="o(1)" />
        <signal name="I0(3)" />
        <port polarity="Input" name="s(1:0)" />
        <port polarity="Input" name="I0(3:0)" />
        <port polarity="Input" name="I1(3:0)" />
        <port polarity="Input" name="I2(3:0)" />
        <port polarity="Input" name="I3(3:0)" />
        <port polarity="Output" name="o(3:0)" />
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
            <blockpin signalname="s(0)" name="I" />
            <blockpin signalname="XLXN_7" name="O" />
        </block>
        <block symbolname="inv" name="XLXI_2">
            <blockpin signalname="s(1)" name="I" />
            <blockpin signalname="XLXN_5" name="O" />
        </block>
        <block symbolname="and2" name="XLXI_3">
            <blockpin signalname="XLXN_7" name="I0" />
            <blockpin signalname="XLXN_5" name="I1" />
            <blockpin signalname="XLXN_37" name="O" />
        </block>
        <block symbolname="and2" name="XLXI_4">
            <blockpin signalname="s(0)" name="I0" />
            <blockpin signalname="XLXN_5" name="I1" />
            <blockpin signalname="XLXN_40" name="O" />
        </block>
        <block symbolname="and2" name="XLXI_5">
            <blockpin signalname="s(1)" name="I0" />
            <blockpin signalname="XLXN_7" name="I1" />
            <blockpin signalname="XLXN_45" name="O" />
        </block>
        <block symbolname="and2" name="XLXI_6">
            <blockpin signalname="s(1)" name="I0" />
            <blockpin signalname="s(0)" name="I1" />
            <blockpin signalname="XLXN_48" name="O" />
        </block>
        <block symbolname="and2" name="XLXI_7">
            <blockpin signalname="I0(0)" name="I0" />
            <blockpin signalname="XLXN_37" name="I1" />
            <blockpin signalname="XLXN_19" name="O" />
        </block>
        <block symbolname="and2" name="XLXI_8">
            <blockpin signalname="I1(0)" name="I0" />
            <blockpin signalname="XLXN_40" name="I1" />
            <blockpin signalname="XLXN_22" name="O" />
        </block>
        <block symbolname="and2" name="XLXI_9">
            <blockpin signalname="I2(0)" name="I0" />
            <blockpin signalname="XLXN_45" name="I1" />
            <blockpin signalname="XLXN_21" name="O" />
        </block>
        <block symbolname="and2" name="XLXI_10">
            <blockpin signalname="I3(0)" name="I0" />
            <blockpin signalname="XLXN_48" name="I1" />
            <blockpin signalname="XLXN_20" name="O" />
        </block>
        <block symbolname="or4" name="XLXI_11">
            <blockpin signalname="XLXN_20" name="I0" />
            <blockpin signalname="XLXN_21" name="I1" />
            <blockpin signalname="XLXN_22" name="I2" />
            <blockpin signalname="XLXN_19" name="I3" />
            <blockpin signalname="o(0)" name="O" />
        </block>
        <block symbolname="and2" name="XLXI_12">
            <blockpin signalname="I0(1)" name="I0" />
            <blockpin signalname="XLXN_37" name="I1" />
            <blockpin signalname="XLXN_23" name="O" />
        </block>
        <block symbolname="and2" name="XLXI_13">
            <blockpin signalname="I1(1)" name="I0" />
            <blockpin signalname="XLXN_40" name="I1" />
            <blockpin signalname="XLXN_24" name="O" />
        </block>
        <block symbolname="and2" name="XLXI_14">
            <blockpin signalname="I2(1)" name="I0" />
            <blockpin signalname="XLXN_45" name="I1" />
            <blockpin signalname="XLXN_25" name="O" />
        </block>
        <block symbolname="and2" name="XLXI_15">
            <blockpin signalname="I3(1)" name="I0" />
            <blockpin signalname="XLXN_48" name="I1" />
            <blockpin signalname="XLXN_28" name="O" />
        </block>
        <block symbolname="and2" name="XLXI_16">
            <blockpin signalname="I0(2)" name="I0" />
            <blockpin signalname="XLXN_37" name="I1" />
            <blockpin signalname="XLXN_29" name="O" />
        </block>
        <block symbolname="and2" name="XLXI_17">
            <blockpin signalname="I1(2)" name="I0" />
            <blockpin signalname="XLXN_40" name="I1" />
            <blockpin signalname="XLXN_30" name="O" />
        </block>
        <block symbolname="and2" name="XLXI_19">
            <blockpin signalname="I2(2)" name="I0" />
            <blockpin signalname="XLXN_45" name="I1" />
            <blockpin signalname="XLXN_31" name="O" />
        </block>
        <block symbolname="and2" name="XLXI_20">
            <blockpin signalname="I3(2)" name="I0" />
            <blockpin signalname="XLXN_48" name="I1" />
            <blockpin signalname="XLXN_32" name="O" />
        </block>
        <block symbolname="and2" name="XLXI_21">
            <blockpin signalname="I0(3)" name="I0" />
            <blockpin signalname="XLXN_37" name="I1" />
            <blockpin signalname="XLXN_33" name="O" />
        </block>
        <block symbolname="and2" name="XLXI_22">
            <blockpin signalname="I1(3)" name="I0" />
            <blockpin signalname="XLXN_40" name="I1" />
            <blockpin signalname="XLXN_34" name="O" />
        </block>
        <block symbolname="and2" name="XLXI_23">
            <blockpin signalname="I2(3)" name="I0" />
            <blockpin signalname="XLXN_45" name="I1" />
            <blockpin signalname="XLXN_35" name="O" />
        </block>
        <block symbolname="and2" name="XLXI_24">
            <blockpin signalname="I3(3)" name="I0" />
            <blockpin signalname="XLXN_48" name="I1" />
            <blockpin signalname="XLXN_36" name="O" />
        </block>
        <block symbolname="or4" name="XLXI_25">
            <blockpin signalname="XLXN_28" name="I0" />
            <blockpin signalname="XLXN_25" name="I1" />
            <blockpin signalname="XLXN_24" name="I2" />
            <blockpin signalname="XLXN_23" name="I3" />
            <blockpin signalname="o(1)" name="O" />
        </block>
        <block symbolname="or4" name="XLXI_26">
            <blockpin signalname="XLXN_32" name="I0" />
            <blockpin signalname="XLXN_31" name="I1" />
            <blockpin signalname="XLXN_30" name="I2" />
            <blockpin signalname="XLXN_29" name="I3" />
            <blockpin signalname="o(2)" name="O" />
        </block>
        <block symbolname="or4" name="XLXI_27">
            <blockpin signalname="XLXN_36" name="I0" />
            <blockpin signalname="XLXN_35" name="I1" />
            <blockpin signalname="XLXN_34" name="I2" />
            <blockpin signalname="XLXN_33" name="I3" />
            <blockpin signalname="o(3)" name="O" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="5440" height="3520">
        <branch name="s(1:0)">
            <wire x2="304" y1="176" y2="176" x1="208" />
            <wire x2="304" y1="176" y2="304" x1="304" />
            <wire x2="304" y1="304" y2="336" x1="304" />
            <wire x2="304" y1="144" y2="176" x1="304" />
        </branch>
        <iomarker fontsize="28" x="208" y="176" name="s(1:0)" orien="R180" />
        <bustap x2="400" y1="176" y2="176" x1="304" />
        <branch name="s(1)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="440" y="176" type="branch" />
            <wire x2="608" y1="176" y2="176" x1="400" />
            <wire x2="624" y1="176" y2="176" x1="608" />
            <wire x2="608" y1="176" y2="528" x1="608" />
            <wire x2="960" y1="528" y2="528" x1="608" />
            <wire x2="608" y1="528" y2="656" x1="608" />
            <wire x2="960" y1="656" y2="656" x1="608" />
        </branch>
        <bustap x2="400" y1="304" y2="304" x1="304" />
        <branch name="s(0)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="432" y="304" type="branch" />
            <wire x2="432" y1="304" y2="304" x1="400" />
            <wire x2="576" y1="304" y2="304" x1="432" />
            <wire x2="624" y1="304" y2="304" x1="576" />
            <wire x2="576" y1="304" y2="400" x1="576" />
            <wire x2="576" y1="400" y2="592" x1="576" />
            <wire x2="960" y1="592" y2="592" x1="576" />
            <wire x2="960" y1="400" y2="400" x1="576" />
        </branch>
        <branch name="XLXN_5">
            <wire x2="880" y1="176" y2="176" x1="848" />
            <wire x2="880" y1="176" y2="192" x1="880" />
            <wire x2="960" y1="192" y2="192" x1="880" />
            <wire x2="880" y1="192" y2="336" x1="880" />
            <wire x2="960" y1="336" y2="336" x1="880" />
        </branch>
        <instance x="960" y="320" name="XLXI_3" orien="R0" />
        <branch name="XLXN_7">
            <wire x2="864" y1="304" y2="304" x1="848" />
            <wire x2="864" y1="304" y2="464" x1="864" />
            <wire x2="960" y1="464" y2="464" x1="864" />
            <wire x2="960" y1="256" y2="256" x1="864" />
            <wire x2="864" y1="256" y2="304" x1="864" />
        </branch>
        <instance x="960" y="464" name="XLXI_4" orien="R0" />
        <instance x="960" y="592" name="XLXI_5" orien="R0" />
        <instance x="960" y="720" name="XLXI_6" orien="R0" />
        <instance x="624" y="336" name="XLXI_1" orien="R0" />
        <instance x="624" y="208" name="XLXI_2" orien="R0" />
        <instance x="1968" y="752" name="XLXI_10" orien="R0" />
        <instance x="1968" y="624" name="XLXI_9" orien="R0" />
        <instance x="1968" y="496" name="XLXI_8" orien="R0" />
        <instance x="1968" y="352" name="XLXI_7" orien="R0" />
        <instance x="2416" y="624" name="XLXI_11" orien="R0" />
        <branch name="XLXN_19">
            <wire x2="2416" y1="256" y2="256" x1="2224" />
            <wire x2="2416" y1="256" y2="368" x1="2416" />
        </branch>
        <branch name="XLXN_20">
            <wire x2="2416" y1="656" y2="656" x1="2224" />
            <wire x2="2416" y1="560" y2="656" x1="2416" />
        </branch>
        <branch name="XLXN_21">
            <wire x2="2320" y1="528" y2="528" x1="2224" />
            <wire x2="2320" y1="496" y2="528" x1="2320" />
            <wire x2="2416" y1="496" y2="496" x1="2320" />
        </branch>
        <branch name="XLXN_22">
            <wire x2="2320" y1="400" y2="400" x1="2224" />
            <wire x2="2320" y1="400" y2="432" x1="2320" />
            <wire x2="2416" y1="432" y2="432" x1="2320" />
        </branch>
        <instance x="1968" y="960" name="XLXI_12" orien="R0" />
        <instance x="1968" y="1088" name="XLXI_13" orien="R0" />
        <instance x="1968" y="1216" name="XLXI_14" orien="R0" />
        <instance x="1968" y="1344" name="XLXI_15" orien="R0" />
        <instance x="1968" y="1536" name="XLXI_16" orien="R0" />
        <instance x="1968" y="1664" name="XLXI_17" orien="R0" />
        <instance x="1968" y="1792" name="XLXI_19" orien="R0" />
        <instance x="1968" y="1920" name="XLXI_20" orien="R0" />
        <instance x="1968" y="2096" name="XLXI_21" orien="R0" />
        <instance x="1968" y="2224" name="XLXI_22" orien="R0" />
        <instance x="1968" y="2352" name="XLXI_23" orien="R0" />
        <instance x="1968" y="2480" name="XLXI_24" orien="R0" />
        <instance x="2432" y="1216" name="XLXI_25" orien="R0" />
        <instance x="2416" y="1792" name="XLXI_26" orien="R0" />
        <instance x="2432" y="2352" name="XLXI_27" orien="R0" />
        <branch name="XLXN_23">
            <wire x2="2432" y1="864" y2="864" x1="2224" />
            <wire x2="2432" y1="864" y2="960" x1="2432" />
        </branch>
        <branch name="XLXN_24">
            <wire x2="2320" y1="992" y2="992" x1="2224" />
            <wire x2="2320" y1="992" y2="1024" x1="2320" />
            <wire x2="2432" y1="1024" y2="1024" x1="2320" />
        </branch>
        <branch name="XLXN_25">
            <wire x2="2320" y1="1120" y2="1120" x1="2224" />
            <wire x2="2320" y1="1088" y2="1120" x1="2320" />
            <wire x2="2432" y1="1088" y2="1088" x1="2320" />
        </branch>
        <branch name="XLXN_28">
            <wire x2="2432" y1="1248" y2="1248" x1="2224" />
            <wire x2="2432" y1="1152" y2="1248" x1="2432" />
        </branch>
        <branch name="XLXN_29">
            <wire x2="2416" y1="1440" y2="1440" x1="2224" />
            <wire x2="2416" y1="1440" y2="1536" x1="2416" />
        </branch>
        <branch name="XLXN_30">
            <wire x2="2320" y1="1568" y2="1568" x1="2224" />
            <wire x2="2320" y1="1568" y2="1600" x1="2320" />
            <wire x2="2416" y1="1600" y2="1600" x1="2320" />
        </branch>
        <branch name="XLXN_31">
            <wire x2="2320" y1="1696" y2="1696" x1="2224" />
            <wire x2="2320" y1="1664" y2="1696" x1="2320" />
            <wire x2="2416" y1="1664" y2="1664" x1="2320" />
        </branch>
        <branch name="XLXN_32">
            <wire x2="2416" y1="1824" y2="1824" x1="2224" />
            <wire x2="2416" y1="1728" y2="1824" x1="2416" />
        </branch>
        <branch name="XLXN_33">
            <wire x2="2432" y1="2000" y2="2000" x1="2224" />
            <wire x2="2432" y1="2000" y2="2096" x1="2432" />
        </branch>
        <branch name="XLXN_34">
            <wire x2="2320" y1="2128" y2="2128" x1="2224" />
            <wire x2="2320" y1="2128" y2="2160" x1="2320" />
            <wire x2="2432" y1="2160" y2="2160" x1="2320" />
        </branch>
        <branch name="XLXN_35">
            <wire x2="2320" y1="2256" y2="2256" x1="2224" />
            <wire x2="2320" y1="2224" y2="2256" x1="2320" />
            <wire x2="2432" y1="2224" y2="2224" x1="2320" />
        </branch>
        <branch name="XLXN_36">
            <wire x2="2432" y1="2384" y2="2384" x1="2224" />
            <wire x2="2432" y1="2288" y2="2384" x1="2432" />
        </branch>
        <branch name="XLXN_37">
            <wire x2="1376" y1="224" y2="224" x1="1216" />
            <wire x2="1968" y1="224" y2="224" x1="1376" />
            <wire x2="1376" y1="224" y2="832" x1="1376" />
            <wire x2="1968" y1="832" y2="832" x1="1376" />
            <wire x2="1376" y1="832" y2="1408" x1="1376" />
            <wire x2="1968" y1="1408" y2="1408" x1="1376" />
            <wire x2="1376" y1="1408" y2="1968" x1="1376" />
            <wire x2="1968" y1="1968" y2="1968" x1="1376" />
        </branch>
        <branch name="XLXN_40">
            <wire x2="1344" y1="368" y2="368" x1="1216" />
            <wire x2="1968" y1="368" y2="368" x1="1344" />
            <wire x2="1344" y1="368" y2="960" x1="1344" />
            <wire x2="1968" y1="960" y2="960" x1="1344" />
            <wire x2="1344" y1="960" y2="1536" x1="1344" />
            <wire x2="1968" y1="1536" y2="1536" x1="1344" />
            <wire x2="1344" y1="1536" y2="2096" x1="1344" />
            <wire x2="1968" y1="2096" y2="2096" x1="1344" />
        </branch>
        <branch name="XLXN_45">
            <wire x2="1312" y1="496" y2="496" x1="1216" />
            <wire x2="1968" y1="496" y2="496" x1="1312" />
            <wire x2="1312" y1="496" y2="1088" x1="1312" />
            <wire x2="1968" y1="1088" y2="1088" x1="1312" />
            <wire x2="1312" y1="1088" y2="1664" x1="1312" />
            <wire x2="1968" y1="1664" y2="1664" x1="1312" />
            <wire x2="1312" y1="1664" y2="2224" x1="1312" />
            <wire x2="1968" y1="2224" y2="2224" x1="1312" />
        </branch>
        <branch name="XLXN_48">
            <wire x2="1280" y1="624" y2="624" x1="1216" />
            <wire x2="1968" y1="624" y2="624" x1="1280" />
            <wire x2="1280" y1="624" y2="1216" x1="1280" />
            <wire x2="1968" y1="1216" y2="1216" x1="1280" />
            <wire x2="1280" y1="1216" y2="1792" x1="1280" />
            <wire x2="1968" y1="1792" y2="1792" x1="1280" />
            <wire x2="1280" y1="1792" y2="2352" x1="1280" />
            <wire x2="1968" y1="2352" y2="2352" x1="1280" />
        </branch>
        <branch name="I0(3:0)">
            <wire x2="1424" y1="1472" y2="1472" x1="512" />
            <wire x2="1600" y1="1472" y2="1472" x1="1424" />
            <wire x2="1600" y1="1472" y2="1488" x1="1600" />
            <wire x2="1424" y1="1472" y2="2032" x1="1424" />
            <wire x2="1616" y1="2032" y2="2032" x1="1424" />
            <wire x2="1616" y1="288" y2="288" x1="1424" />
            <wire x2="1424" y1="288" y2="896" x1="1424" />
            <wire x2="1424" y1="896" y2="1472" x1="1424" />
            <wire x2="1616" y1="896" y2="896" x1="1424" />
        </branch>
        <iomarker fontsize="28" x="512" y="1472" name="I0(3:0)" orien="R180" />
        <bustap x2="1696" y1="1488" y2="1488" x1="1600" />
        <branch name="I0(2)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1816" y="1488" type="branch" />
            <wire x2="1824" y1="1488" y2="1488" x1="1696" />
            <wire x2="1936" y1="1488" y2="1488" x1="1824" />
            <wire x2="1968" y1="1472" y2="1472" x1="1936" />
            <wire x2="1936" y1="1472" y2="1488" x1="1936" />
        </branch>
        <bustap x2="1712" y1="288" y2="288" x1="1616" />
        <branch name="I0(0)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1840" y="288" type="branch" />
            <wire x2="1840" y1="288" y2="288" x1="1712" />
            <wire x2="1968" y1="288" y2="288" x1="1840" />
        </branch>
        <bustap x2="1712" y1="896" y2="896" x1="1616" />
        <branch name="I0(1)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1840" y="896" type="branch" />
            <wire x2="1840" y1="896" y2="896" x1="1712" />
            <wire x2="1968" y1="896" y2="896" x1="1840" />
        </branch>
        <branch name="I1(3:0)">
            <wire x2="1456" y1="1600" y2="1600" x1="528" />
            <wire x2="1600" y1="1600" y2="1600" x1="1456" />
            <wire x2="1456" y1="1600" y2="2160" x1="1456" />
            <wire x2="1616" y1="2160" y2="2160" x1="1456" />
            <wire x2="1616" y1="432" y2="432" x1="1456" />
            <wire x2="1456" y1="432" y2="1024" x1="1456" />
            <wire x2="1456" y1="1024" y2="1600" x1="1456" />
            <wire x2="1616" y1="1024" y2="1024" x1="1456" />
        </branch>
        <iomarker fontsize="28" x="528" y="1600" name="I1(3:0)" orien="R180" />
        <bustap x2="1696" y1="1600" y2="1600" x1="1600" />
        <branch name="I1(2)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1832" y="1600" type="branch" />
            <wire x2="1840" y1="1600" y2="1600" x1="1696" />
            <wire x2="1968" y1="1600" y2="1600" x1="1840" />
        </branch>
        <bustap x2="1712" y1="432" y2="432" x1="1616" />
        <branch name="I1(0)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1840" y="432" type="branch" />
            <wire x2="1840" y1="432" y2="432" x1="1712" />
            <wire x2="1968" y1="432" y2="432" x1="1840" />
        </branch>
        <bustap x2="1712" y1="1024" y2="1024" x1="1616" />
        <branch name="I1(1)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1840" y="1024" type="branch" />
            <wire x2="1840" y1="1024" y2="1024" x1="1712" />
            <wire x2="1968" y1="1024" y2="1024" x1="1840" />
        </branch>
        <bustap x2="1712" y1="2160" y2="2160" x1="1616" />
        <branch name="I1(3)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1840" y="2160" type="branch" />
            <wire x2="1840" y1="2160" y2="2160" x1="1712" />
            <wire x2="1968" y1="2160" y2="2160" x1="1840" />
        </branch>
        <branch name="I2(3:0)">
            <wire x2="1472" y1="1728" y2="1728" x1="544" />
            <wire x2="1600" y1="1728" y2="1728" x1="1472" />
            <wire x2="1472" y1="1728" y2="2288" x1="1472" />
            <wire x2="1616" y1="2288" y2="2288" x1="1472" />
            <wire x2="1472" y1="560" y2="1136" x1="1472" />
            <wire x2="1632" y1="1136" y2="1136" x1="1472" />
            <wire x2="1632" y1="1136" y2="1152" x1="1632" />
            <wire x2="1472" y1="1136" y2="1728" x1="1472" />
            <wire x2="1616" y1="560" y2="560" x1="1472" />
        </branch>
        <iomarker fontsize="28" x="544" y="1728" name="I2(3:0)" orien="R180" />
        <bustap x2="1696" y1="1728" y2="1728" x1="1600" />
        <branch name="I2(2)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1832" y="1728" type="branch" />
            <wire x2="1840" y1="1728" y2="1728" x1="1696" />
            <wire x2="1968" y1="1728" y2="1728" x1="1840" />
        </branch>
        <bustap x2="1712" y1="2288" y2="2288" x1="1616" />
        <branch name="I2(3)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1840" y="2288" type="branch" />
            <wire x2="1840" y1="2288" y2="2288" x1="1712" />
            <wire x2="1968" y1="2288" y2="2288" x1="1840" />
        </branch>
        <bustap x2="1728" y1="1152" y2="1152" x1="1632" />
        <branch name="I2(1)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1848" y="1152" type="branch" />
            <wire x2="1856" y1="1152" y2="1152" x1="1728" />
            <wire x2="1968" y1="1152" y2="1152" x1="1856" />
        </branch>
        <bustap x2="1712" y1="560" y2="560" x1="1616" />
        <branch name="I2(0)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1840" y="560" type="branch" />
            <wire x2="1840" y1="560" y2="560" x1="1712" />
            <wire x2="1968" y1="560" y2="560" x1="1840" />
        </branch>
        <branch name="I3(3:0)">
            <wire x2="1504" y1="1856" y2="1856" x1="560" />
            <wire x2="1616" y1="1856" y2="1856" x1="1504" />
            <wire x2="1504" y1="1856" y2="2416" x1="1504" />
            <wire x2="1616" y1="2416" y2="2416" x1="1504" />
            <wire x2="1504" y1="672" y2="1280" x1="1504" />
            <wire x2="1504" y1="1280" y2="1856" x1="1504" />
            <wire x2="1632" y1="1280" y2="1280" x1="1504" />
            <wire x2="1616" y1="672" y2="672" x1="1504" />
            <wire x2="1616" y1="672" y2="688" x1="1616" />
        </branch>
        <iomarker fontsize="28" x="560" y="1856" name="I3(3:0)" orien="R180" />
        <bustap x2="1712" y1="1856" y2="1856" x1="1616" />
        <branch name="I3(2)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1840" y="1856" type="branch" />
            <wire x2="1840" y1="1856" y2="1856" x1="1712" />
            <wire x2="1968" y1="1856" y2="1856" x1="1840" />
        </branch>
        <bustap x2="1712" y1="2416" y2="2416" x1="1616" />
        <branch name="I3(3)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1840" y="2416" type="branch" />
            <wire x2="1840" y1="2416" y2="2416" x1="1712" />
            <wire x2="1968" y1="2416" y2="2416" x1="1840" />
        </branch>
        <bustap x2="1728" y1="1280" y2="1280" x1="1632" />
        <branch name="I3(1)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1848" y="1280" type="branch" />
            <wire x2="1856" y1="1280" y2="1280" x1="1728" />
            <wire x2="1968" y1="1280" y2="1280" x1="1856" />
        </branch>
        <bustap x2="1712" y1="688" y2="688" x1="1616" />
        <branch name="I3(0)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1840" y="688" type="branch" />
            <wire x2="1840" y1="688" y2="688" x1="1712" />
            <wire x2="1968" y1="688" y2="688" x1="1840" />
        </branch>
        <branch name="o(3:0)">
            <wire x2="3856" y1="464" y2="1056" x1="3856" />
            <wire x2="3856" y1="1056" y2="1616" x1="3856" />
            <wire x2="4800" y1="1616" y2="1616" x1="3856" />
            <wire x2="3856" y1="1616" y2="1632" x1="3856" />
            <wire x2="3856" y1="1632" y2="2192" x1="3856" />
        </branch>
        <iomarker fontsize="28" x="4800" y="1616" name="o(3:0)" orien="R0" />
        <bustap x2="3760" y1="464" y2="464" x1="3856" />
        <branch name="o(0)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="3216" y="464" type="branch" />
            <wire x2="3216" y1="464" y2="464" x1="2672" />
            <wire x2="3760" y1="464" y2="464" x1="3216" />
        </branch>
        <bustap x2="3760" y1="2192" y2="2192" x1="3856" />
        <branch name="o(3)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="3224" y="2192" type="branch" />
            <wire x2="3232" y1="2192" y2="2192" x1="2688" />
            <wire x2="3760" y1="2192" y2="2192" x1="3232" />
        </branch>
        <bustap x2="3760" y1="1632" y2="1632" x1="3856" />
        <branch name="o(2)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="3216" y="1632" type="branch" />
            <wire x2="3216" y1="1632" y2="1632" x1="2672" />
            <wire x2="3760" y1="1632" y2="1632" x1="3216" />
        </branch>
        <bustap x2="3760" y1="1056" y2="1056" x1="3856" />
        <branch name="o(1)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="3224" y="1056" type="branch" />
            <wire x2="3232" y1="1056" y2="1056" x1="2688" />
            <wire x2="3760" y1="1056" y2="1056" x1="3232" />
        </branch>
        <bustap x2="1712" y1="2032" y2="2032" x1="1616" />
        <branch name="I0(3)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1840" y="2032" type="branch" />
            <wire x2="1840" y1="2032" y2="2032" x1="1712" />
            <wire x2="1968" y1="2032" y2="2032" x1="1840" />
        </branch>
    </sheet>
</drawing>