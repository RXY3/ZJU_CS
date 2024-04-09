<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="kintex7" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="point" />
        <signal name="p" />
        <signal name="g" />
        <signal name="f" />
        <signal name="e" />
        <signal name="d" />
        <signal name="c" />
        <signal name="b" />
        <signal name="a" />
        <signal name="XLXN_13" />
        <signal name="LE" />
        <signal name="XLXN_20" />
        <signal name="XLXN_21" />
        <signal name="XLXN_22" />
        <signal name="XLXN_23" />
        <signal name="XLXN_24" />
        <signal name="XLXN_25" />
        <signal name="XLXN_26" />
        <signal name="XLXN_27" />
        <signal name="XLXN_37" />
        <signal name="XLXN_38" />
        <signal name="XLXN_39" />
        <signal name="XLXN_41" />
        <signal name="XLXN_42" />
        <signal name="XLXN_43" />
        <signal name="XLXN_44" />
        <signal name="XLXN_50" />
        <signal name="XLXN_52" />
        <signal name="XLXN_53" />
        <signal name="XLXN_54" />
        <signal name="XLXN_55" />
        <signal name="XLXN_56" />
        <signal name="XLXN_57" />
        <signal name="XLXN_58" />
        <signal name="XLXN_61" />
        <signal name="XLXN_62" />
        <signal name="XLXN_64" />
        <signal name="XLXN_66" />
        <signal name="XLXN_69" />
        <signal name="D3" />
        <signal name="XLXN_72" />
        <signal name="XLXN_73" />
        <signal name="D2" />
        <signal name="D1" />
        <signal name="XLXN_76" />
        <signal name="D0" />
        <port polarity="Input" name="point" />
        <port polarity="Output" name="p" />
        <port polarity="Output" name="g" />
        <port polarity="Output" name="f" />
        <port polarity="Output" name="e" />
        <port polarity="Output" name="d" />
        <port polarity="Output" name="c" />
        <port polarity="Output" name="b" />
        <port polarity="Output" name="a" />
        <port polarity="Input" name="LE" />
        <port polarity="Input" name="D3" />
        <port polarity="Input" name="D2" />
        <port polarity="Input" name="D1" />
        <port polarity="Input" name="D0" />
        <blockdef name="inv">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-32" y2="-32" x1="0" />
            <line x2="160" y1="-32" y2="-32" x1="224" />
            <line x2="128" y1="-64" y2="-32" x1="64" />
            <line x2="64" y1="-32" y2="0" x1="128" />
            <line x2="64" y1="0" y2="-64" x1="64" />
            <circle r="16" cx="144" cy="-32" />
        </blockdef>
        <blockdef name="or2">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-64" y2="-64" x1="0" />
            <line x2="64" y1="-128" y2="-128" x1="0" />
            <line x2="192" y1="-96" y2="-96" x1="256" />
            <arc ex="192" ey="-96" sx="112" sy="-48" r="88" cx="116" cy="-136" />
            <arc ex="48" ey="-144" sx="48" sy="-48" r="56" cx="16" cy="-96" />
            <line x2="48" y1="-144" y2="-144" x1="112" />
            <arc ex="112" ey="-144" sx="192" sy="-96" r="88" cx="116" cy="-56" />
            <line x2="48" y1="-48" y2="-48" x1="112" />
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
        <blockdef name="and4">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-112" y2="-112" x1="144" />
            <arc ex="144" ey="-208" sx="144" sy="-112" r="48" cx="144" cy="-160" />
            <line x2="144" y1="-208" y2="-208" x1="64" />
            <line x2="64" y1="-64" y2="-256" x1="64" />
            <line x2="192" y1="-160" y2="-160" x1="256" />
            <line x2="64" y1="-256" y2="-256" x1="0" />
            <line x2="64" y1="-192" y2="-192" x1="0" />
            <line x2="64" y1="-128" y2="-128" x1="0" />
            <line x2="64" y1="-64" y2="-64" x1="0" />
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
        <block symbolname="inv" name="XLXI_4">
            <blockpin signalname="point" name="I" />
            <blockpin signalname="p" name="O" />
        </block>
        <block symbolname="or2" name="XLXI_5">
            <blockpin signalname="LE" name="I0" />
            <blockpin signalname="XLXN_13" name="I1" />
            <blockpin signalname="g" name="O" />
        </block>
        <block symbolname="or2" name="XLXI_6">
            <blockpin signalname="LE" name="I0" />
            <blockpin signalname="XLXN_20" name="I1" />
            <blockpin signalname="f" name="O" />
        </block>
        <block symbolname="or2" name="XLXI_7">
            <blockpin signalname="LE" name="I0" />
            <blockpin signalname="XLXN_21" name="I1" />
            <blockpin signalname="e" name="O" />
        </block>
        <block symbolname="or2" name="XLXI_8">
            <blockpin signalname="LE" name="I0" />
            <blockpin signalname="XLXN_22" name="I1" />
            <blockpin signalname="d" name="O" />
        </block>
        <block symbolname="or2" name="XLXI_9">
            <blockpin signalname="LE" name="I0" />
            <blockpin signalname="XLXN_23" name="I1" />
            <blockpin signalname="c" name="O" />
        </block>
        <block symbolname="or2" name="XLXI_10">
            <blockpin signalname="LE" name="I0" />
            <blockpin signalname="XLXN_24" name="I1" />
            <blockpin signalname="b" name="O" />
        </block>
        <block symbolname="or2" name="XLXI_11">
            <blockpin signalname="LE" name="I0" />
            <blockpin signalname="XLXN_25" name="I1" />
            <blockpin signalname="a" name="O" />
        </block>
        <block symbolname="or3" name="XLXI_12">
            <blockpin signalname="XLXN_26" name="I0" />
            <blockpin signalname="XLXN_27" name="I1" />
            <blockpin signalname="XLXN_50" name="I2" />
            <blockpin signalname="XLXN_13" name="O" />
        </block>
        <block symbolname="and4" name="XLXI_13">
            <blockpin signalname="XLXN_76" name="I0" />
            <blockpin signalname="XLXN_73" name="I1" />
            <blockpin signalname="D2" name="I2" />
            <blockpin signalname="D3" name="I3" />
            <blockpin signalname="XLXN_26" name="O" />
        </block>
        <block symbolname="and4" name="XLXI_14">
            <blockpin signalname="D0" name="I0" />
            <blockpin signalname="D1" name="I1" />
            <blockpin signalname="D2" name="I2" />
            <blockpin signalname="XLXN_69" name="I3" />
            <blockpin signalname="XLXN_27" name="O" />
        </block>
        <block symbolname="and4" name="XLXI_22">
            <blockpin signalname="XLXN_76" name="I0" />
            <blockpin signalname="D1" name="I1" />
            <blockpin signalname="XLXN_72" name="I2" />
            <blockpin signalname="D3" name="I3" />
            <blockpin signalname="XLXN_52" name="O" />
        </block>
        <block symbolname="and4" name="XLXI_25">
            <blockpin signalname="XLXN_76" name="I0" />
            <blockpin signalname="D1" name="I1" />
            <blockpin signalname="XLXN_72" name="I2" />
            <blockpin signalname="XLXN_69" name="I3" />
            <blockpin signalname="XLXN_57" name="O" />
        </block>
        <block symbolname="and4" name="XLXI_29">
            <blockpin signalname="D0" name="I0" />
            <blockpin signalname="XLXN_73" name="I1" />
            <blockpin signalname="D2" name="I2" />
            <blockpin signalname="XLXN_69" name="I3" />
            <blockpin signalname="XLXN_64" name="O" />
        </block>
        <block symbolname="and4" name="XLXI_30">
            <blockpin signalname="D0" name="I0" />
            <blockpin signalname="D1" name="I1" />
            <blockpin signalname="XLXN_72" name="I2" />
            <blockpin signalname="D3" name="I3" />
            <blockpin signalname="XLXN_66" name="O" />
        </block>
        <block symbolname="and4" name="XLXI_31">
            <blockpin signalname="D0" name="I0" />
            <blockpin signalname="XLXN_73" name="I1" />
            <blockpin signalname="D2" name="I2" />
            <blockpin signalname="D3" name="I3" />
            <blockpin signalname="XLXN_41" name="O" />
        </block>
        <block symbolname="and4" name="XLXI_32">
            <blockpin signalname="XLXN_76" name="I0" />
            <blockpin signalname="XLXN_73" name="I1" />
            <blockpin signalname="D2" name="I2" />
            <blockpin signalname="XLXN_69" name="I3" />
            <blockpin signalname="XLXN_54" name="O" />
        </block>
        <block symbolname="and4" name="XLXI_33">
            <blockpin signalname="D0" name="I0" />
            <blockpin signalname="XLXN_72" name="I1" />
            <blockpin signalname="XLXN_73" name="I2" />
            <blockpin signalname="XLXN_69" name="I3" />
            <blockpin signalname="XLXN_55" name="O" />
        </block>
        <block symbolname="or3" name="XLXI_35">
            <blockpin signalname="XLXN_42" name="I0" />
            <blockpin signalname="XLXN_43" name="I1" />
            <blockpin signalname="XLXN_44" name="I2" />
            <blockpin signalname="XLXN_21" name="O" />
        </block>
        <block symbolname="or3" name="XLXI_37">
            <blockpin signalname="XLXN_56" name="I0" />
            <blockpin signalname="XLXN_57" name="I1" />
            <blockpin signalname="XLXN_58" name="I2" />
            <blockpin signalname="XLXN_23" name="O" />
        </block>
        <block symbolname="or4" name="XLXI_40">
            <blockpin signalname="XLXN_37" name="I0" />
            <blockpin signalname="XLXN_38" name="I1" />
            <blockpin signalname="XLXN_39" name="I2" />
            <blockpin signalname="XLXN_41" name="I3" />
            <blockpin signalname="XLXN_20" name="O" />
        </block>
        <block symbolname="or4" name="XLXI_41">
            <blockpin signalname="XLXN_52" name="I0" />
            <blockpin signalname="XLXN_53" name="I1" />
            <blockpin signalname="XLXN_54" name="I2" />
            <blockpin signalname="XLXN_55" name="I3" />
            <blockpin signalname="XLXN_22" name="O" />
        </block>
        <block symbolname="and3" name="XLXI_42">
            <blockpin signalname="XLXN_73" name="I0" />
            <blockpin signalname="XLXN_72" name="I1" />
            <blockpin signalname="XLXN_69" name="I2" />
            <blockpin signalname="XLXN_50" name="O" />
        </block>
        <block symbolname="and3" name="XLXI_43">
            <blockpin signalname="D0" name="I0" />
            <blockpin signalname="D1" name="I1" />
            <blockpin signalname="XLXN_69" name="I2" />
            <blockpin signalname="XLXN_37" name="O" />
        </block>
        <block symbolname="and3" name="XLXI_44">
            <blockpin signalname="D1" name="I0" />
            <blockpin signalname="XLXN_72" name="I1" />
            <blockpin signalname="XLXN_69" name="I2" />
            <blockpin signalname="XLXN_38" name="O" />
        </block>
        <block symbolname="and3" name="XLXI_45">
            <blockpin signalname="D0" name="I0" />
            <blockpin signalname="XLXN_72" name="I1" />
            <blockpin signalname="XLXN_69" name="I2" />
            <blockpin signalname="XLXN_39" name="O" />
        </block>
        <block symbolname="and3" name="XLXI_47">
            <blockpin signalname="D0" name="I0" />
            <blockpin signalname="XLXN_73" name="I1" />
            <blockpin signalname="XLXN_72" name="I2" />
            <blockpin signalname="XLXN_42" name="O" />
        </block>
        <block symbolname="and3" name="XLXI_48">
            <blockpin signalname="XLXN_73" name="I0" />
            <blockpin signalname="D2" name="I1" />
            <blockpin signalname="XLXN_69" name="I2" />
            <blockpin signalname="XLXN_43" name="O" />
        </block>
        <block symbolname="and2" name="XLXI_49">
            <blockpin signalname="D0" name="I0" />
            <blockpin signalname="XLXN_69" name="I1" />
            <blockpin signalname="XLXN_44" name="O" />
        </block>
        <block symbolname="and3" name="XLXI_50">
            <blockpin signalname="D0" name="I0" />
            <blockpin signalname="D1" name="I1" />
            <blockpin signalname="D2" name="I2" />
            <blockpin signalname="XLXN_53" name="O" />
        </block>
        <block symbolname="and3" name="XLXI_51">
            <blockpin signalname="D1" name="I0" />
            <blockpin signalname="D2" name="I1" />
            <blockpin signalname="D3" name="I2" />
            <blockpin signalname="XLXN_56" name="O" />
        </block>
        <block symbolname="and3" name="XLXI_52">
            <blockpin signalname="D0" name="I0" />
            <blockpin signalname="D1" name="I1" />
            <blockpin signalname="D3" name="I2" />
            <blockpin signalname="XLXN_61" name="O" />
        </block>
        <block symbolname="and3" name="XLXI_53">
            <blockpin signalname="XLXN_76" name="I0" />
            <blockpin signalname="D2" name="I1" />
            <blockpin signalname="D3" name="I2" />
            <blockpin signalname="XLXN_58" name="O" />
        </block>
        <block symbolname="or4" name="XLXI_54">
            <blockpin signalname="XLXN_61" name="I0" />
            <blockpin signalname="XLXN_58" name="I1" />
            <blockpin signalname="XLXN_62" name="I2" />
            <blockpin signalname="XLXN_64" name="I3" />
            <blockpin signalname="XLXN_24" name="O" />
        </block>
        <block symbolname="and3" name="XLXI_55">
            <blockpin signalname="XLXN_76" name="I0" />
            <blockpin signalname="D1" name="I1" />
            <blockpin signalname="D2" name="I2" />
            <blockpin signalname="XLXN_62" name="O" />
        </block>
        <block symbolname="or4" name="XLXI_56">
            <blockpin signalname="XLXN_66" name="I0" />
            <blockpin signalname="XLXN_41" name="I1" />
            <blockpin signalname="XLXN_54" name="I2" />
            <blockpin signalname="XLXN_55" name="I3" />
            <blockpin signalname="XLXN_25" name="O" />
        </block>
        <block symbolname="inv" name="XLXI_57">
            <blockpin signalname="D3" name="I" />
            <blockpin signalname="XLXN_69" name="O" />
        </block>
        <block symbolname="inv" name="XLXI_59">
            <blockpin signalname="D2" name="I" />
            <blockpin signalname="XLXN_72" name="O" />
        </block>
        <block symbolname="inv" name="XLXI_60">
            <blockpin signalname="D1" name="I" />
            <blockpin signalname="XLXN_73" name="O" />
        </block>
        <block symbolname="inv" name="XLXI_62">
            <blockpin signalname="D0" name="I" />
            <blockpin signalname="XLXN_76" name="O" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="7040" height="5440">
        <branch name="point">
            <wire x2="272" y1="544" y2="1344" x1="272" />
        </branch>
        <iomarker fontsize="28" x="272" y="544" name="point" orien="R270" />
        <iomarker fontsize="28" x="112" y="544" name="LE" orien="R270" />
        <instance x="240" y="1344" name="XLXI_4" orien="R90" />
        <branch name="p">
            <wire x2="272" y1="1568" y2="1584" x1="272" />
            <wire x2="272" y1="1584" y2="5200" x1="272" />
        </branch>
        <branch name="g">
            <wire x2="768" y1="5104" y2="5200" x1="768" />
        </branch>
        <branch name="f">
            <wire x2="1600" y1="5152" y2="5248" x1="1600" />
        </branch>
        <branch name="e">
            <wire x2="2368" y1="5136" y2="5232" x1="2368" />
        </branch>
        <branch name="d">
            <wire x2="3216" y1="5136" y2="5264" x1="3216" />
        </branch>
        <branch name="c">
            <wire x2="4112" y1="5152" y2="5200" x1="4112" />
        </branch>
        <branch name="b">
            <wire x2="5120" y1="5168" y2="5248" x1="5120" />
        </branch>
        <branch name="a">
            <wire x2="6016" y1="5184" y2="5248" x1="6016" />
        </branch>
        <branch name="XLXN_13">
            <wire x2="800" y1="3600" y2="4848" x1="800" />
        </branch>
        <instance x="672" y="4848" name="XLXI_5" orien="R90" />
        <instance x="5920" y="4928" name="XLXI_11" orien="R90" />
        <instance x="5024" y="4912" name="XLXI_10" orien="R90" />
        <instance x="4016" y="4896" name="XLXI_9" orien="R90" />
        <instance x="3120" y="4880" name="XLXI_8" orien="R90" />
        <instance x="2272" y="4880" name="XLXI_7" orien="R90" />
        <instance x="1504" y="4896" name="XLXI_6" orien="R90" />
        <iomarker fontsize="28" x="768" y="5200" name="g" orien="R90" />
        <iomarker fontsize="28" x="1600" y="5248" name="f" orien="R90" />
        <iomarker fontsize="28" x="2368" y="5232" name="e" orien="R90" />
        <iomarker fontsize="28" x="3216" y="5264" name="d" orien="R90" />
        <iomarker fontsize="28" x="4112" y="5200" name="c" orien="R90" />
        <iomarker fontsize="28" x="5120" y="5248" name="b" orien="R90" />
        <iomarker fontsize="28" x="6016" y="5248" name="a" orien="R90" />
        <instance x="672" y="3344" name="XLXI_12" orien="R90" />
        <branch name="LE">
            <wire x2="112" y1="544" y2="4672" x1="112" />
            <wire x2="736" y1="4672" y2="4672" x1="112" />
            <wire x2="736" y1="4672" y2="4848" x1="736" />
            <wire x2="1568" y1="4672" y2="4672" x1="736" />
            <wire x2="1568" y1="4672" y2="4896" x1="1568" />
            <wire x2="2336" y1="4672" y2="4672" x1="1568" />
            <wire x2="3184" y1="4672" y2="4672" x1="2336" />
            <wire x2="3184" y1="4672" y2="4880" x1="3184" />
            <wire x2="4080" y1="4672" y2="4672" x1="3184" />
            <wire x2="4080" y1="4672" y2="4896" x1="4080" />
            <wire x2="5088" y1="4672" y2="4672" x1="4080" />
            <wire x2="5088" y1="4672" y2="4912" x1="5088" />
            <wire x2="5984" y1="4672" y2="4672" x1="5088" />
            <wire x2="5984" y1="4672" y2="4928" x1="5984" />
            <wire x2="2336" y1="4672" y2="4880" x1="2336" />
        </branch>
        <branch name="XLXN_20">
            <wire x2="1632" y1="3696" y2="3712" x1="1632" />
            <wire x2="1632" y1="3712" y2="4896" x1="1632" />
        </branch>
        <branch name="XLXN_21">
            <wire x2="2400" y1="3680" y2="4880" x1="2400" />
        </branch>
        <instance x="2272" y="3424" name="XLXI_35" orien="R90" />
        <branch name="XLXN_22">
            <wire x2="3248" y1="3680" y2="4880" x1="3248" />
        </branch>
        <branch name="XLXN_23">
            <wire x2="4144" y1="3712" y2="4896" x1="4144" />
        </branch>
        <branch name="XLXN_24">
            <wire x2="5152" y1="3776" y2="4912" x1="5152" />
        </branch>
        <branch name="XLXN_25">
            <wire x2="6048" y1="3728" y2="4928" x1="6048" />
        </branch>
        <instance x="4016" y="3456" name="XLXI_37" orien="R90" />
        <branch name="XLXN_26">
            <wire x2="400" y1="3232" y2="3344" x1="400" />
            <wire x2="736" y1="3344" y2="3344" x1="400" />
        </branch>
        <branch name="XLXN_27">
            <wire x2="800" y1="3232" y2="3344" x1="800" />
        </branch>
        <instance x="240" y="2976" name="XLXI_13" orien="R90" />
        <instance x="640" y="2976" name="XLXI_14" orien="R90" />
        <instance x="1472" y="3456" name="XLXI_40" orien="R90" />
        <branch name="XLXN_37">
            <wire x2="1296" y1="3232" y2="3456" x1="1296" />
            <wire x2="1536" y1="3456" y2="3456" x1="1296" />
        </branch>
        <branch name="XLXN_38">
            <wire x2="1488" y1="3232" y2="3440" x1="1488" />
            <wire x2="1600" y1="3440" y2="3440" x1="1488" />
            <wire x2="1600" y1="3440" y2="3456" x1="1600" />
        </branch>
        <branch name="XLXN_39">
            <wire x2="1664" y1="3232" y2="3456" x1="1664" />
        </branch>
        <branch name="XLXN_41">
            <wire x2="6016" y1="3312" y2="3312" x1="1728" />
            <wire x2="6016" y1="3312" y2="3472" x1="6016" />
            <wire x2="1728" y1="3312" y2="3456" x1="1728" />
            <wire x2="6016" y1="3200" y2="3312" x1="6016" />
        </branch>
        <branch name="XLXN_42">
            <wire x2="2128" y1="3232" y2="3424" x1="2128" />
            <wire x2="2336" y1="3424" y2="3424" x1="2128" />
        </branch>
        <branch name="XLXN_43">
            <wire x2="2400" y1="3232" y2="3424" x1="2400" />
        </branch>
        <branch name="XLXN_44">
            <wire x2="2640" y1="3424" y2="3424" x1="2464" />
            <wire x2="2640" y1="3232" y2="3424" x1="2640" />
        </branch>
        <instance x="3088" y="3424" name="XLXI_41" orien="R90" />
        <branch name="XLXN_50">
            <wire x2="1056" y1="3344" y2="3344" x1="864" />
            <wire x2="1056" y1="3232" y2="3344" x1="1056" />
        </branch>
        <instance x="928" y="2976" name="XLXI_42" orien="R90" />
        <instance x="1168" y="2976" name="XLXI_43" orien="R90" />
        <instance x="2000" y="2976" name="XLXI_47" orien="R90" />
        <instance x="2272" y="2976" name="XLXI_48" orien="R90" />
        <instance x="2544" y="2976" name="XLXI_49" orien="R90" />
        <instance x="2768" y="2976" name="XLXI_22" orien="R90" />
        <branch name="XLXN_52">
            <wire x2="2928" y1="3232" y2="3424" x1="2928" />
            <wire x2="3152" y1="3424" y2="3424" x1="2928" />
        </branch>
        <instance x="3520" y="2976" name="XLXI_51" orien="R90" />
        <branch name="XLXN_53">
            <wire x2="3216" y1="3232" y2="3424" x1="3216" />
        </branch>
        <branch name="XLXN_54">
            <wire x2="3280" y1="3360" y2="3424" x1="3280" />
            <wire x2="6080" y1="3360" y2="3360" x1="3280" />
            <wire x2="6320" y1="3360" y2="3360" x1="6080" />
            <wire x2="6080" y1="3360" y2="3472" x1="6080" />
            <wire x2="6320" y1="3200" y2="3360" x1="6320" />
        </branch>
        <instance x="1360" y="2976" name="XLXI_44" orien="R90" />
        <instance x="1536" y="2976" name="XLXI_45" orien="R90" />
        <instance x="3088" y="2976" name="XLXI_50" orien="R90" />
        <branch name="XLXN_56">
            <wire x2="3648" y1="3232" y2="3456" x1="3648" />
            <wire x2="4080" y1="3456" y2="3456" x1="3648" />
        </branch>
        <branch name="XLXN_57">
            <wire x2="4144" y1="3232" y2="3456" x1="4144" />
        </branch>
        <instance x="3984" y="2976" name="XLXI_25" orien="R90" />
        <instance x="4480" y="2960" name="XLXI_52" orien="R90" />
        <instance x="4736" y="2960" name="XLXI_53" orien="R90" />
        <branch name="XLXN_58">
            <wire x2="4864" y1="3456" y2="3456" x1="4208" />
            <wire x2="5120" y1="3456" y2="3456" x1="4864" />
            <wire x2="5120" y1="3456" y2="3520" x1="5120" />
            <wire x2="4864" y1="3216" y2="3456" x1="4864" />
        </branch>
        <instance x="4992" y="3520" name="XLXI_54" orien="R90" />
        <branch name="XLXN_61">
            <wire x2="4608" y1="3216" y2="3520" x1="4608" />
            <wire x2="5056" y1="3520" y2="3520" x1="4608" />
        </branch>
        <instance x="4944" y="2960" name="XLXI_55" orien="R90" />
        <instance x="5136" y="2960" name="XLXI_29" orien="R90" />
        <branch name="XLXN_62">
            <wire x2="5072" y1="3216" y2="3344" x1="5072" />
            <wire x2="5184" y1="3344" y2="3344" x1="5072" />
            <wire x2="5184" y1="3344" y2="3520" x1="5184" />
        </branch>
        <branch name="XLXN_64">
            <wire x2="5296" y1="3520" y2="3520" x1="5248" />
            <wire x2="5296" y1="3216" y2="3520" x1="5296" />
        </branch>
        <instance x="5536" y="2960" name="XLXI_30" orien="R90" />
        <instance x="5856" y="2944" name="XLXI_31" orien="R90" />
        <instance x="6160" y="2944" name="XLXI_32" orien="R90" />
        <branch name="XLXN_55">
            <wire x2="3344" y1="3408" y2="3424" x1="3344" />
            <wire x2="6144" y1="3408" y2="3408" x1="3344" />
            <wire x2="6144" y1="3408" y2="3472" x1="6144" />
            <wire x2="6592" y1="3408" y2="3408" x1="6144" />
            <wire x2="6592" y1="3200" y2="3408" x1="6592" />
        </branch>
        <instance x="5888" y="3472" name="XLXI_56" orien="R90" />
        <branch name="XLXN_66">
            <wire x2="5696" y1="3216" y2="3472" x1="5696" />
            <wire x2="5952" y1="3472" y2="3472" x1="5696" />
        </branch>
        <instance x="6432" y="2944" name="XLXI_33" orien="R90" />
        <branch name="XLXN_69">
            <wire x2="896" y1="2864" y2="2976" x1="896" />
            <wire x2="1120" y1="2864" y2="2864" x1="896" />
            <wire x2="1120" y1="2864" y2="2976" x1="1120" />
            <wire x2="1360" y1="2864" y2="2864" x1="1120" />
            <wire x2="1360" y1="2864" y2="2976" x1="1360" />
            <wire x2="1552" y1="2864" y2="2864" x1="1360" />
            <wire x2="1552" y1="2864" y2="2976" x1="1552" />
            <wire x2="1728" y1="2864" y2="2864" x1="1552" />
            <wire x2="1728" y1="2864" y2="2976" x1="1728" />
            <wire x2="2464" y1="2864" y2="2864" x1="1728" />
            <wire x2="2464" y1="2864" y2="2976" x1="2464" />
            <wire x2="2672" y1="2864" y2="2864" x1="2464" />
            <wire x2="2672" y1="2864" y2="2976" x1="2672" />
            <wire x2="4240" y1="2864" y2="2864" x1="2672" />
            <wire x2="4240" y1="2864" y2="2976" x1="4240" />
            <wire x2="5392" y1="2864" y2="2864" x1="4240" />
            <wire x2="5392" y1="2864" y2="2960" x1="5392" />
            <wire x2="6416" y1="2864" y2="2864" x1="5392" />
            <wire x2="6688" y1="2864" y2="2864" x1="6416" />
            <wire x2="6688" y1="2864" y2="2944" x1="6688" />
            <wire x2="6416" y1="2864" y2="2944" x1="6416" />
            <wire x2="6688" y1="2320" y2="2864" x1="6688" />
        </branch>
        <branch name="D3">
            <wire x2="496" y1="2496" y2="2976" x1="496" />
            <wire x2="3024" y1="2496" y2="2496" x1="496" />
            <wire x2="3024" y1="2496" y2="2976" x1="3024" />
            <wire x2="3712" y1="2496" y2="2496" x1="3024" />
            <wire x2="3712" y1="2496" y2="2976" x1="3712" />
            <wire x2="4672" y1="2496" y2="2496" x1="3712" />
            <wire x2="4672" y1="2496" y2="2960" x1="4672" />
            <wire x2="4928" y1="2496" y2="2496" x1="4672" />
            <wire x2="4928" y1="2496" y2="2960" x1="4928" />
            <wire x2="5792" y1="2496" y2="2496" x1="4928" />
            <wire x2="5792" y1="2496" y2="2960" x1="5792" />
            <wire x2="6112" y1="2496" y2="2496" x1="5792" />
            <wire x2="6624" y1="2496" y2="2496" x1="6112" />
            <wire x2="6112" y1="2496" y2="2944" x1="6112" />
            <wire x2="6688" y1="2080" y2="2080" x1="6624" />
            <wire x2="6688" y1="2080" y2="2096" x1="6688" />
            <wire x2="6624" y1="2080" y2="2496" x1="6624" />
            <wire x2="6688" y1="1936" y2="2080" x1="6688" />
        </branch>
        <iomarker fontsize="28" x="6688" y="1936" name="D3" orien="R270" />
        <instance x="6656" y="2096" name="XLXI_57" orien="R90" />
        <branch name="XLXN_72">
            <wire x2="1056" y1="2800" y2="2976" x1="1056" />
            <wire x2="1488" y1="2800" y2="2800" x1="1056" />
            <wire x2="1488" y1="2800" y2="2976" x1="1488" />
            <wire x2="1664" y1="2800" y2="2800" x1="1488" />
            <wire x2="1664" y1="2800" y2="2976" x1="1664" />
            <wire x2="2192" y1="2800" y2="2800" x1="1664" />
            <wire x2="2192" y1="2800" y2="2976" x1="2192" />
            <wire x2="2960" y1="2800" y2="2800" x1="2192" />
            <wire x2="2960" y1="2800" y2="2976" x1="2960" />
            <wire x2="4176" y1="2800" y2="2800" x1="2960" />
            <wire x2="4176" y1="2800" y2="2976" x1="4176" />
            <wire x2="5728" y1="2800" y2="2800" x1="4176" />
            <wire x2="5728" y1="2800" y2="2960" x1="5728" />
            <wire x2="6528" y1="2800" y2="2800" x1="5728" />
            <wire x2="6560" y1="2800" y2="2800" x1="6528" />
            <wire x2="6560" y1="2800" y2="2944" x1="6560" />
            <wire x2="6528" y1="2320" y2="2800" x1="6528" />
        </branch>
        <branch name="XLXN_73">
            <wire x2="368" y1="2720" y2="2976" x1="368" />
            <wire x2="992" y1="2720" y2="2720" x1="368" />
            <wire x2="992" y1="2720" y2="2976" x1="992" />
            <wire x2="2128" y1="2720" y2="2720" x1="992" />
            <wire x2="2128" y1="2720" y2="2976" x1="2128" />
            <wire x2="2336" y1="2720" y2="2720" x1="2128" />
            <wire x2="2336" y1="2720" y2="2976" x1="2336" />
            <wire x2="5264" y1="2720" y2="2720" x1="2336" />
            <wire x2="5264" y1="2720" y2="2960" x1="5264" />
            <wire x2="5984" y1="2720" y2="2720" x1="5264" />
            <wire x2="5984" y1="2720" y2="2944" x1="5984" />
            <wire x2="6288" y1="2720" y2="2720" x1="5984" />
            <wire x2="6624" y1="2720" y2="2720" x1="6288" />
            <wire x2="6624" y1="2720" y2="2944" x1="6624" />
            <wire x2="6288" y1="2720" y2="2944" x1="6288" />
            <wire x2="6288" y1="2320" y2="2720" x1="6288" />
        </branch>
        <branch name="D2">
            <wire x2="432" y1="2432" y2="2976" x1="432" />
            <wire x2="832" y1="2432" y2="2432" x1="432" />
            <wire x2="832" y1="2432" y2="2976" x1="832" />
            <wire x2="2400" y1="2432" y2="2432" x1="832" />
            <wire x2="2400" y1="2432" y2="2976" x1="2400" />
            <wire x2="3280" y1="2432" y2="2432" x1="2400" />
            <wire x2="3280" y1="2432" y2="2976" x1="3280" />
            <wire x2="3648" y1="2432" y2="2432" x1="3280" />
            <wire x2="3648" y1="2432" y2="2976" x1="3648" />
            <wire x2="4864" y1="2432" y2="2432" x1="3648" />
            <wire x2="4864" y1="2432" y2="2960" x1="4864" />
            <wire x2="5136" y1="2432" y2="2432" x1="4864" />
            <wire x2="5328" y1="2432" y2="2432" x1="5136" />
            <wire x2="5328" y1="2432" y2="2960" x1="5328" />
            <wire x2="6048" y1="2432" y2="2432" x1="5328" />
            <wire x2="6048" y1="2432" y2="2944" x1="6048" />
            <wire x2="6352" y1="2432" y2="2432" x1="6048" />
            <wire x2="6432" y1="2432" y2="2432" x1="6352" />
            <wire x2="6352" y1="2432" y2="2944" x1="6352" />
            <wire x2="5136" y1="2432" y2="2960" x1="5136" />
            <wire x2="6528" y1="2080" y2="2080" x1="6432" />
            <wire x2="6528" y1="2080" y2="2096" x1="6528" />
            <wire x2="6432" y1="2080" y2="2432" x1="6432" />
            <wire x2="6528" y1="1936" y2="2080" x1="6528" />
        </branch>
        <instance x="6496" y="2096" name="XLXI_59" orien="R90" />
        <iomarker fontsize="28" x="6528" y="1936" name="D2" orien="R270" />
        <branch name="D1">
            <wire x2="768" y1="2384" y2="2976" x1="768" />
            <wire x2="1296" y1="2384" y2="2384" x1="768" />
            <wire x2="1296" y1="2384" y2="2976" x1="1296" />
            <wire x2="1424" y1="2384" y2="2384" x1="1296" />
            <wire x2="1424" y1="2384" y2="2976" x1="1424" />
            <wire x2="2896" y1="2384" y2="2384" x1="1424" />
            <wire x2="2896" y1="2384" y2="2976" x1="2896" />
            <wire x2="3216" y1="2384" y2="2384" x1="2896" />
            <wire x2="3216" y1="2384" y2="2976" x1="3216" />
            <wire x2="3584" y1="2384" y2="2384" x1="3216" />
            <wire x2="3584" y1="2384" y2="2976" x1="3584" />
            <wire x2="4112" y1="2384" y2="2384" x1="3584" />
            <wire x2="4112" y1="2384" y2="2976" x1="4112" />
            <wire x2="4608" y1="2384" y2="2384" x1="4112" />
            <wire x2="4608" y1="2384" y2="2960" x1="4608" />
            <wire x2="5072" y1="2384" y2="2384" x1="4608" />
            <wire x2="5072" y1="2384" y2="2960" x1="5072" />
            <wire x2="5664" y1="2384" y2="2384" x1="5072" />
            <wire x2="6192" y1="2384" y2="2384" x1="5664" />
            <wire x2="5664" y1="2384" y2="2960" x1="5664" />
            <wire x2="6288" y1="2080" y2="2080" x1="6192" />
            <wire x2="6288" y1="2080" y2="2096" x1="6288" />
            <wire x2="6192" y1="2080" y2="2384" x1="6192" />
            <wire x2="6288" y1="1936" y2="2080" x1="6288" />
        </branch>
        <instance x="6256" y="2096" name="XLXI_60" orien="R90" />
        <iomarker fontsize="28" x="6288" y="1936" name="D1" orien="R270" />
        <branch name="XLXN_76">
            <wire x2="304" y1="2656" y2="2976" x1="304" />
            <wire x2="2832" y1="2656" y2="2656" x1="304" />
            <wire x2="2832" y1="2656" y2="2976" x1="2832" />
            <wire x2="4048" y1="2656" y2="2656" x1="2832" />
            <wire x2="4048" y1="2656" y2="2976" x1="4048" />
            <wire x2="4800" y1="2656" y2="2656" x1="4048" />
            <wire x2="4800" y1="2656" y2="2960" x1="4800" />
            <wire x2="5008" y1="2656" y2="2656" x1="4800" />
            <wire x2="5008" y1="2656" y2="2960" x1="5008" />
            <wire x2="5984" y1="2656" y2="2656" x1="5008" />
            <wire x2="6224" y1="2656" y2="2656" x1="5984" />
            <wire x2="6224" y1="2656" y2="2944" x1="6224" />
            <wire x2="5984" y1="2320" y2="2656" x1="5984" />
        </branch>
        <branch name="D0">
            <wire x2="704" y1="2080" y2="2976" x1="704" />
            <wire x2="1232" y1="2080" y2="2080" x1="704" />
            <wire x2="1600" y1="2080" y2="2080" x1="1232" />
            <wire x2="2064" y1="2080" y2="2080" x1="1600" />
            <wire x2="2608" y1="2080" y2="2080" x1="2064" />
            <wire x2="3152" y1="2080" y2="2080" x1="2608" />
            <wire x2="4544" y1="2080" y2="2080" x1="3152" />
            <wire x2="5200" y1="2080" y2="2080" x1="4544" />
            <wire x2="5600" y1="2080" y2="2080" x1="5200" />
            <wire x2="5920" y1="2080" y2="2080" x1="5600" />
            <wire x2="5920" y1="2080" y2="2560" x1="5920" />
            <wire x2="5920" y1="2560" y2="2944" x1="5920" />
            <wire x2="6496" y1="2560" y2="2560" x1="5920" />
            <wire x2="6496" y1="2560" y2="2944" x1="6496" />
            <wire x2="5984" y1="2080" y2="2080" x1="5920" />
            <wire x2="5984" y1="2080" y2="2096" x1="5984" />
            <wire x2="5600" y1="2080" y2="2960" x1="5600" />
            <wire x2="5200" y1="2080" y2="2960" x1="5200" />
            <wire x2="4544" y1="2080" y2="2960" x1="4544" />
            <wire x2="3152" y1="2080" y2="2976" x1="3152" />
            <wire x2="2608" y1="2080" y2="2976" x1="2608" />
            <wire x2="2064" y1="2080" y2="2976" x1="2064" />
            <wire x2="1600" y1="2080" y2="2976" x1="1600" />
            <wire x2="1232" y1="2080" y2="2976" x1="1232" />
            <wire x2="5984" y1="1936" y2="2080" x1="5984" />
        </branch>
        <instance x="5952" y="2096" name="XLXI_62" orien="R90" />
        <iomarker fontsize="28" x="5984" y="1936" name="D0" orien="R270" />
        <iomarker fontsize="28" x="272" y="5200" name="p" orien="R90" />
    </sheet>
</drawing>