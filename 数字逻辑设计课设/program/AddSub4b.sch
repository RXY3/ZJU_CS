<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="kintex7" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="S(3:0)" />
        <signal name="S(0)" />
        <signal name="S(2)" />
        <signal name="S(1)" />
        <signal name="S(3)" />
        <signal name="C0" />
        <signal name="XLXN_12" />
        <signal name="XLXN_17" />
        <signal name="XLXN_18" />
        <signal name="Ctrl" />
        <signal name="XLXN_20" />
        <signal name="A(3:0)" />
        <signal name="A(3)" />
        <signal name="A(2)" />
        <signal name="A(1)" />
        <signal name="A(0)" />
        <signal name="XLXN_26" />
        <signal name="XLXN_27" />
        <signal name="XLXN_28" />
        <signal name="B(3:0)" />
        <signal name="B(3)" />
        <signal name="B(2)" />
        <signal name="B(1)" />
        <signal name="B(0)" />
        <signal name="XLXN_38" />
        <signal name="XLXN_39" />
        <signal name="XLXN_41" />
        <signal name="XLXN_42" />
        <port polarity="Output" name="S(3:0)" />
        <port polarity="Output" name="C0" />
        <port polarity="Input" name="Ctrl" />
        <port polarity="Input" name="A(3:0)" />
        <port polarity="Input" name="B(3:0)" />
        <blockdef name="AddSub1b">
            <timestamp>2023-11-9T13:13:16</timestamp>
            <rect width="256" x="64" y="-256" height="256" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="384" y1="-224" y2="-224" x1="320" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
        </blockdef>
        <block symbolname="AddSub1b" name="XLXI_1">
            <blockpin signalname="Ctrl" name="C" />
            <blockpin signalname="A(0)" name="A" />
            <blockpin signalname="B(0)" name="B" />
            <blockpin signalname="Ctrl" name="Ctrl" />
            <blockpin signalname="XLXN_17" name="C0" />
            <blockpin signalname="S(0)" name="S" />
        </block>
        <block symbolname="AddSub1b" name="XLXI_2">
            <blockpin signalname="XLXN_17" name="C" />
            <blockpin signalname="A(1)" name="A" />
            <blockpin signalname="B(1)" name="B" />
            <blockpin signalname="Ctrl" name="Ctrl" />
            <blockpin signalname="XLXN_18" name="C0" />
            <blockpin signalname="S(1)" name="S" />
        </block>
        <block symbolname="AddSub1b" name="XLXI_3">
            <blockpin signalname="XLXN_18" name="C" />
            <blockpin signalname="A(2)" name="A" />
            <blockpin signalname="B(2)" name="B" />
            <blockpin signalname="Ctrl" name="Ctrl" />
            <blockpin signalname="XLXN_12" name="C0" />
            <blockpin signalname="S(2)" name="S" />
        </block>
        <block symbolname="AddSub1b" name="XLXI_4">
            <blockpin signalname="XLXN_12" name="C" />
            <blockpin signalname="A(3)" name="A" />
            <blockpin signalname="B(3)" name="B" />
            <blockpin signalname="Ctrl" name="Ctrl" />
            <blockpin signalname="C0" name="C0" />
            <blockpin signalname="S(3)" name="S" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <branch name="S(3:0)">
            <wire x2="2096" y1="752" y2="848" x1="2096" />
            <wire x2="2096" y1="848" y2="864" x1="2096" />
            <wire x2="2096" y1="864" y2="960" x1="2096" />
            <wire x2="2096" y1="960" y2="992" x1="2096" />
            <wire x2="2096" y1="992" y2="1104" x1="2096" />
            <wire x2="2096" y1="1104" y2="1200" x1="2096" />
        </branch>
        <iomarker fontsize="28" x="2096" y="752" name="S(3:0)" orien="R270" />
        <bustap x2="2000" y1="864" y2="864" x1="2096" />
        <branch name="S(0)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1960" y="864" type="branch" />
            <wire x2="1920" y1="368" y2="368" x1="1440" />
            <wire x2="1920" y1="368" y2="864" x1="1920" />
            <wire x2="1960" y1="864" y2="864" x1="1920" />
            <wire x2="2000" y1="864" y2="864" x1="1960" />
        </branch>
        <bustap x2="2000" y1="1104" y2="1104" x1="2096" />
        <branch name="S(2)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1952" y="1104" type="branch" />
            <wire x2="1904" y1="1344" y2="1344" x1="1440" />
            <wire x2="1952" y1="1104" y2="1104" x1="1904" />
            <wire x2="2000" y1="1104" y2="1104" x1="1952" />
            <wire x2="1904" y1="1104" y2="1344" x1="1904" />
        </branch>
        <bustap x2="2000" y1="992" y2="992" x1="2096" />
        <branch name="S(1)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1944" y="992" type="branch" />
            <wire x2="1888" y1="848" y2="848" x1="1440" />
            <wire x2="1888" y1="848" y2="992" x1="1888" />
            <wire x2="1944" y1="992" y2="992" x1="1888" />
            <wire x2="2000" y1="992" y2="992" x1="1944" />
        </branch>
        <bustap x2="2000" y1="1200" y2="1200" x1="2096" />
        <branch name="S(3)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1936" y="1200" type="branch" />
            <wire x2="1936" y1="1760" y2="1760" x1="1440" />
            <wire x2="2000" y1="1200" y2="1200" x1="1936" />
            <wire x2="1936" y1="1200" y2="1760" x1="1936" />
        </branch>
        <branch name="C0">
            <wire x2="1632" y1="1568" y2="1568" x1="1440" />
            <wire x2="1648" y1="1408" y2="1408" x1="1632" />
            <wire x2="1632" y1="1408" y2="1568" x1="1632" />
        </branch>
        <iomarker fontsize="28" x="1648" y="1408" name="C0" orien="R0" />
        <instance x="1056" y="1792" name="XLXI_4" orien="R0">
        </instance>
        <branch name="XLXN_12">
            <wire x2="1040" y1="1472" y2="1568" x1="1040" />
            <wire x2="1056" y1="1568" y2="1568" x1="1040" />
            <wire x2="1520" y1="1472" y2="1472" x1="1040" />
            <wire x2="1520" y1="1152" y2="1152" x1="1440" />
            <wire x2="1520" y1="1152" y2="1472" x1="1520" />
        </branch>
        <instance x="1056" y="1376" name="XLXI_3" orien="R0">
        </instance>
        <instance x="1056" y="880" name="XLXI_2" orien="R0">
        </instance>
        <instance x="1056" y="400" name="XLXI_1" orien="R0">
        </instance>
        <branch name="XLXN_17">
            <wire x2="992" y1="560" y2="656" x1="992" />
            <wire x2="1056" y1="656" y2="656" x1="992" />
            <wire x2="1520" y1="560" y2="560" x1="992" />
            <wire x2="1520" y1="176" y2="176" x1="1440" />
            <wire x2="1520" y1="176" y2="560" x1="1520" />
        </branch>
        <branch name="XLXN_18">
            <wire x2="992" y1="1056" y2="1152" x1="992" />
            <wire x2="1056" y1="1152" y2="1152" x1="992" />
            <wire x2="1520" y1="1056" y2="1056" x1="992" />
            <wire x2="1520" y1="656" y2="656" x1="1440" />
            <wire x2="1520" y1="656" y2="1056" x1="1520" />
        </branch>
        <branch name="Ctrl">
            <wire x2="624" y1="128" y2="128" x1="240" />
            <wire x2="624" y1="128" y2="176" x1="624" />
            <wire x2="624" y1="176" y2="368" x1="624" />
            <wire x2="1056" y1="368" y2="368" x1="624" />
            <wire x2="624" y1="368" y2="848" x1="624" />
            <wire x2="1056" y1="848" y2="848" x1="624" />
            <wire x2="624" y1="848" y2="1344" x1="624" />
            <wire x2="624" y1="1344" y2="1760" x1="624" />
            <wire x2="1056" y1="1760" y2="1760" x1="624" />
            <wire x2="1056" y1="1344" y2="1344" x1="624" />
            <wire x2="1056" y1="176" y2="176" x1="624" />
        </branch>
        <iomarker fontsize="28" x="240" y="128" name="Ctrl" orien="R180" />
        <branch name="A(3:0)">
            <wire x2="240" y1="464" y2="512" x1="240" />
            <wire x2="240" y1="512" y2="592" x1="240" />
            <wire x2="240" y1="592" y2="672" x1="240" />
            <wire x2="240" y1="672" y2="736" x1="240" />
        </branch>
        <iomarker fontsize="28" x="240" y="464" name="A(3:0)" orien="R270" />
        <bustap x2="336" y1="736" y2="736" x1="240" />
        <branch name="A(3)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="392" y="736" type="branch" />
            <wire x2="392" y1="736" y2="736" x1="336" />
            <wire x2="448" y1="736" y2="736" x1="392" />
            <wire x2="448" y1="736" y2="1632" x1="448" />
            <wire x2="1056" y1="1632" y2="1632" x1="448" />
        </branch>
        <bustap x2="336" y1="672" y2="672" x1="240" />
        <branch name="A(2)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="392" y="672" type="branch" />
            <wire x2="392" y1="672" y2="672" x1="336" />
            <wire x2="448" y1="672" y2="672" x1="392" />
            <wire x2="752" y1="672" y2="672" x1="448" />
            <wire x2="752" y1="672" y2="1216" x1="752" />
            <wire x2="1056" y1="1216" y2="1216" x1="752" />
        </branch>
        <bustap x2="336" y1="592" y2="592" x1="240" />
        <branch name="A(1)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="400" y="592" type="branch" />
            <wire x2="400" y1="592" y2="592" x1="336" />
            <wire x2="464" y1="592" y2="592" x1="400" />
            <wire x2="464" y1="592" y2="720" x1="464" />
            <wire x2="1056" y1="720" y2="720" x1="464" />
        </branch>
        <bustap x2="336" y1="512" y2="512" x1="240" />
        <branch name="A(0)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="408" y="512" type="branch" />
            <wire x2="408" y1="512" y2="512" x1="336" />
            <wire x2="480" y1="512" y2="512" x1="408" />
            <wire x2="1056" y1="240" y2="240" x1="480" />
            <wire x2="480" y1="240" y2="512" x1="480" />
        </branch>
        <branch name="B(3:0)">
            <wire x2="256" y1="1040" y2="1104" x1="256" />
            <wire x2="256" y1="1104" y2="1120" x1="256" />
            <wire x2="256" y1="1120" y2="1184" x1="256" />
            <wire x2="256" y1="1184" y2="1248" x1="256" />
            <wire x2="256" y1="1248" y2="1296" x1="256" />
            <wire x2="256" y1="1296" y2="1312" x1="256" />
            <wire x2="256" y1="1312" y2="1392" x1="256" />
        </branch>
        <iomarker fontsize="28" x="256" y="1040" name="B(3:0)" orien="R270" />
        <bustap x2="352" y1="1392" y2="1392" x1="256" />
        <branch name="B(3)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="384" y="1392" type="branch" />
            <wire x2="384" y1="1392" y2="1392" x1="352" />
            <wire x2="416" y1="1392" y2="1392" x1="384" />
            <wire x2="416" y1="1392" y2="1696" x1="416" />
            <wire x2="1056" y1="1696" y2="1696" x1="416" />
        </branch>
        <bustap x2="352" y1="1296" y2="1296" x1="256" />
        <branch name="B(2)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="392" y="1296" type="branch" />
            <wire x2="392" y1="1296" y2="1296" x1="352" />
            <wire x2="432" y1="1296" y2="1296" x1="392" />
            <wire x2="1056" y1="1280" y2="1280" x1="432" />
            <wire x2="432" y1="1280" y2="1296" x1="432" />
        </branch>
        <bustap x2="352" y1="1184" y2="1184" x1="256" />
        <branch name="B(1)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="408" y="1184" type="branch" />
            <wire x2="408" y1="1184" y2="1184" x1="352" />
            <wire x2="464" y1="1184" y2="1184" x1="408" />
            <wire x2="1056" y1="784" y2="784" x1="464" />
            <wire x2="464" y1="784" y2="1184" x1="464" />
        </branch>
        <bustap x2="352" y1="1104" y2="1104" x1="256" />
        <branch name="B(0)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="384" y="1104" type="branch" />
            <wire x2="384" y1="1104" y2="1104" x1="352" />
            <wire x2="416" y1="1104" y2="1104" x1="384" />
            <wire x2="1056" y1="304" y2="304" x1="416" />
            <wire x2="416" y1="304" y2="1104" x1="416" />
        </branch>
    </sheet>
</drawing>