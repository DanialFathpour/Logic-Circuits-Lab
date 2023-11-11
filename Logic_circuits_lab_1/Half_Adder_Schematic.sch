<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan3" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="XLXN_1" />
        <signal name="XLXN_2" />
        <signal name="A0" />
        <signal name="B0" />
        <signal name="Sum" />
        <signal name="Cout" />
        <port polarity="Input" name="A0" />
        <port polarity="Input" name="B0" />
        <port polarity="Output" name="Sum" />
        <port polarity="Output" name="Cout" />
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
        <block symbolname="and2" name="XLXI_1">
            <blockpin signalname="B0" name="I0" />
            <blockpin signalname="A0" name="I1" />
            <blockpin signalname="Cout" name="O" />
        </block>
        <block symbolname="xor2" name="XLXI_2">
            <blockpin signalname="B0" name="I0" />
            <blockpin signalname="A0" name="I1" />
            <blockpin signalname="Sum" name="O" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <instance x="672" y="864" name="XLXI_1" orien="R0" />
        <instance x="672" y="688" name="XLXI_2" orien="R0" />
        <branch name="A0">
            <wire x2="352" y1="560" y2="560" x1="320" />
            <wire x2="528" y1="560" y2="560" x1="352" />
            <wire x2="672" y1="560" y2="560" x1="528" />
            <wire x2="528" y1="560" y2="736" x1="528" />
            <wire x2="672" y1="736" y2="736" x1="528" />
        </branch>
        <branch name="B0">
            <wire x2="416" y1="624" y2="624" x1="320" />
            <wire x2="672" y1="624" y2="624" x1="416" />
            <wire x2="416" y1="624" y2="800" x1="416" />
            <wire x2="656" y1="800" y2="800" x1="416" />
            <wire x2="672" y1="800" y2="800" x1="656" />
        </branch>
        <iomarker fontsize="28" x="320" y="560" name="A0" orien="R180" />
        <iomarker fontsize="28" x="320" y="624" name="B0" orien="R180" />
        <branch name="Sum">
            <wire x2="960" y1="592" y2="592" x1="928" />
        </branch>
        <iomarker fontsize="28" x="960" y="592" name="Sum" orien="R0" />
        <branch name="Cout">
            <wire x2="960" y1="768" y2="768" x1="928" />
        </branch>
        <iomarker fontsize="28" x="960" y="768" name="Cout" orien="R0" />
    </sheet>
</drawing>