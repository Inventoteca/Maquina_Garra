<?xml version="1.0" encoding="utf-8"?>
<!DOCTYPE eagle SYSTEM "eagle.dtd">
<eagle version="9.6.2">
<drawing>
<settings>
<setting alwaysvectorfont="no"/>
<setting verticaltext="up"/>
</settings>
<grid distance="0.1" unitdist="inch" unit="inch" style="lines" multiple="1" display="no" altdistance="0.01" altunitdist="inch" altunit="inch"/>
<layers>
<layer number="1" name="Top" color="4" fill="1" visible="no" active="no"/>
<layer number="16" name="Bottom" color="1" fill="1" visible="no" active="no"/>
<layer number="17" name="Pads" color="2" fill="1" visible="no" active="no"/>
<layer number="18" name="Vias" color="2" fill="1" visible="no" active="no"/>
<layer number="19" name="Unrouted" color="6" fill="1" visible="no" active="no"/>
<layer number="20" name="Dimension" color="15" fill="1" visible="no" active="no"/>
<layer number="21" name="tPlace" color="7" fill="1" visible="no" active="no"/>
<layer number="22" name="bPlace" color="7" fill="1" visible="no" active="no"/>
<layer number="23" name="tOrigins" color="15" fill="1" visible="no" active="no"/>
<layer number="24" name="bOrigins" color="15" fill="1" visible="no" active="no"/>
<layer number="25" name="tNames" color="7" fill="1" visible="no" active="no"/>
<layer number="26" name="bNames" color="7" fill="1" visible="no" active="no"/>
<layer number="27" name="tValues" color="7" fill="1" visible="no" active="no"/>
<layer number="28" name="bValues" color="7" fill="1" visible="no" active="no"/>
<layer number="29" name="tStop" color="7" fill="3" visible="no" active="no"/>
<layer number="30" name="bStop" color="7" fill="6" visible="no" active="no"/>
<layer number="31" name="tCream" color="7" fill="4" visible="no" active="no"/>
<layer number="32" name="bCream" color="7" fill="5" visible="no" active="no"/>
<layer number="33" name="tFinish" color="6" fill="3" visible="no" active="no"/>
<layer number="34" name="bFinish" color="6" fill="6" visible="no" active="no"/>
<layer number="35" name="tGlue" color="7" fill="4" visible="no" active="no"/>
<layer number="36" name="bGlue" color="7" fill="5" visible="no" active="no"/>
<layer number="37" name="tTest" color="7" fill="1" visible="no" active="no"/>
<layer number="38" name="bTest" color="7" fill="1" visible="no" active="no"/>
<layer number="39" name="tKeepout" color="4" fill="11" visible="no" active="no"/>
<layer number="40" name="bKeepout" color="1" fill="11" visible="no" active="no"/>
<layer number="41" name="tRestrict" color="4" fill="10" visible="no" active="no"/>
<layer number="42" name="bRestrict" color="1" fill="10" visible="no" active="no"/>
<layer number="43" name="vRestrict" color="2" fill="10" visible="no" active="no"/>
<layer number="44" name="Drills" color="7" fill="1" visible="no" active="no"/>
<layer number="45" name="Holes" color="7" fill="1" visible="no" active="no"/>
<layer number="46" name="Milling" color="3" fill="1" visible="no" active="no"/>
<layer number="47" name="Measures" color="7" fill="1" visible="no" active="no"/>
<layer number="48" name="Document" color="7" fill="1" visible="no" active="no"/>
<layer number="49" name="Reference" color="7" fill="1" visible="no" active="no"/>
<layer number="51" name="tDocu" color="7" fill="1" visible="no" active="no"/>
<layer number="52" name="bDocu" color="7" fill="1" visible="no" active="no"/>
<layer number="88" name="SimResults" color="9" fill="1" visible="yes" active="yes"/>
<layer number="89" name="SimProbes" color="9" fill="1" visible="yes" active="yes"/>
<layer number="90" name="Modules" color="5" fill="1" visible="yes" active="yes"/>
<layer number="91" name="Nets" color="2" fill="1" visible="yes" active="yes"/>
<layer number="92" name="Busses" color="1" fill="1" visible="yes" active="yes"/>
<layer number="93" name="Pins" color="2" fill="1" visible="no" active="yes"/>
<layer number="94" name="Symbols" color="4" fill="1" visible="yes" active="yes"/>
<layer number="95" name="Names" color="7" fill="1" visible="yes" active="yes"/>
<layer number="96" name="Values" color="7" fill="1" visible="yes" active="yes"/>
<layer number="97" name="Info" color="7" fill="1" visible="yes" active="yes"/>
<layer number="98" name="Guide" color="6" fill="1" visible="yes" active="yes"/>
</layers>
<schematic xreflabel="%F%N/%S.%C%R" xrefpart="/%S.%C%R">
<libraries>
<library name="con-lstb" urn="urn:adsk.eagle:library:162">
<description>&lt;b&gt;Pin Headers&lt;/b&gt;&lt;p&gt;
Naming:&lt;p&gt;
MA = male&lt;p&gt;
# contacts - # rows&lt;p&gt;
W = angled&lt;p&gt;
&lt;author&gt;Created by librarian@cadsoft.de&lt;/author&gt;</description>
<packages>
<package name="MA08-1" urn="urn:adsk.eagle:footprint:8294/1" library_version="2">
<description>&lt;b&gt;PIN HEADER&lt;/b&gt;</description>
<wire x1="-9.525" y1="1.27" x2="-8.255" y2="1.27" width="0.1524" layer="21"/>
<wire x1="-8.255" y1="1.27" x2="-7.62" y2="0.635" width="0.1524" layer="21"/>
<wire x1="-7.62" y1="-0.635" x2="-8.255" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="-7.62" y1="0.635" x2="-6.985" y2="1.27" width="0.1524" layer="21"/>
<wire x1="-6.985" y1="1.27" x2="-5.715" y2="1.27" width="0.1524" layer="21"/>
<wire x1="-5.715" y1="1.27" x2="-5.08" y2="0.635" width="0.1524" layer="21"/>
<wire x1="-5.08" y1="-0.635" x2="-5.715" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="-5.715" y1="-1.27" x2="-6.985" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="-6.985" y1="-1.27" x2="-7.62" y2="-0.635" width="0.1524" layer="21"/>
<wire x1="-10.16" y1="0.635" x2="-10.16" y2="-0.635" width="0.1524" layer="21"/>
<wire x1="-9.525" y1="1.27" x2="-10.16" y2="0.635" width="0.1524" layer="21"/>
<wire x1="-10.16" y1="-0.635" x2="-9.525" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="-8.255" y1="-1.27" x2="-9.525" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="-5.08" y1="0.635" x2="-4.445" y2="1.27" width="0.1524" layer="21"/>
<wire x1="-4.445" y1="1.27" x2="-3.175" y2="1.27" width="0.1524" layer="21"/>
<wire x1="-3.175" y1="1.27" x2="-2.54" y2="0.635" width="0.1524" layer="21"/>
<wire x1="-2.54" y1="-0.635" x2="-3.175" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="-3.175" y1="-1.27" x2="-4.445" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="-4.445" y1="-1.27" x2="-5.08" y2="-0.635" width="0.1524" layer="21"/>
<wire x1="-1.905" y1="1.27" x2="-0.635" y2="1.27" width="0.1524" layer="21"/>
<wire x1="-0.635" y1="1.27" x2="0" y2="0.635" width="0.1524" layer="21"/>
<wire x1="0" y1="-0.635" x2="-0.635" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="-1.905" y1="1.27" x2="-2.54" y2="0.635" width="0.1524" layer="21"/>
<wire x1="-2.54" y1="-0.635" x2="-1.905" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="-0.635" y1="-1.27" x2="-1.905" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="0.635" y1="1.27" x2="1.905" y2="1.27" width="0.1524" layer="21"/>
<wire x1="1.905" y1="1.27" x2="2.54" y2="0.635" width="0.1524" layer="21"/>
<wire x1="2.54" y1="-0.635" x2="1.905" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="2.54" y1="0.635" x2="3.175" y2="1.27" width="0.1524" layer="21"/>
<wire x1="3.175" y1="1.27" x2="4.445" y2="1.27" width="0.1524" layer="21"/>
<wire x1="4.445" y1="1.27" x2="5.08" y2="0.635" width="0.1524" layer="21"/>
<wire x1="5.08" y1="-0.635" x2="4.445" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="4.445" y1="-1.27" x2="3.175" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="3.175" y1="-1.27" x2="2.54" y2="-0.635" width="0.1524" layer="21"/>
<wire x1="0.635" y1="1.27" x2="0" y2="0.635" width="0.1524" layer="21"/>
<wire x1="0" y1="-0.635" x2="0.635" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="1.905" y1="-1.27" x2="0.635" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="5.08" y1="0.635" x2="5.715" y2="1.27" width="0.1524" layer="21"/>
<wire x1="5.715" y1="1.27" x2="6.985" y2="1.27" width="0.1524" layer="21"/>
<wire x1="6.985" y1="1.27" x2="7.62" y2="0.635" width="0.1524" layer="21"/>
<wire x1="7.62" y1="-0.635" x2="6.985" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="6.985" y1="-1.27" x2="5.715" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="5.715" y1="-1.27" x2="5.08" y2="-0.635" width="0.1524" layer="21"/>
<wire x1="8.255" y1="1.27" x2="9.525" y2="1.27" width="0.1524" layer="21"/>
<wire x1="9.525" y1="1.27" x2="10.16" y2="0.635" width="0.1524" layer="21"/>
<wire x1="10.16" y1="0.635" x2="10.16" y2="-0.635" width="0.1524" layer="21"/>
<wire x1="10.16" y1="-0.635" x2="9.525" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="8.255" y1="1.27" x2="7.62" y2="0.635" width="0.1524" layer="21"/>
<wire x1="7.62" y1="-0.635" x2="8.255" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="9.525" y1="-1.27" x2="8.255" y2="-1.27" width="0.1524" layer="21"/>
<pad name="1" x="-8.89" y="0" drill="1.016" shape="long" rot="R90"/>
<pad name="2" x="-6.35" y="0" drill="1.016" shape="long" rot="R90"/>
<pad name="3" x="-3.81" y="0" drill="1.016" shape="long" rot="R90"/>
<pad name="4" x="-1.27" y="0" drill="1.016" shape="long" rot="R90"/>
<pad name="5" x="1.27" y="0" drill="1.016" shape="long" rot="R90"/>
<pad name="6" x="3.81" y="0" drill="1.016" shape="long" rot="R90"/>
<pad name="7" x="6.35" y="0" drill="1.016" shape="long" rot="R90"/>
<pad name="8" x="8.89" y="0" drill="1.016" shape="long" rot="R90"/>
<text x="-10.16" y="1.651" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="-9.398" y="-2.921" size="1.27" layer="21" ratio="10">1</text>
<text x="8.255" y="1.651" size="1.27" layer="21" ratio="10">8</text>
<text x="-1.27" y="-2.921" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
<rectangle x1="-6.604" y1="-0.254" x2="-6.096" y2="0.254" layer="51"/>
<rectangle x1="-9.144" y1="-0.254" x2="-8.636" y2="0.254" layer="51"/>
<rectangle x1="-4.064" y1="-0.254" x2="-3.556" y2="0.254" layer="51"/>
<rectangle x1="-1.524" y1="-0.254" x2="-1.016" y2="0.254" layer="51"/>
<rectangle x1="3.556" y1="-0.254" x2="4.064" y2="0.254" layer="51"/>
<rectangle x1="1.016" y1="-0.254" x2="1.524" y2="0.254" layer="51"/>
<rectangle x1="6.096" y1="-0.254" x2="6.604" y2="0.254" layer="51"/>
<rectangle x1="8.636" y1="-0.254" x2="9.144" y2="0.254" layer="51"/>
</package>
</packages>
<packages3d>
<package3d name="MA08-1" urn="urn:adsk.eagle:package:8343/1" type="box" library_version="2">
<description>PIN HEADER</description>
<packageinstances>
<packageinstance name="MA08-1"/>
</packageinstances>
</package3d>
</packages3d>
<symbols>
<symbol name="MA08-1" urn="urn:adsk.eagle:symbol:8293/1" library_version="2">
<wire x1="3.81" y1="-10.16" x2="-1.27" y2="-10.16" width="0.4064" layer="94"/>
<wire x1="1.27" y1="-2.54" x2="2.54" y2="-2.54" width="0.6096" layer="94"/>
<wire x1="1.27" y1="-5.08" x2="2.54" y2="-5.08" width="0.6096" layer="94"/>
<wire x1="1.27" y1="-7.62" x2="2.54" y2="-7.62" width="0.6096" layer="94"/>
<wire x1="1.27" y1="2.54" x2="2.54" y2="2.54" width="0.6096" layer="94"/>
<wire x1="1.27" y1="0" x2="2.54" y2="0" width="0.6096" layer="94"/>
<wire x1="1.27" y1="10.16" x2="2.54" y2="10.16" width="0.6096" layer="94"/>
<wire x1="1.27" y1="7.62" x2="2.54" y2="7.62" width="0.6096" layer="94"/>
<wire x1="1.27" y1="5.08" x2="2.54" y2="5.08" width="0.6096" layer="94"/>
<wire x1="-1.27" y1="12.7" x2="-1.27" y2="-10.16" width="0.4064" layer="94"/>
<wire x1="3.81" y1="-10.16" x2="3.81" y2="12.7" width="0.4064" layer="94"/>
<wire x1="-1.27" y1="12.7" x2="3.81" y2="12.7" width="0.4064" layer="94"/>
<text x="-1.27" y="-12.7" size="1.778" layer="96">&gt;VALUE</text>
<text x="-1.27" y="13.462" size="1.778" layer="95">&gt;NAME</text>
<pin name="1" x="7.62" y="-7.62" visible="pad" length="middle" direction="pas" swaplevel="1" rot="R180"/>
<pin name="2" x="7.62" y="-5.08" visible="pad" length="middle" direction="pas" swaplevel="1" rot="R180"/>
<pin name="3" x="7.62" y="-2.54" visible="pad" length="middle" direction="pas" swaplevel="1" rot="R180"/>
<pin name="4" x="7.62" y="0" visible="pad" length="middle" direction="pas" swaplevel="1" rot="R180"/>
<pin name="5" x="7.62" y="2.54" visible="pad" length="middle" direction="pas" swaplevel="1" rot="R180"/>
<pin name="6" x="7.62" y="5.08" visible="pad" length="middle" direction="pas" swaplevel="1" rot="R180"/>
<pin name="7" x="7.62" y="7.62" visible="pad" length="middle" direction="pas" swaplevel="1" rot="R180"/>
<pin name="8" x="7.62" y="10.16" visible="pad" length="middle" direction="pas" swaplevel="1" rot="R180"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="MA08-1" urn="urn:adsk.eagle:component:8385/2" prefix="SV" uservalue="yes" library_version="2">
<description>&lt;b&gt;PIN HEADER&lt;/b&gt;</description>
<gates>
<gate name="1" symbol="MA08-1" x="0" y="0"/>
</gates>
<devices>
<device name="" package="MA08-1">
<connects>
<connect gate="1" pin="1" pad="1"/>
<connect gate="1" pin="2" pad="2"/>
<connect gate="1" pin="3" pad="3"/>
<connect gate="1" pin="4" pad="4"/>
<connect gate="1" pin="5" pad="5"/>
<connect gate="1" pin="6" pad="6"/>
<connect gate="1" pin="7" pad="7"/>
<connect gate="1" pin="8" pad="8"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:8343/1"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="MF" value="" constant="no"/>
<attribute name="MPN" value="" constant="no"/>
<attribute name="OC_FARNELL" value="unknown" constant="no"/>
<attribute name="OC_NEWARK" value="unknown" constant="no"/>
<attribute name="POPULARITY" value="10" constant="no"/>
</technology>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
<library name="pushbutton">
<packages>
<package name="SW_4-1437565-0">
<wire x1="-3.1" y1="-3.1" x2="-3.1" y2="3.1" width="0.127" layer="51"/>
<wire x1="-3.1" y1="3.1" x2="3.1" y2="3.1" width="0.127" layer="51"/>
<wire x1="3.1" y1="3.1" x2="3.1" y2="-3.1" width="0.127" layer="51"/>
<wire x1="3.1" y1="-3.1" x2="-3.1" y2="-3.1" width="0.127" layer="51"/>
<wire x1="-3.1" y1="1" x2="-3.1" y2="3.1" width="0.127" layer="21"/>
<wire x1="-3.1" y1="3.1" x2="3.1" y2="3.1" width="0.127" layer="21"/>
<wire x1="3.1" y1="3.1" x2="3.1" y2="0.83" width="0.127" layer="21"/>
<wire x1="3.1" y1="-0.83" x2="3.1" y2="-3.1" width="0.127" layer="21"/>
<wire x1="3.1" y1="-3.1" x2="-3.1" y2="-3.1" width="0.127" layer="21"/>
<wire x1="-3.1" y1="-3.1" x2="-3.1" y2="-1" width="0.127" layer="21"/>
<text x="-3.505459375" y="3.505459375" size="0.61055" layer="25">&gt;NAME</text>
<text x="-3.506709375" y="-4.107859375" size="0.61076875" layer="27">&gt;VALUE</text>
<wire x1="-3.5" y1="-3.35" x2="-3.5" y2="3.35" width="0.05" layer="39"/>
<wire x1="-3.5" y1="3.35" x2="3.5" y2="3.35" width="0.05" layer="39"/>
<wire x1="3.5" y1="3.35" x2="3.5" y2="-3.35" width="0.05" layer="39"/>
<wire x1="3.5" y1="-3.35" x2="-3.5" y2="-3.35" width="0.05" layer="39"/>
<circle x="-4.01" y="0" radius="0.21" width="0.2" layer="21"/>
<pad name="1" x="-2.5019" y="0" drill="1" shape="square"/>
<pad name="2" x="2.5019" y="0" drill="1"/>
</package>
</packages>
<symbols>
<symbol name="4-1437565-0">
<wire x1="-1.27" y1="0" x2="-2.54" y2="0" width="0.1524" layer="94"/>
<wire x1="1.27" y1="0" x2="2.54" y2="0" width="0.1524" layer="94"/>
<circle x="-1.27" y="0" radius="0.254" width="0.1524" layer="94"/>
<circle x="1.27" y="0" radius="0.254" width="0.1524" layer="94"/>
<wire x1="-1.27" y1="0.254" x2="1.016" y2="1.016" width="0.1524" layer="94"/>
<wire x1="-2.54" y1="-2.54" x2="-2.54" y2="2.54" width="0.254" layer="94"/>
<wire x1="-2.54" y1="2.54" x2="2.54" y2="2.54" width="0.254" layer="94"/>
<wire x1="2.54" y1="2.54" x2="2.54" y2="-2.54" width="0.254" layer="94"/>
<wire x1="2.54" y1="-2.54" x2="-2.54" y2="-2.54" width="0.254" layer="94"/>
<text x="-2.54495" y="2.54495" size="1.78146875" layer="95">&gt;NAME</text>
<text x="-2.7965" y="-6.35568125" size="1.779590625" layer="96">&gt;VALUE</text>
<pin name="1" x="-5.08" y="0" visible="off" length="short" direction="pas"/>
<pin name="2" x="5.08" y="0" visible="off" length="short" direction="pas" rot="R180"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="4-1437565-0" prefix="S">
<description>Switch Tactile OFF (ON) SPST Round Button PC Pins 0.05A 12VDC 1.57N Thru-Hole T/R &lt;a href="https://pricing.snapeda.com/parts/FSM4JRT/TE%20Connectivity/view-part?ref=eda"&gt;Check prices&lt;/a&gt;</description>
<gates>
<gate name="G$1" symbol="4-1437565-0" x="0" y="0"/>
</gates>
<devices>
<device name="" package="SW_4-1437565-0">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name="">
<attribute name="AVAILABILITY" value="In Stock"/>
<attribute name="COMMENT" value="4-1437565-0"/>
<attribute name="DESCRIPTION" value=" features, series, Tactile / Jog, circuitry, voltage, illumination, operation, tactile, style, Pushbutton, Industrial ... "/>
<attribute name="MF" value="TE Connectivity"/>
<attribute name="MP" value="FSM4JRT"/>
<attribute name="PACKAGE" value="None"/>
<attribute name="PRICE" value="None"/>
<attribute name="PURCHASE-URL" value="https://pricing.snapeda.com/search/part/FSM4JRT/?ref=eda"/>
</technology>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
<library name="terminal-block-clema-3.81-284392-3">
<packages>
<package name="TE_284392-3">
<wire x1="-5.71" y1="-4.1" x2="-5.71" y2="4.1" width="0.127" layer="51"/>
<wire x1="-5.71" y1="4.1" x2="5.71" y2="4.1" width="0.127" layer="51"/>
<wire x1="5.71" y1="4.1" x2="5.71" y2="-4.1" width="0.127" layer="51"/>
<wire x1="5.71" y1="-4.1" x2="-5.71" y2="-4.1" width="0.127" layer="51"/>
<wire x1="-5.71" y1="-4.1" x2="-5.71" y2="4.1" width="0.127" layer="21"/>
<wire x1="-5.71" y1="4.1" x2="5.71" y2="4.1" width="0.127" layer="21"/>
<wire x1="5.71" y1="4.1" x2="5.71" y2="-4.1" width="0.127" layer="21"/>
<wire x1="5.71" y1="-4.1" x2="-5.71" y2="-4.1" width="0.127" layer="21"/>
<wire x1="-5.96" y1="-4.35" x2="-5.96" y2="4.35" width="0.05" layer="39"/>
<wire x1="-5.96" y1="4.35" x2="5.96" y2="4.35" width="0.05" layer="39"/>
<wire x1="5.96" y1="4.35" x2="5.96" y2="-4.35" width="0.05" layer="39"/>
<wire x1="5.96" y1="-4.35" x2="-5.96" y2="-4.35" width="0.05" layer="39"/>
<text x="-6.71" y="5.1" size="1.27" layer="25">&gt;NAME</text>
<text x="-6.71" y="-6.35" size="1.27" layer="27">&gt;VALUE</text>
<circle x="-3.81" y="4.7" radius="0.1" width="0.2" layer="21"/>
<circle x="-3.81" y="4.7" radius="0.1" width="0.2" layer="51"/>
<pad name="1" x="-3.81" y="0" drill="1.1" shape="square"/>
<pad name="2" x="0" y="0" drill="1.1"/>
<pad name="3" x="3.81" y="0" drill="1.1"/>
</package>
</packages>
<symbols>
<symbol name="284392-3">
<wire x1="-5.08" y1="-5.08" x2="-5.08" y2="5.08" width="0.254" layer="94"/>
<wire x1="-5.08" y1="5.08" x2="5.08" y2="5.08" width="0.254" layer="94"/>
<wire x1="5.08" y1="5.08" x2="5.08" y2="-5.08" width="0.254" layer="94"/>
<wire x1="5.08" y1="-5.08" x2="-5.08" y2="-5.08" width="0.254" layer="94"/>
<text x="-5.58" y="5.08" size="1.778" layer="95">&gt;NAME</text>
<text x="-5.08" y="-7.62" size="1.778" layer="96">&gt;VALUE</text>
<pin name="1" x="-10.16" y="2.54" length="middle" direction="pas"/>
<pin name="2" x="-10.16" y="0" length="middle" direction="pas"/>
<pin name="3" x="-10.16" y="-2.54" length="middle" direction="pas"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="284392-3" prefix="J">
<description> &lt;a href="https://pricing.snapeda.com/parts/284392-3/TE%20Connectivity/view-part?ref=eda"&gt;Check prices&lt;/a&gt;</description>
<gates>
<gate name="G$1" symbol="284392-3" x="0" y="0"/>
</gates>
<devices>
<device name="" package="TE_284392-3">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
<connect gate="G$1" pin="3" pad="3"/>
</connects>
<technologies>
<technology name="">
<attribute name="AVAILABILITY" value="In Stock"/>
<attribute name="COMMENT" value="284392-3"/>
<attribute name="DESCRIPTION" value=" Conn Terminal Block 3 POS 3.81mm Solder ST Thru-Hole 12A/Contact "/>
<attribute name="EU_ROHS_COMPLIANCE" value="Compliant with Exemptions"/>
<attribute name="MF" value="TE Connectivity"/>
<attribute name="MP" value="284392-3"/>
<attribute name="PACKAGE" value="None"/>
<attribute name="PRICE" value="None"/>
<attribute name="PURCHASE-URL" value="https://pricing.snapeda.com/search/part/284392-3/?ref=eda"/>
</technology>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
<library name="terminal-block-clema-3.81-1776113-2">
<packages>
<package name="TE_1776113-2">
<wire x1="-3.81" y1="3.85" x2="3.81" y2="3.85" width="0.127" layer="21"/>
<wire x1="3.81" y1="3.85" x2="3.81" y2="-3.45" width="0.127" layer="21"/>
<wire x1="3.81" y1="-3.45" x2="-3.81" y2="-3.45" width="0.127" layer="21"/>
<wire x1="-3.81" y1="-3.45" x2="-3.81" y2="3.85" width="0.127" layer="21"/>
<wire x1="-3.81" y1="3.85" x2="3.81" y2="3.85" width="0.127" layer="51"/>
<wire x1="3.81" y1="3.85" x2="3.81" y2="-3.45" width="0.127" layer="51"/>
<wire x1="3.81" y1="-3.45" x2="-3.81" y2="-3.45" width="0.127" layer="51"/>
<wire x1="-3.81" y1="-3.45" x2="-3.81" y2="3.85" width="0.127" layer="51"/>
<wire x1="-4.06" y1="4.1" x2="4.06" y2="4.1" width="0.05" layer="39"/>
<wire x1="4.06" y1="4.1" x2="4.06" y2="-3.7" width="0.05" layer="39"/>
<wire x1="4.06" y1="-3.7" x2="-4.06" y2="-3.7" width="0.05" layer="39"/>
<wire x1="-4.06" y1="-3.7" x2="-4.06" y2="4.1" width="0.05" layer="39"/>
<text x="-4.00581875" y="4.256190625" size="1.27185" layer="25">&gt;NAME</text>
<text x="-4.00198125" y="-5.50271875" size="1.27063125" layer="27">&gt;VALUE</text>
<circle x="-4.5" y="0" radius="0.15" width="0.3" layer="21"/>
<circle x="-1.905" y="0" radius="0.15" width="0.3" layer="51"/>
<pad name="1" x="-1.905" y="0" drill="1.2" shape="square"/>
<pad name="2" x="1.905" y="0" drill="1.2"/>
</package>
</packages>
<symbols>
<symbol name="1776113-2">
<wire x1="5.08" y1="5.08" x2="5.08" y2="-2.54" width="0.254" layer="94"/>
<wire x1="5.08" y1="-2.54" x2="-2.54" y2="-2.54" width="0.254" layer="94"/>
<wire x1="-2.54" y1="-2.54" x2="-2.54" y2="5.08" width="0.254" layer="94"/>
<wire x1="-2.54" y1="5.08" x2="5.08" y2="5.08" width="0.254" layer="94"/>
<text x="-2.29043125" y="6.107809375" size="1.272459375" layer="95">&gt;NAME</text>
<text x="-2.54221875" y="-5.08443125" size="1.271109375" layer="96">&gt;VALUE</text>
<pin name="1" x="10.16" y="2.54" length="middle" direction="pas" rot="R180"/>
<pin name="2" x="10.16" y="0" length="middle" direction="pas" rot="R180"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="1776113-2" prefix="J">
<description>Conn Eurostyle Block 2 POS 3.81mm Solder ST Thru-Hole 12A/Contact &lt;a href="https://pricing.snapeda.com/parts/1776113-2/TE%20Connectivity/view-part?ref=eda"&gt;Check prices&lt;/a&gt;</description>
<gates>
<gate name="G$1" symbol="1776113-2" x="0" y="0"/>
</gates>
<devices>
<device name="" package="TE_1776113-2">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name="">
<attribute name="AVAILABILITY" value="In Stock"/>
<attribute name="CENTERLINE_PITCH" value="3.81 mm[.1499 in]"/>
<attribute name="COMMENT" value="1776113-2"/>
<attribute name="DESCRIPTION" value=" 2P,3.81MM,SIDE ENTRY,HIGH TMP "/>
<attribute name="EU_ROHS_COMPLIANCE" value="Compliant"/>
<attribute name="MF" value="TE Connectivity"/>
<attribute name="MP" value="1776113-2"/>
<attribute name="NUMBER_OF_POSITIONS" value="2"/>
<attribute name="PACKAGE" value="None"/>
<attribute name="PRICE" value="None"/>
<attribute name="PURCHASE-URL" value="https://pricing.snapeda.com/search/part/1776113-2/?ref=eda"/>
</technology>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
<library name="ARDUINO_PRO_MINI">
<packages>
<package name="MODULE_ARDUINO_PRO_MINI">
<wire x1="-8.89" y1="16.51" x2="-8.89" y2="-16.51" width="0.127" layer="21"/>
<wire x1="-8.89" y1="-16.51" x2="8.89" y2="-16.51" width="0.127" layer="21"/>
<wire x1="8.89" y1="-16.51" x2="8.89" y2="16.51" width="0.127" layer="21"/>
<wire x1="8.89" y1="16.51" x2="-8.89" y2="16.51" width="0.127" layer="21"/>
<text x="-9" y="17" size="1.27" layer="25">&gt;NAME</text>
<text x="-9" y="-18.5" size="1.27" layer="27">&gt;VALUE</text>
<wire x1="-8.89" y1="16.51" x2="-8.89" y2="-16.51" width="0.127" layer="51"/>
<wire x1="-8.89" y1="-16.51" x2="8.89" y2="-16.51" width="0.127" layer="51"/>
<wire x1="8.89" y1="-16.51" x2="8.89" y2="16.51" width="0.127" layer="51"/>
<wire x1="8.89" y1="16.51" x2="-8.89" y2="16.51" width="0.127" layer="51"/>
<wire x1="-9.14" y1="16.76" x2="9.14" y2="16.76" width="0.05" layer="39"/>
<wire x1="9.14" y1="16.76" x2="9.14" y2="-16.76" width="0.05" layer="39"/>
<wire x1="9.14" y1="-16.76" x2="-9.14" y2="-16.76" width="0.05" layer="39"/>
<wire x1="-9.14" y1="-16.76" x2="-9.14" y2="16.76" width="0.05" layer="39"/>
<pad name="JP7_12" x="-7.62" y="12.7" drill="1.016" diameter="1.8796"/>
<pad name="JP7_11" x="-7.62" y="10.16" drill="1.016" diameter="1.8796"/>
<pad name="JP7_10" x="-7.62" y="7.62" drill="1.016" diameter="1.8796"/>
<pad name="JP7_9" x="-7.62" y="5.08" drill="1.016" diameter="1.8796"/>
<pad name="JP7_8" x="-7.62" y="2.54" drill="1.016" diameter="1.8796"/>
<pad name="JP7_7" x="-7.62" y="0" drill="1.016" diameter="1.8796"/>
<pad name="JP7_6" x="-7.62" y="-2.54" drill="1.016" diameter="1.8796"/>
<pad name="JP7_5" x="-7.62" y="-5.08" drill="1.016" diameter="1.8796"/>
<pad name="JP7_4" x="-7.62" y="-7.62" drill="1.016" diameter="1.8796"/>
<pad name="JP7_3" x="-7.62" y="-10.16" drill="1.016" diameter="1.8796"/>
<pad name="JP7_2" x="-7.62" y="-12.7" drill="1.016" diameter="1.8796"/>
<pad name="JP7_1" x="-7.62" y="-15.24" drill="1.016" diameter="1.8796"/>
<pad name="JP6_12" x="7.62" y="-15.24" drill="1.016" diameter="1.8796"/>
<pad name="JP6_11" x="7.62" y="-12.7" drill="1.016" diameter="1.8796"/>
<pad name="JP6_10" x="7.62" y="-10.16" drill="1.016" diameter="1.8796"/>
<pad name="JP6_9" x="7.62" y="-7.62" drill="1.016" diameter="1.8796"/>
<pad name="JP6_8" x="7.62" y="-5.08" drill="1.016" diameter="1.8796"/>
<pad name="JP6_7" x="7.62" y="-2.54" drill="1.016" diameter="1.8796"/>
<pad name="JP6_6" x="7.62" y="0" drill="1.016" diameter="1.8796"/>
<pad name="JP6_5" x="7.62" y="2.54" drill="1.016" diameter="1.8796"/>
<pad name="JP6_4" x="7.62" y="5.08" drill="1.016" diameter="1.8796"/>
<pad name="JP6_3" x="7.62" y="7.62" drill="1.016" diameter="1.8796"/>
<pad name="JP6_2" x="7.62" y="10.16" drill="1.016" diameter="1.8796"/>
<pad name="JP6_1" x="7.62" y="12.7" drill="1.016" diameter="1.8796"/>
<pad name="JP3_1" x="4.699" y="-9.017" drill="1.016" diameter="1.8796"/>
<pad name="JP3_2" x="4.699" y="-6.477" drill="1.016" diameter="1.8796"/>
<pad name="JP2_2" x="4.699" y="3.937" drill="1.016" diameter="1.8796"/>
<pad name="JP2_1" x="4.699" y="1.397" drill="1.016" diameter="1.8796"/>
<pad name="JP1_6" x="-6.35" y="15.24" drill="1.016" diameter="1.8796"/>
<pad name="JP1_5" x="-3.81" y="15.24" drill="1.016" diameter="1.8796"/>
<pad name="JP1_4" x="-1.27" y="15.24" drill="1.016" diameter="1.8796"/>
<pad name="JP1_3" x="1.27" y="15.24" drill="1.016" diameter="1.8796"/>
<pad name="JP1_2" x="3.81" y="15.24" drill="1.016" diameter="1.8796"/>
<pad name="JP1_1" x="6.35" y="15.24" drill="1.016" diameter="1.8796"/>
</package>
</packages>
<symbols>
<symbol name="ARDUINO_PRO_MINI">
<wire x1="-12.7" y1="30.48" x2="-12.7" y2="-30.48" width="0.254" layer="94"/>
<wire x1="-12.7" y1="-30.48" x2="12.7" y2="-30.48" width="0.254" layer="94"/>
<wire x1="12.7" y1="-30.48" x2="12.7" y2="30.48" width="0.254" layer="94"/>
<wire x1="12.7" y1="30.48" x2="-12.7" y2="30.48" width="0.254" layer="94"/>
<text x="-12.7" y="31.75" size="1.778" layer="95">&gt;NAME</text>
<text x="-12.7" y="-33.02" size="1.778" layer="96">&gt;VALUE</text>
<pin name="D2" x="17.78" y="0" length="middle" rot="R180"/>
<pin name="D3" x="17.78" y="-2.54" length="middle" rot="R180"/>
<pin name="D4" x="17.78" y="-5.08" length="middle" rot="R180"/>
<pin name="D5" x="17.78" y="-7.62" length="middle" rot="R180"/>
<pin name="D6" x="17.78" y="-10.16" length="middle" rot="R180"/>
<pin name="D7" x="17.78" y="-12.7" length="middle" rot="R180"/>
<pin name="D8" x="17.78" y="-15.24" length="middle" rot="R180"/>
<pin name="D9" x="17.78" y="-17.78" length="middle" rot="R180"/>
<pin name="D10" x="-17.78" y="-17.78" length="middle"/>
<pin name="MOSI" x="-17.78" y="-15.24" length="middle"/>
<pin name="MISO" x="-17.78" y="-12.7" length="middle"/>
<pin name="SCK" x="-17.78" y="-10.16" length="middle"/>
<pin name="A0" x="-17.78" y="0" length="middle"/>
<pin name="A1" x="-17.78" y="-2.54" length="middle"/>
<pin name="A2" x="-17.78" y="-5.08" length="middle"/>
<pin name="A3" x="-17.78" y="-7.62" length="middle"/>
<pin name="GND_2" x="17.78" y="-27.94" length="middle" direction="pwr" rot="R180"/>
<pin name="GND_1" x="17.78" y="-25.4" length="middle" direction="pwr" rot="R180"/>
<pin name="RAW" x="17.78" y="22.86" length="middle" direction="pwr" rot="R180"/>
<pin name="RST_2" x="17.78" y="7.62" length="middle" direction="in" rot="R180"/>
<pin name="RST_1" x="-17.78" y="2.54" length="middle" direction="in"/>
<pin name="RXI_2" x="17.78" y="2.54" length="middle" rot="R180"/>
<pin name="TXO_2" x="17.78" y="5.08" length="middle" rot="R180"/>
<pin name="VCC_1" x="17.78" y="25.4" length="middle" direction="pwr" rot="R180"/>
<pin name="A7" x="-17.78" y="15.24" length="middle" direction="in"/>
<pin name="A6" x="-17.78" y="17.78" length="middle" direction="in"/>
<pin name="A4" x="-17.78" y="10.16" length="middle"/>
<pin name="A5" x="-17.78" y="7.62" length="middle"/>
<pin name="GND" x="17.78" y="-22.86" length="middle" direction="pwr" rot="R180"/>
<pin name="VCC" x="17.78" y="27.94" length="middle" direction="pwr" rot="R180"/>
<pin name="RXI" x="17.78" y="12.7" length="middle" rot="R180"/>
<pin name="TXO" x="17.78" y="15.24" length="middle" rot="R180"/>
<pin name="DTR" x="17.78" y="17.78" length="middle" direction="in" rot="R180"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="ARDUINO_PRO_MINI" prefix="U">
<description>ATmega328 Arduino Pro Mini 328 5V/16MHz AVR® ATmega AVR MCU 8-Bit Embedded Evaluation Board  &lt;a href="https://pricing.snapeda.com/parts/Arduino%20Pro%20Mini/Arduino/view-part?ref=eda"&gt;Check prices&lt;/a&gt;</description>
<gates>
<gate name="G$1" symbol="ARDUINO_PRO_MINI" x="0" y="0"/>
</gates>
<devices>
<device name="" package="MODULE_ARDUINO_PRO_MINI">
<connects>
<connect gate="G$1" pin="A0" pad="JP6_8"/>
<connect gate="G$1" pin="A1" pad="JP6_7"/>
<connect gate="G$1" pin="A2" pad="JP6_6"/>
<connect gate="G$1" pin="A3" pad="JP6_5"/>
<connect gate="G$1" pin="A4" pad="JP2_1"/>
<connect gate="G$1" pin="A5" pad="JP2_2"/>
<connect gate="G$1" pin="A6" pad="JP3_1"/>
<connect gate="G$1" pin="A7" pad="JP3_2"/>
<connect gate="G$1" pin="D10" pad="JP6_12"/>
<connect gate="G$1" pin="D2" pad="JP7_8"/>
<connect gate="G$1" pin="D3" pad="JP7_7"/>
<connect gate="G$1" pin="D4" pad="JP7_6"/>
<connect gate="G$1" pin="D5" pad="JP7_5"/>
<connect gate="G$1" pin="D6" pad="JP7_4"/>
<connect gate="G$1" pin="D7" pad="JP7_3"/>
<connect gate="G$1" pin="D8" pad="JP7_2"/>
<connect gate="G$1" pin="D9" pad="JP7_1"/>
<connect gate="G$1" pin="DTR" pad="JP1_1"/>
<connect gate="G$1" pin="GND" pad="JP1_5 JP1_6"/>
<connect gate="G$1" pin="GND_1" pad="JP6_2"/>
<connect gate="G$1" pin="GND_2" pad="JP7_9"/>
<connect gate="G$1" pin="MISO" pad="JP6_10"/>
<connect gate="G$1" pin="MOSI" pad="JP6_11"/>
<connect gate="G$1" pin="RAW" pad="JP6_1"/>
<connect gate="G$1" pin="RST_1" pad="JP6_3"/>
<connect gate="G$1" pin="RST_2" pad="JP7_10"/>
<connect gate="G$1" pin="RXI" pad="JP1_3"/>
<connect gate="G$1" pin="RXI_2" pad="JP7_11"/>
<connect gate="G$1" pin="SCK" pad="JP6_9"/>
<connect gate="G$1" pin="TXO" pad="JP1_2"/>
<connect gate="G$1" pin="TXO_2" pad="JP7_12"/>
<connect gate="G$1" pin="VCC" pad="JP1_4"/>
<connect gate="G$1" pin="VCC_1" pad="JP6_4"/>
</connects>
<technologies>
<technology name="">
<attribute name="AVAILABILITY" value="Not in stock"/>
<attribute name="DESCRIPTION" value=" This board was developed for applications and installations where space is premium and projects are made as permanent set ups. Small, available in 3.3 V and 5 V versions, powered by ATmega328P. "/>
<attribute name="MF" value="Arduino"/>
<attribute name="MP" value="Arduino Pro Mini"/>
<attribute name="PACKAGE" value="None"/>
<attribute name="PRICE" value="None"/>
</technology>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
<library name="pinhead" urn="urn:adsk.eagle:library:325">
<description>&lt;b&gt;Pin Header Connectors&lt;/b&gt;&lt;p&gt;
&lt;author&gt;Created by librarian@cadsoft.de&lt;/author&gt;</description>
<packages>
<package name="1X03" urn="urn:adsk.eagle:footprint:22340/1" library_version="4">
<description>&lt;b&gt;PIN HEADER&lt;/b&gt;</description>
<wire x1="-3.175" y1="1.27" x2="-1.905" y2="1.27" width="0.1524" layer="21"/>
<wire x1="-1.905" y1="1.27" x2="-1.27" y2="0.635" width="0.1524" layer="21"/>
<wire x1="-1.27" y1="0.635" x2="-1.27" y2="-0.635" width="0.1524" layer="21"/>
<wire x1="-1.27" y1="-0.635" x2="-1.905" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="-1.27" y1="0.635" x2="-0.635" y2="1.27" width="0.1524" layer="21"/>
<wire x1="-0.635" y1="1.27" x2="0.635" y2="1.27" width="0.1524" layer="21"/>
<wire x1="0.635" y1="1.27" x2="1.27" y2="0.635" width="0.1524" layer="21"/>
<wire x1="1.27" y1="0.635" x2="1.27" y2="-0.635" width="0.1524" layer="21"/>
<wire x1="1.27" y1="-0.635" x2="0.635" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="0.635" y1="-1.27" x2="-0.635" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="-0.635" y1="-1.27" x2="-1.27" y2="-0.635" width="0.1524" layer="21"/>
<wire x1="-3.81" y1="0.635" x2="-3.81" y2="-0.635" width="0.1524" layer="21"/>
<wire x1="-3.175" y1="1.27" x2="-3.81" y2="0.635" width="0.1524" layer="21"/>
<wire x1="-3.81" y1="-0.635" x2="-3.175" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="-1.905" y1="-1.27" x2="-3.175" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="1.27" y1="0.635" x2="1.905" y2="1.27" width="0.1524" layer="21"/>
<wire x1="1.905" y1="1.27" x2="3.175" y2="1.27" width="0.1524" layer="21"/>
<wire x1="3.175" y1="1.27" x2="3.81" y2="0.635" width="0.1524" layer="21"/>
<wire x1="3.81" y1="0.635" x2="3.81" y2="-0.635" width="0.1524" layer="21"/>
<wire x1="3.81" y1="-0.635" x2="3.175" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="3.175" y1="-1.27" x2="1.905" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="1.905" y1="-1.27" x2="1.27" y2="-0.635" width="0.1524" layer="21"/>
<pad name="1" x="-2.54" y="0" drill="1.016" shape="long" rot="R90"/>
<pad name="2" x="0" y="0" drill="1.016" shape="long" rot="R90"/>
<pad name="3" x="2.54" y="0" drill="1.016" shape="long" rot="R90"/>
<text x="-3.8862" y="1.8288" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="-3.81" y="-3.175" size="1.27" layer="27">&gt;VALUE</text>
<rectangle x1="-0.254" y1="-0.254" x2="0.254" y2="0.254" layer="51"/>
<rectangle x1="-2.794" y1="-0.254" x2="-2.286" y2="0.254" layer="51"/>
<rectangle x1="2.286" y1="-0.254" x2="2.794" y2="0.254" layer="51"/>
</package>
<package name="1X03/90" urn="urn:adsk.eagle:footprint:22341/1" library_version="4">
<description>&lt;b&gt;PIN HEADER&lt;/b&gt;</description>
<wire x1="-3.81" y1="-1.905" x2="-1.27" y2="-1.905" width="0.1524" layer="21"/>
<wire x1="-1.27" y1="-1.905" x2="-1.27" y2="0.635" width="0.1524" layer="21"/>
<wire x1="-1.27" y1="0.635" x2="-3.81" y2="0.635" width="0.1524" layer="21"/>
<wire x1="-3.81" y1="0.635" x2="-3.81" y2="-1.905" width="0.1524" layer="21"/>
<wire x1="-2.54" y1="6.985" x2="-2.54" y2="1.27" width="0.762" layer="21"/>
<wire x1="-1.27" y1="-1.905" x2="1.27" y2="-1.905" width="0.1524" layer="21"/>
<wire x1="1.27" y1="-1.905" x2="1.27" y2="0.635" width="0.1524" layer="21"/>
<wire x1="1.27" y1="0.635" x2="-1.27" y2="0.635" width="0.1524" layer="21"/>
<wire x1="0" y1="6.985" x2="0" y2="1.27" width="0.762" layer="21"/>
<wire x1="1.27" y1="-1.905" x2="3.81" y2="-1.905" width="0.1524" layer="21"/>
<wire x1="3.81" y1="-1.905" x2="3.81" y2="0.635" width="0.1524" layer="21"/>
<wire x1="3.81" y1="0.635" x2="1.27" y2="0.635" width="0.1524" layer="21"/>
<wire x1="2.54" y1="6.985" x2="2.54" y2="1.27" width="0.762" layer="21"/>
<pad name="1" x="-2.54" y="-3.81" drill="1.016" shape="long" rot="R90"/>
<pad name="2" x="0" y="-3.81" drill="1.016" shape="long" rot="R90"/>
<pad name="3" x="2.54" y="-3.81" drill="1.016" shape="long" rot="R90"/>
<text x="-4.445" y="-3.81" size="1.27" layer="25" ratio="10" rot="R90">&gt;NAME</text>
<text x="5.715" y="-3.81" size="1.27" layer="27" rot="R90">&gt;VALUE</text>
<rectangle x1="-2.921" y1="0.635" x2="-2.159" y2="1.143" layer="21"/>
<rectangle x1="-0.381" y1="0.635" x2="0.381" y2="1.143" layer="21"/>
<rectangle x1="2.159" y1="0.635" x2="2.921" y2="1.143" layer="21"/>
<rectangle x1="-2.921" y1="-2.921" x2="-2.159" y2="-1.905" layer="21"/>
<rectangle x1="-0.381" y1="-2.921" x2="0.381" y2="-1.905" layer="21"/>
<rectangle x1="2.159" y1="-2.921" x2="2.921" y2="-1.905" layer="21"/>
</package>
<package name="1X05" urn="urn:adsk.eagle:footprint:22354/1" library_version="4">
<description>&lt;b&gt;PIN HEADER&lt;/b&gt;</description>
<wire x1="1.905" y1="1.27" x2="3.175" y2="1.27" width="0.1524" layer="21"/>
<wire x1="3.175" y1="1.27" x2="3.81" y2="0.635" width="0.1524" layer="21"/>
<wire x1="3.81" y1="0.635" x2="3.81" y2="-0.635" width="0.1524" layer="21"/>
<wire x1="3.81" y1="-0.635" x2="3.175" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="-1.27" y1="0.635" x2="-0.635" y2="1.27" width="0.1524" layer="21"/>
<wire x1="-0.635" y1="1.27" x2="0.635" y2="1.27" width="0.1524" layer="21"/>
<wire x1="0.635" y1="1.27" x2="1.27" y2="0.635" width="0.1524" layer="21"/>
<wire x1="1.27" y1="0.635" x2="1.27" y2="-0.635" width="0.1524" layer="21"/>
<wire x1="1.27" y1="-0.635" x2="0.635" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="0.635" y1="-1.27" x2="-0.635" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="-0.635" y1="-1.27" x2="-1.27" y2="-0.635" width="0.1524" layer="21"/>
<wire x1="1.905" y1="1.27" x2="1.27" y2="0.635" width="0.1524" layer="21"/>
<wire x1="1.27" y1="-0.635" x2="1.905" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="3.175" y1="-1.27" x2="1.905" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="-5.715" y1="1.27" x2="-4.445" y2="1.27" width="0.1524" layer="21"/>
<wire x1="-4.445" y1="1.27" x2="-3.81" y2="0.635" width="0.1524" layer="21"/>
<wire x1="-3.81" y1="0.635" x2="-3.81" y2="-0.635" width="0.1524" layer="21"/>
<wire x1="-3.81" y1="-0.635" x2="-4.445" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="-3.81" y1="0.635" x2="-3.175" y2="1.27" width="0.1524" layer="21"/>
<wire x1="-3.175" y1="1.27" x2="-1.905" y2="1.27" width="0.1524" layer="21"/>
<wire x1="-1.905" y1="1.27" x2="-1.27" y2="0.635" width="0.1524" layer="21"/>
<wire x1="-1.27" y1="0.635" x2="-1.27" y2="-0.635" width="0.1524" layer="21"/>
<wire x1="-1.27" y1="-0.635" x2="-1.905" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="-1.905" y1="-1.27" x2="-3.175" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="-3.175" y1="-1.27" x2="-3.81" y2="-0.635" width="0.1524" layer="21"/>
<wire x1="-6.35" y1="0.635" x2="-6.35" y2="-0.635" width="0.1524" layer="21"/>
<wire x1="-5.715" y1="1.27" x2="-6.35" y2="0.635" width="0.1524" layer="21"/>
<wire x1="-6.35" y1="-0.635" x2="-5.715" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="-4.445" y1="-1.27" x2="-5.715" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="4.445" y1="1.27" x2="5.715" y2="1.27" width="0.1524" layer="21"/>
<wire x1="5.715" y1="1.27" x2="6.35" y2="0.635" width="0.1524" layer="21"/>
<wire x1="6.35" y1="0.635" x2="6.35" y2="-0.635" width="0.1524" layer="21"/>
<wire x1="6.35" y1="-0.635" x2="5.715" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="4.445" y1="1.27" x2="3.81" y2="0.635" width="0.1524" layer="21"/>
<wire x1="3.81" y1="-0.635" x2="4.445" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="5.715" y1="-1.27" x2="4.445" y2="-1.27" width="0.1524" layer="21"/>
<pad name="1" x="-5.08" y="0" drill="1.016" shape="long" rot="R90"/>
<pad name="2" x="-2.54" y="0" drill="1.016" shape="long" rot="R90"/>
<pad name="3" x="0" y="0" drill="1.016" shape="long" rot="R90"/>
<pad name="4" x="2.54" y="0" drill="1.016" shape="long" rot="R90"/>
<pad name="5" x="5.08" y="0" drill="1.016" shape="long" rot="R90"/>
<text x="-6.4262" y="1.8288" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="-6.35" y="-3.175" size="1.27" layer="27">&gt;VALUE</text>
<rectangle x1="2.286" y1="-0.254" x2="2.794" y2="0.254" layer="51"/>
<rectangle x1="-0.254" y1="-0.254" x2="0.254" y2="0.254" layer="51"/>
<rectangle x1="-2.794" y1="-0.254" x2="-2.286" y2="0.254" layer="51"/>
<rectangle x1="-5.334" y1="-0.254" x2="-4.826" y2="0.254" layer="51"/>
<rectangle x1="4.826" y1="-0.254" x2="5.334" y2="0.254" layer="51"/>
</package>
<package name="1X05/90" urn="urn:adsk.eagle:footprint:22355/1" library_version="4">
<description>&lt;b&gt;PIN HEADER&lt;/b&gt;</description>
<wire x1="-6.35" y1="-1.905" x2="-3.81" y2="-1.905" width="0.1524" layer="21"/>
<wire x1="-3.81" y1="-1.905" x2="-3.81" y2="0.635" width="0.1524" layer="21"/>
<wire x1="-3.81" y1="0.635" x2="-6.35" y2="0.635" width="0.1524" layer="21"/>
<wire x1="-6.35" y1="0.635" x2="-6.35" y2="-1.905" width="0.1524" layer="21"/>
<wire x1="-5.08" y1="6.985" x2="-5.08" y2="1.27" width="0.762" layer="21"/>
<wire x1="-3.81" y1="-1.905" x2="-1.27" y2="-1.905" width="0.1524" layer="21"/>
<wire x1="-1.27" y1="-1.905" x2="-1.27" y2="0.635" width="0.1524" layer="21"/>
<wire x1="-1.27" y1="0.635" x2="-3.81" y2="0.635" width="0.1524" layer="21"/>
<wire x1="-2.54" y1="6.985" x2="-2.54" y2="1.27" width="0.762" layer="21"/>
<wire x1="-1.27" y1="-1.905" x2="1.27" y2="-1.905" width="0.1524" layer="21"/>
<wire x1="1.27" y1="-1.905" x2="1.27" y2="0.635" width="0.1524" layer="21"/>
<wire x1="1.27" y1="0.635" x2="-1.27" y2="0.635" width="0.1524" layer="21"/>
<wire x1="0" y1="6.985" x2="0" y2="1.27" width="0.762" layer="21"/>
<wire x1="1.27" y1="-1.905" x2="3.81" y2="-1.905" width="0.1524" layer="21"/>
<wire x1="3.81" y1="-1.905" x2="3.81" y2="0.635" width="0.1524" layer="21"/>
<wire x1="3.81" y1="0.635" x2="1.27" y2="0.635" width="0.1524" layer="21"/>
<wire x1="2.54" y1="6.985" x2="2.54" y2="1.27" width="0.762" layer="21"/>
<wire x1="3.81" y1="-1.905" x2="6.35" y2="-1.905" width="0.1524" layer="21"/>
<wire x1="6.35" y1="-1.905" x2="6.35" y2="0.635" width="0.1524" layer="21"/>
<wire x1="6.35" y1="0.635" x2="3.81" y2="0.635" width="0.1524" layer="21"/>
<wire x1="5.08" y1="6.985" x2="5.08" y2="1.27" width="0.762" layer="21"/>
<pad name="1" x="-5.08" y="-3.81" drill="1.016" shape="long" rot="R90"/>
<pad name="2" x="-2.54" y="-3.81" drill="1.016" shape="long" rot="R90"/>
<pad name="3" x="0" y="-3.81" drill="1.016" shape="long" rot="R90"/>
<pad name="4" x="2.54" y="-3.81" drill="1.016" shape="long" rot="R90"/>
<pad name="5" x="5.08" y="-3.81" drill="1.016" shape="long" rot="R90"/>
<text x="-6.985" y="-3.81" size="1.27" layer="25" ratio="10" rot="R90">&gt;NAME</text>
<text x="8.255" y="-3.81" size="1.27" layer="27" rot="R90">&gt;VALUE</text>
<rectangle x1="-5.461" y1="0.635" x2="-4.699" y2="1.143" layer="21"/>
<rectangle x1="-2.921" y1="0.635" x2="-2.159" y2="1.143" layer="21"/>
<rectangle x1="-0.381" y1="0.635" x2="0.381" y2="1.143" layer="21"/>
<rectangle x1="2.159" y1="0.635" x2="2.921" y2="1.143" layer="21"/>
<rectangle x1="4.699" y1="0.635" x2="5.461" y2="1.143" layer="21"/>
<rectangle x1="-5.461" y1="-2.921" x2="-4.699" y2="-1.905" layer="21"/>
<rectangle x1="-2.921" y1="-2.921" x2="-2.159" y2="-1.905" layer="21"/>
<rectangle x1="-0.381" y1="-2.921" x2="0.381" y2="-1.905" layer="21"/>
<rectangle x1="2.159" y1="-2.921" x2="2.921" y2="-1.905" layer="21"/>
<rectangle x1="4.699" y1="-2.921" x2="5.461" y2="-1.905" layer="21"/>
</package>
<package name="1_05X2MM" urn="urn:adsk.eagle:footprint:22356/1" library_version="4">
<description>CON-M-1X5-200</description>
<text x="-4.5" y="1.5" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="-4.75" y="-2.75" size="1.27" layer="27">&gt;VALUE</text>
<wire x1="-5" y1="0.5" x2="-4.5" y2="1" width="0.1524" layer="21"/>
<wire x1="-4.5" y1="1" x2="-3.5" y2="1" width="0.1524" layer="21"/>
<wire x1="-3.5" y1="1" x2="-3" y2="0.5" width="0.1524" layer="21"/>
<wire x1="-3" y1="-0.5" x2="-3.5" y2="-1" width="0.1524" layer="21"/>
<wire x1="-3.5" y1="-1" x2="-4.5" y2="-1" width="0.1524" layer="21"/>
<wire x1="-4.5" y1="-1" x2="-5" y2="-0.5" width="0.1524" layer="21"/>
<wire x1="-5" y1="0.5" x2="-5" y2="-0.5" width="0.1524" layer="21"/>
<wire x1="-3" y1="0.5" x2="-2.5" y2="1" width="0.1524" layer="21"/>
<wire x1="-2.5" y1="1" x2="-1.5" y2="1" width="0.1524" layer="21"/>
<wire x1="-1.5" y1="1" x2="-1" y2="0.5" width="0.1524" layer="21"/>
<wire x1="-1" y1="-0.5" x2="-1.5" y2="-1" width="0.1524" layer="21"/>
<wire x1="-1.5" y1="-1" x2="-2.5" y2="-1" width="0.1524" layer="21"/>
<wire x1="-2.5" y1="-1" x2="-3" y2="-0.5" width="0.1524" layer="21"/>
<wire x1="-3" y1="0.5" x2="-3" y2="-0.5" width="0.1524" layer="21"/>
<wire x1="-1" y1="0.5" x2="-0.5" y2="1" width="0.1524" layer="21"/>
<wire x1="-0.5" y1="1" x2="0.5" y2="1" width="0.1524" layer="21"/>
<wire x1="0.5" y1="1" x2="1" y2="0.5" width="0.1524" layer="21"/>
<wire x1="1" y1="-0.5" x2="0.5" y2="-1" width="0.1524" layer="21"/>
<wire x1="0.5" y1="-1" x2="-0.5" y2="-1" width="0.1524" layer="21"/>
<wire x1="-0.5" y1="-1" x2="-1" y2="-0.5" width="0.1524" layer="21"/>
<wire x1="-1" y1="0.5" x2="-1" y2="-0.5" width="0.1524" layer="21"/>
<wire x1="1" y1="0.5" x2="1.5" y2="1" width="0.1524" layer="21"/>
<wire x1="1.5" y1="1" x2="2.5" y2="1" width="0.1524" layer="21"/>
<wire x1="2.5" y1="1" x2="3" y2="0.5" width="0.1524" layer="21"/>
<wire x1="3" y1="-0.5" x2="2.5" y2="-1" width="0.1524" layer="21"/>
<wire x1="2.5" y1="-1" x2="1.5" y2="-1" width="0.1524" layer="21"/>
<wire x1="1.5" y1="-1" x2="1" y2="-0.5" width="0.1524" layer="21"/>
<wire x1="1" y1="0.5" x2="1" y2="-0.5" width="0.1524" layer="21"/>
<wire x1="3" y1="0.5" x2="3.5" y2="1" width="0.1524" layer="21"/>
<wire x1="3.5" y1="1" x2="4.5" y2="1" width="0.1524" layer="21"/>
<wire x1="4.5" y1="1" x2="5" y2="0.5" width="0.1524" layer="21"/>
<wire x1="5" y1="0.5" x2="5" y2="-0.5" width="0.1524" layer="21"/>
<wire x1="5" y1="-0.5" x2="4.5" y2="-1" width="0.1524" layer="21"/>
<wire x1="4.5" y1="-1" x2="3.5" y2="-1" width="0.1524" layer="21"/>
<wire x1="3.5" y1="-1" x2="3" y2="-0.5" width="0.1524" layer="21"/>
<wire x1="3" y1="0.5" x2="3" y2="-0.5" width="0.1524" layer="21"/>
<pad name="1" x="-4" y="0" drill="1.016" diameter="1.3" shape="square" rot="R90"/>
<pad name="3" x="0" y="0" drill="1.016" diameter="1.3" rot="R90"/>
<pad name="2" x="-2" y="0" drill="1.016" diameter="1.3" rot="R90"/>
<pad name="4" x="2" y="0" drill="1.016" diameter="1.3" rot="R90"/>
<pad name="5" x="4" y="0" drill="1.016" diameter="1.3" rot="R90"/>
<rectangle x1="-4.254" y1="-0.254" x2="-3.746" y2="0.254" layer="51"/>
<rectangle x1="-2.254" y1="-0.254" x2="-1.746" y2="0.254" layer="51"/>
<rectangle x1="-0.254" y1="-0.254" x2="0.254" y2="0.254" layer="51"/>
<rectangle x1="1.746" y1="-0.254" x2="2.254" y2="0.254" layer="51"/>
<rectangle x1="3.746" y1="-0.254" x2="4.254" y2="0.254" layer="51"/>
</package>
</packages>
<packages3d>
<package3d name="1X03" urn="urn:adsk.eagle:package:22458/2" type="model" library_version="4">
<description>PIN HEADER</description>
<packageinstances>
<packageinstance name="1X03"/>
</packageinstances>
</package3d>
<package3d name="1X03/90" urn="urn:adsk.eagle:package:22459/2" type="model" library_version="4">
<description>PIN HEADER</description>
<packageinstances>
<packageinstance name="1X03/90"/>
</packageinstances>
</package3d>
<package3d name="1X05" urn="urn:adsk.eagle:package:22469/2" type="model" library_version="4">
<description>PIN HEADER</description>
<packageinstances>
<packageinstance name="1X05"/>
</packageinstances>
</package3d>
<package3d name="1X05/90" urn="urn:adsk.eagle:package:22467/2" type="model" library_version="4">
<description>PIN HEADER</description>
<packageinstances>
<packageinstance name="1X05/90"/>
</packageinstances>
</package3d>
<package3d name="1_05X2MM" urn="urn:adsk.eagle:package:22466/2" type="model" library_version="4">
<description>CON-M-1X5-200</description>
<packageinstances>
<packageinstance name="1_05X2MM"/>
</packageinstances>
</package3d>
</packages3d>
<symbols>
<symbol name="PINHD3" urn="urn:adsk.eagle:symbol:22339/1" library_version="4">
<wire x1="-6.35" y1="-5.08" x2="1.27" y2="-5.08" width="0.4064" layer="94"/>
<wire x1="1.27" y1="-5.08" x2="1.27" y2="5.08" width="0.4064" layer="94"/>
<wire x1="1.27" y1="5.08" x2="-6.35" y2="5.08" width="0.4064" layer="94"/>
<wire x1="-6.35" y1="5.08" x2="-6.35" y2="-5.08" width="0.4064" layer="94"/>
<text x="-6.35" y="5.715" size="1.778" layer="95">&gt;NAME</text>
<text x="-6.35" y="-7.62" size="1.778" layer="96">&gt;VALUE</text>
<pin name="1" x="-2.54" y="2.54" visible="pad" length="short" direction="pas" function="dot"/>
<pin name="2" x="-2.54" y="0" visible="pad" length="short" direction="pas" function="dot"/>
<pin name="3" x="-2.54" y="-2.54" visible="pad" length="short" direction="pas" function="dot"/>
</symbol>
<symbol name="PINHD5" urn="urn:adsk.eagle:symbol:22353/1" library_version="4">
<wire x1="-6.35" y1="-7.62" x2="1.27" y2="-7.62" width="0.4064" layer="94"/>
<wire x1="1.27" y1="-7.62" x2="1.27" y2="7.62" width="0.4064" layer="94"/>
<wire x1="1.27" y1="7.62" x2="-6.35" y2="7.62" width="0.4064" layer="94"/>
<wire x1="-6.35" y1="7.62" x2="-6.35" y2="-7.62" width="0.4064" layer="94"/>
<text x="-6.35" y="8.255" size="1.778" layer="95">&gt;NAME</text>
<text x="-6.35" y="-10.16" size="1.778" layer="96">&gt;VALUE</text>
<pin name="1" x="-2.54" y="5.08" visible="pad" length="short" direction="pas" function="dot"/>
<pin name="2" x="-2.54" y="2.54" visible="pad" length="short" direction="pas" function="dot"/>
<pin name="3" x="-2.54" y="0" visible="pad" length="short" direction="pas" function="dot"/>
<pin name="4" x="-2.54" y="-2.54" visible="pad" length="short" direction="pas" function="dot"/>
<pin name="5" x="-2.54" y="-5.08" visible="pad" length="short" direction="pas" function="dot"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="PINHD-1X3" urn="urn:adsk.eagle:component:22524/4" prefix="JP" uservalue="yes" library_version="4">
<description>&lt;b&gt;PIN HEADER&lt;/b&gt;</description>
<gates>
<gate name="A" symbol="PINHD3" x="0" y="0"/>
</gates>
<devices>
<device name="" package="1X03">
<connects>
<connect gate="A" pin="1" pad="1"/>
<connect gate="A" pin="2" pad="2"/>
<connect gate="A" pin="3" pad="3"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:22458/2"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="POPULARITY" value="92" constant="no"/>
</technology>
</technologies>
</device>
<device name="/90" package="1X03/90">
<connects>
<connect gate="A" pin="1" pad="1"/>
<connect gate="A" pin="2" pad="2"/>
<connect gate="A" pin="3" pad="3"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:22459/2"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="POPULARITY" value="17" constant="no"/>
</technology>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="PINHD-1X5" urn="urn:adsk.eagle:component:22529/5" prefix="JP" uservalue="yes" library_version="4">
<description>&lt;b&gt;PIN HEADER&lt;/b&gt;</description>
<gates>
<gate name="A" symbol="PINHD5" x="0" y="0"/>
</gates>
<devices>
<device name="" package="1X05">
<connects>
<connect gate="A" pin="1" pad="1"/>
<connect gate="A" pin="2" pad="2"/>
<connect gate="A" pin="3" pad="3"/>
<connect gate="A" pin="4" pad="4"/>
<connect gate="A" pin="5" pad="5"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:22469/2"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="POPULARITY" value="69" constant="no"/>
</technology>
</technologies>
</device>
<device name="/90" package="1X05/90">
<connects>
<connect gate="A" pin="1" pad="1"/>
<connect gate="A" pin="2" pad="2"/>
<connect gate="A" pin="3" pad="3"/>
<connect gate="A" pin="4" pad="4"/>
<connect gate="A" pin="5" pad="5"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:22467/2"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="POPULARITY" value="9" constant="no"/>
</technology>
</technologies>
</device>
<device name="5X2MM" package="1_05X2MM">
<connects>
<connect gate="A" pin="1" pad="1"/>
<connect gate="A" pin="2" pad="2"/>
<connect gate="A" pin="3" pad="3"/>
<connect gate="A" pin="4" pad="4"/>
<connect gate="A" pin="5" pad="5"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:22466/2"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="POPULARITY" value="0" constant="no"/>
</technology>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
</libraries>
<attributes>
</attributes>
<variantdefs>
</variantdefs>
<classes>
<class number="0" name="default" width="0" drill="0">
</class>
</classes>
<parts>
<part name="MPU6050" library="con-lstb" library_urn="urn:adsk.eagle:library:162" deviceset="MA08-1" device="" package3d_urn="urn:adsk.eagle:package:8343/1"/>
<part name="S1" library="pushbutton" deviceset="4-1437565-0" device="" value="PUSHB"/>
<part name="PULSOS" library="terminal-block-clema-3.81-284392-3" deviceset="284392-3" device="" value="CLEMA 3.81mm"/>
<part name="ALIMENTACION" library="terminal-block-clema-3.81-1776113-2" deviceset="1776113-2" device="" value="CLEMA 3.81mm"/>
<part name="U1" library="ARDUINO_PRO_MINI" deviceset="ARDUINO_PRO_MINI" device=""/>
<part name="SERVO" library="pinhead" library_urn="urn:adsk.eagle:library:325" deviceset="PINHD-1X3" device="/90" package3d_urn="urn:adsk.eagle:package:22459/2"/>
<part name="PROG" library="pinhead" library_urn="urn:adsk.eagle:library:325" deviceset="PINHD-1X5" device="" package3d_urn="urn:adsk.eagle:package:22469/2"/>
</parts>
<sheets>
<sheet>
<plain>
</plain>
<instances>
<instance part="MPU6050" gate="1" x="2.54" y="55.88" smashed="yes">
<attribute name="VALUE" x="1.27" y="43.18" size="1.778" layer="96"/>
<attribute name="NAME" x="1.27" y="69.342" size="1.778" layer="95"/>
</instance>
<instance part="S1" gate="G$1" x="91.44" y="38.1" smashed="yes" rot="R90">
<attribute name="NAME" x="88.89505" y="35.55505" size="1.78146875" layer="95" rot="R90"/>
<attribute name="VALUE" x="97.79568125" y="35.3035" size="1.779590625" layer="96" rot="R90"/>
</instance>
<instance part="PULSOS" gate="G$1" x="5.08" y="27.94" smashed="yes" rot="R180">
<attribute name="NAME" x="10.66" y="22.86" size="1.778" layer="95" rot="R180"/>
<attribute name="VALUE" x="10.16" y="35.56" size="1.778" layer="96" rot="R180"/>
</instance>
<instance part="ALIMENTACION" gate="G$1" x="2.54" y="81.28" smashed="yes">
<attribute name="NAME" x="0.24956875" y="87.387809375" size="1.272459375" layer="95"/>
<attribute name="VALUE" x="-0.00221875" y="76.19556875" size="1.271109375" layer="96"/>
</instance>
<instance part="U1" gate="G$1" x="55.88" y="53.34" smashed="yes">
<attribute name="NAME" x="43.18" y="85.09" size="1.778" layer="95"/>
<attribute name="VALUE" x="43.18" y="20.32" size="1.778" layer="96"/>
</instance>
<instance part="SERVO" gate="A" x="101.6" y="71.12" smashed="yes">
<attribute name="NAME" x="95.25" y="76.835" size="1.778" layer="95"/>
<attribute name="VALUE" x="95.25" y="63.5" size="1.778" layer="96"/>
</instance>
<instance part="PROG" gate="A" x="116.84" y="53.34" smashed="yes">
<attribute name="NAME" x="110.49" y="61.595" size="1.778" layer="95"/>
<attribute name="VALUE" x="110.49" y="43.18" size="1.778" layer="96"/>
</instance>
</instances>
<busses>
</busses>
<nets>
<net name="GND" class="0">
<segment>
<pinref part="PULSOS" gate="G$1" pin="3"/>
<wire x1="15.24" y1="30.48" x2="20.32" y2="30.48" width="0.1524" layer="91"/>
<label x="17.78" y="30.48" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="SERVO" gate="A" pin="3"/>
<wire x1="99.06" y1="68.58" x2="88.9" y2="68.58" width="0.1524" layer="91"/>
<label x="86.36" y="68.58" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="ALIMENTACION" gate="G$1" pin="2"/>
<wire x1="12.7" y1="81.28" x2="17.78" y2="81.28" width="0.1524" layer="91"/>
<label x="12.7" y="81.28" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="U1" gate="G$1" pin="GND_2"/>
<wire x1="73.66" y1="25.4" x2="81.28" y2="25.4" width="0.1524" layer="91"/>
<label x="81.28" y="30.48" size="1.778" layer="95"/>
<pinref part="S1" gate="G$1" pin="1"/>
<wire x1="91.44" y1="33.02" x2="91.44" y2="30.48" width="0.1524" layer="91"/>
<wire x1="91.44" y1="30.48" x2="81.28" y2="30.48" width="0.1524" layer="91"/>
<wire x1="81.28" y1="25.4" x2="81.28" y2="30.48" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="PROG" gate="A" pin="5"/>
<wire x1="114.3" y1="48.26" x2="101.6" y2="48.26" width="0.1524" layer="91"/>
<label x="101.6" y="48.26" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="MPU6050" gate="1" pin="7"/>
<wire x1="10.16" y1="63.5" x2="17.78" y2="63.5" width="0.1524" layer="91"/>
<label x="12.7" y="63.5" size="1.778" layer="95"/>
</segment>
</net>
<net name="VCC" class="0">
<segment>
<pinref part="U1" gate="G$1" pin="VCC"/>
<wire x1="73.66" y1="81.28" x2="81.28" y2="81.28" width="0.1524" layer="91"/>
<label x="78.74" y="81.28" size="1.778" layer="95"/>
<label x="78.74" y="78.74" size="1.778" layer="95"/>
<wire x1="81.28" y1="81.28" x2="81.28" y2="78.74" width="0.1524" layer="91"/>
</segment>
<segment>
<wire x1="114.3" y1="50.8" x2="101.6" y2="50.8" width="0.1524" layer="91"/>
<pinref part="PROG" gate="A" pin="4"/>
<label x="101.6" y="50.8" size="1.778" layer="95"/>
</segment>
</net>
<net name="SCL" class="0">
<segment>
<pinref part="MPU6050" gate="1" pin="6"/>
<wire x1="10.16" y1="60.96" x2="17.78" y2="60.96" width="0.1524" layer="91"/>
<label x="12.7" y="60.96" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="U1" gate="G$1" pin="A5"/>
<wire x1="38.1" y1="60.96" x2="33.02" y2="60.96" width="0.1524" layer="91"/>
<label x="27.94" y="60.96" size="1.778" layer="95"/>
</segment>
</net>
<net name="SDA" class="0">
<segment>
<pinref part="MPU6050" gate="1" pin="5"/>
<wire x1="10.16" y1="58.42" x2="17.78" y2="58.42" width="0.1524" layer="91"/>
<label x="12.7" y="58.42" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="U1" gate="G$1" pin="A4"/>
<wire x1="38.1" y1="63.5" x2="33.02" y2="63.5" width="0.1524" layer="91"/>
<label x="27.94" y="63.5" size="1.778" layer="95"/>
</segment>
</net>
<net name="N$5" class="0">
<segment>
<pinref part="MPU6050" gate="1" pin="4"/>
<wire x1="10.16" y1="55.88" x2="17.78" y2="55.88" width="0.1524" layer="91"/>
<label x="12.7" y="55.88" size="1.778" layer="95"/>
</segment>
</net>
<net name="N$6" class="0">
<segment>
<pinref part="MPU6050" gate="1" pin="3"/>
<wire x1="10.16" y1="53.34" x2="17.78" y2="53.34" width="0.1524" layer="91"/>
<label x="12.7" y="53.34" size="1.778" layer="95"/>
</segment>
</net>
<net name="N$7" class="0">
<segment>
<pinref part="MPU6050" gate="1" pin="2"/>
<wire x1="10.16" y1="50.8" x2="17.78" y2="50.8" width="0.1524" layer="91"/>
<label x="12.7" y="50.8" size="1.778" layer="95"/>
</segment>
</net>
<net name="N$8" class="0">
<segment>
<pinref part="MPU6050" gate="1" pin="1"/>
<wire x1="10.16" y1="48.26" x2="17.78" y2="48.26" width="0.1524" layer="91"/>
<label x="12.7" y="48.26" size="1.778" layer="95"/>
</segment>
</net>
<net name="RAW" class="0">
<segment>
<pinref part="U1" gate="G$1" pin="RAW"/>
<wire x1="73.66" y1="76.2" x2="81.28" y2="76.2" width="0.1524" layer="91"/>
<label x="78.74" y="76.2" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="SERVO" gate="A" pin="2"/>
<wire x1="99.06" y1="71.12" x2="88.9" y2="71.12" width="0.1524" layer="91"/>
<label x="86.36" y="71.12" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="ALIMENTACION" gate="G$1" pin="1"/>
<wire x1="12.7" y1="83.82" x2="17.78" y2="83.82" width="0.1524" layer="91"/>
<label x="12.7" y="83.82" size="1.778" layer="95"/>
</segment>
</net>
<net name="D7" class="0">
<segment>
<pinref part="PULSOS" gate="G$1" pin="2"/>
<wire x1="15.24" y1="27.94" x2="20.32" y2="27.94" width="0.1524" layer="91"/>
<label x="17.78" y="27.94" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="U1" gate="G$1" pin="D7"/>
<wire x1="73.66" y1="40.64" x2="81.28" y2="40.64" width="0.1524" layer="91"/>
<label x="81.28" y="40.64" size="1.778" layer="95"/>
</segment>
</net>
<net name="D8" class="0">
<segment>
<pinref part="PULSOS" gate="G$1" pin="1"/>
<wire x1="15.24" y1="25.4" x2="20.32" y2="25.4" width="0.1524" layer="91"/>
<label x="17.78" y="25.4" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="U1" gate="G$1" pin="D8"/>
<wire x1="73.66" y1="38.1" x2="81.28" y2="38.1" width="0.1524" layer="91"/>
<label x="81.28" y="38.1" size="1.778" layer="95"/>
</segment>
</net>
<net name="D9" class="0">
<segment>
<pinref part="SERVO" gate="A" pin="1"/>
<wire x1="99.06" y1="73.66" x2="88.9" y2="73.66" width="0.1524" layer="91"/>
<label x="86.36" y="73.66" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="U1" gate="G$1" pin="D9"/>
<wire x1="73.66" y1="35.56" x2="81.28" y2="35.56" width="0.1524" layer="91"/>
<label x="81.28" y="35.56" size="1.778" layer="95"/>
</segment>
</net>
<net name="RST" class="0">
<segment>
<wire x1="114.3" y1="58.42" x2="101.6" y2="58.42" width="0.1524" layer="91"/>
<pinref part="PROG" gate="A" pin="1"/>
<label x="101.6" y="58.42" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="U1" gate="G$1" pin="RST_2"/>
<wire x1="73.66" y1="60.96" x2="81.28" y2="60.96" width="0.1524" layer="91"/>
<label x="78.74" y="60.96" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="U1" gate="G$1" pin="DTR"/>
<wire x1="73.66" y1="71.12" x2="83.82" y2="71.12" width="0.1524" layer="91"/>
<wire x1="83.82" y1="71.12" x2="83.82" y2="73.66" width="0.1524" layer="91"/>
<label x="78.74" y="71.12" size="1.778" layer="95"/>
</segment>
</net>
<net name="RXI" class="0">
<segment>
<wire x1="114.3" y1="53.34" x2="101.6" y2="53.34" width="0.1524" layer="91"/>
<pinref part="PROG" gate="A" pin="3"/>
<label x="101.6" y="53.34" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="U1" gate="G$1" pin="RXI"/>
<wire x1="73.66" y1="66.04" x2="81.28" y2="66.04" width="0.1524" layer="91"/>
<label x="78.74" y="66.04" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="MPU6050" gate="1" pin="8"/>
<wire x1="10.16" y1="66.04" x2="20.32" y2="66.04" width="0.1524" layer="91"/>
<label x="12.7" y="66.04" size="1.778" layer="95"/>
<wire x1="20.32" y1="66.04" x2="20.32" y2="73.66" width="0.1524" layer="91"/>
</segment>
</net>
<net name="D5" class="0">
<segment>
<pinref part="U1" gate="G$1" pin="D5"/>
<wire x1="73.66" y1="45.72" x2="91.44" y2="45.72" width="0.1524" layer="91"/>
<pinref part="S1" gate="G$1" pin="2"/>
<wire x1="91.44" y1="45.72" x2="91.44" y2="43.18" width="0.1524" layer="91"/>
<label x="83.82" y="45.72" size="1.778" layer="95"/>
</segment>
</net>
<net name="N$11" class="0">
<segment>
<pinref part="U1" gate="G$1" pin="TXO_2"/>
<wire x1="73.66" y1="58.42" x2="81.28" y2="58.42" width="0.1524" layer="91"/>
</segment>
</net>
<net name="TXO1" class="0">
<segment>
<pinref part="U1" gate="G$1" pin="TXO"/>
<wire x1="73.66" y1="68.58" x2="81.28" y2="68.58" width="0.1524" layer="91"/>
<label x="78.74" y="68.58" size="1.778" layer="95"/>
</segment>
<segment>
<wire x1="114.3" y1="55.88" x2="101.6" y2="55.88" width="0.1524" layer="91"/>
<pinref part="PROG" gate="A" pin="2"/>
<label x="101.6" y="55.88" size="1.778" layer="95"/>
</segment>
</net>
</nets>
</sheet>
</sheets>
</schematic>
</drawing>
<compatibility>
<note version="8.2" severity="warning">
Since Version 8.2, EAGLE supports online libraries. The ids
of those online libraries will not be understood (or retained)
with this version.
</note>
<note version="8.3" severity="warning">
Since Version 8.3, EAGLE supports URNs for individual library
assets (packages, symbols, and devices). The URNs of those assets
will not be understood (or retained) with this version.
</note>
<note version="8.3" severity="warning">
Since Version 8.3, EAGLE supports the association of 3D packages
with devices in libraries, schematics, and board files. Those 3D
packages will not be understood (or retained) with this version.
</note>
</compatibility>
</eagle>
