<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="kintex7" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="A0" />
        <signal name="A1" />
        <signal name="E" />
        <signal name="XLXN_4" />
        <signal name="XLXN_5" />
        <signal name="XLXN_6" />
        <signal name="XLXN_7" />
        <signal name="XLXN_8" />
        <signal name="XLXN_9" />
        <signal name="XLXN_10" />
        <signal name="XLXN_12" />
        <signal name="XLXN_13" />
        <signal name="XLXN_15" />
        <signal name="D0" />
        <signal name="D1" />
        <signal name="D2" />
        <signal name="D3" />
        <port polarity="Input" name="A0" />
        <port polarity="Input" name="A1" />
        <port polarity="Input" name="E" />
        <port polarity="Output" name="D0" />
        <port polarity="Output" name="D1" />
        <port polarity="Output" name="D2" />
        <port polarity="Output" name="D3" />
        <blockdef name="inv">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-32" y2="-32" x1="0" />
            <line x2="160" y1="-32" y2="-32" x1="224" />
            <line x2="128" y1="-64" y2="-32" x1="64" />
            <line x2="64" y1="-32" y2="0" x1="128" />
            <line x2="64" y1="0" y2="-64" x1="64" />
            <circle r="16" cx="144" cy="-32" />
        </blockdef>
        <blockdef name="and3">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-64" y2="-64" x1="0" />
            <line x2="64" y1="-128" y2="-128" x1="0" />
            <line x2="64" y1="-192" y2="-192" x1="0" />
            <line x2="192" y1="-128" y2="-128" x1="256" />
            <line x2="144" y1="-176" y2="-176" x1="64" />
            <line x2="64" y1="-80" y2="-80" x1="144" />
            <arc ex="144" ey="-176" sx="144" sy="-80" r="48" cx="144" cy="-128" />
            <line x2="64" y1="-64" y2="-192" x1="64" />
        </blockdef>
        <block symbolname="inv" name="XLXI_1">
            <blockpin signalname="A0" name="I" />
            <blockpin signalname="XLXN_9" name="O" />
        </block>
        <block symbolname="inv" name="XLXI_2">
            <blockpin signalname="A1" name="I" />
            <blockpin signalname="XLXN_7" name="O" />
        </block>
        <block symbolname="and3" name="XLXI_7">
            <blockpin signalname="E" name="I0" />
            <blockpin signalname="XLXN_7" name="I1" />
            <blockpin signalname="XLXN_9" name="I2" />
            <blockpin signalname="D0" name="O" />
        </block>
        <block symbolname="and3" name="XLXI_8">
            <blockpin signalname="E" name="I0" />
            <blockpin signalname="XLXN_7" name="I1" />
            <blockpin signalname="A0" name="I2" />
            <blockpin signalname="D1" name="O" />
        </block>
        <block symbolname="and3" name="XLXI_9">
            <blockpin signalname="E" name="I0" />
            <blockpin signalname="XLXN_9" name="I1" />
            <blockpin signalname="A1" name="I2" />
            <blockpin signalname="D2" name="O" />
        </block>
        <block symbolname="and3" name="XLXI_10">
            <blockpin signalname="E" name="I0" />
            <blockpin signalname="A0" name="I1" />
            <blockpin signalname="A1" name="I2" />
            <blockpin signalname="D3" name="O" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <branch name="A0">
            <wire x2="1120" y1="976" y2="976" x1="752" />
            <wire x2="1120" y1="864" y2="864" x1="1088" />
            <wire x2="1120" y1="864" y2="976" x1="1120" />
            <wire x2="2032" y1="864" y2="864" x1="1120" />
            <wire x2="1088" y1="864" y2="1616" x1="1088" />
            <wire x2="2416" y1="1616" y2="1616" x1="1088" />
            <wire x2="1744" y1="800" y2="800" x1="1120" />
            <wire x2="1120" y1="800" y2="864" x1="1120" />
            <wire x2="2032" y1="832" y2="864" x1="2032" />
            <wire x2="2432" y1="832" y2="832" x1="2032" />
        </branch>
        <branch name="A1">
            <wire x2="1200" y1="1152" y2="1152" x1="720" />
            <wire x2="2432" y1="1152" y2="1152" x1="1200" />
            <wire x2="2432" y1="1152" y2="1200" x1="2432" />
            <wire x2="1200" y1="1152" y2="1552" x1="1200" />
            <wire x2="2416" y1="1552" y2="1552" x1="1200" />
            <wire x2="1744" y1="1088" y2="1088" x1="1200" />
            <wire x2="1200" y1="1088" y2="1152" x1="1200" />
        </branch>
        <iomarker fontsize="28" x="752" y="976" name="A0" orien="R180" />
        <iomarker fontsize="28" x="720" y="1152" name="A1" orien="R180" />
        <branch name="E">
            <wire x2="1440" y1="1424" y2="1424" x1="800" />
            <wire x2="1504" y1="1424" y2="1424" x1="1440" />
            <wire x2="1664" y1="1424" y2="1424" x1="1504" />
            <wire x2="2416" y1="1424" y2="1424" x1="1664" />
            <wire x2="2432" y1="960" y2="960" x1="1504" />
            <wire x2="1504" y1="960" y2="1328" x1="1504" />
            <wire x2="1504" y1="1328" y2="1424" x1="1504" />
            <wire x2="1664" y1="1328" y2="1328" x1="1504" />
            <wire x2="2432" y1="1328" y2="1328" x1="1664" />
            <wire x2="1664" y1="1328" y2="1680" x1="1664" />
            <wire x2="2416" y1="1680" y2="1680" x1="1664" />
            <wire x2="2416" y1="608" y2="1424" x1="2416" />
        </branch>
        <iomarker fontsize="28" x="800" y="1424" name="E" orien="R180" />
        <instance x="1744" y="832" name="XLXI_1" orien="R0" />
        <instance x="1744" y="1120" name="XLXI_2" orien="R0" />
        <instance x="2416" y="672" name="XLXI_7" orien="R0" />
        <instance x="2432" y="1024" name="XLXI_8" orien="R0" />
        <instance x="2432" y="1392" name="XLXI_9" orien="R0" />
        <instance x="2416" y="1744" name="XLXI_10" orien="R0" />
        <branch name="XLXN_7">
            <wire x2="2208" y1="1088" y2="1088" x1="1968" />
            <wire x2="2320" y1="1088" y2="1088" x1="2208" />
            <wire x2="2208" y1="544" y2="1088" x1="2208" />
            <wire x2="2416" y1="544" y2="544" x1="2208" />
            <wire x2="2320" y1="896" y2="1088" x1="2320" />
            <wire x2="2432" y1="896" y2="896" x1="2320" />
        </branch>
        <branch name="XLXN_9">
            <wire x2="2016" y1="800" y2="800" x1="1968" />
            <wire x2="2192" y1="800" y2="800" x1="2016" />
            <wire x2="2016" y1="800" y2="1264" x1="2016" />
            <wire x2="2432" y1="1264" y2="1264" x1="2016" />
            <wire x2="2192" y1="480" y2="800" x1="2192" />
            <wire x2="2416" y1="480" y2="480" x1="2192" />
        </branch>
        <branch name="D0">
            <wire x2="2704" y1="544" y2="544" x1="2672" />
        </branch>
        <iomarker fontsize="28" x="2704" y="544" name="D0" orien="R0" />
        <branch name="D1">
            <wire x2="2720" y1="896" y2="896" x1="2688" />
        </branch>
        <iomarker fontsize="28" x="2720" y="896" name="D1" orien="R0" />
        <branch name="D2">
            <wire x2="2704" y1="1264" y2="1264" x1="2688" />
            <wire x2="2832" y1="1264" y2="1264" x1="2704" />
        </branch>
        <branch name="D3">
            <wire x2="2704" y1="1616" y2="1616" x1="2672" />
        </branch>
        <iomarker fontsize="28" x="2704" y="1616" name="D3" orien="R0" />
        <iomarker fontsize="28" x="2832" y="1264" name="D2" orien="R0" />
    </sheet>
</drawing>