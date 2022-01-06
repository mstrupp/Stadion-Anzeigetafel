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
<layer number="1" name="Top" color="4" fill="1" visible="yes" active="no"/>
<layer number="2" name="Route2" color="16" fill="1" visible="yes" active="no"/>
<layer number="3" name="Route3" color="17" fill="1" visible="yes" active="no"/>
<layer number="4" name="Route4" color="18" fill="1" visible="yes" active="no"/>
<layer number="5" name="Route5" color="19" fill="1" visible="yes" active="no"/>
<layer number="6" name="Route6" color="25" fill="1" visible="yes" active="no"/>
<layer number="7" name="Route7" color="26" fill="1" visible="yes" active="no"/>
<layer number="8" name="Route8" color="27" fill="1" visible="yes" active="no"/>
<layer number="9" name="Route9" color="28" fill="1" visible="yes" active="no"/>
<layer number="10" name="Route10" color="29" fill="1" visible="yes" active="no"/>
<layer number="11" name="Route11" color="30" fill="1" visible="yes" active="no"/>
<layer number="12" name="Route12" color="20" fill="1" visible="yes" active="no"/>
<layer number="13" name="Route13" color="21" fill="1" visible="yes" active="no"/>
<layer number="14" name="Route14" color="22" fill="1" visible="yes" active="no"/>
<layer number="15" name="Route15" color="23" fill="1" visible="yes" active="no"/>
<layer number="16" name="Bottom" color="1" fill="1" visible="yes" active="no"/>
<layer number="17" name="Pads" color="2" fill="1" visible="yes" active="no"/>
<layer number="18" name="Vias" color="2" fill="1" visible="yes" active="no"/>
<layer number="19" name="Unrouted" color="6" fill="1" visible="yes" active="no"/>
<layer number="20" name="Dimension" color="24" fill="1" visible="yes" active="no"/>
<layer number="21" name="tPlace" color="7" fill="1" visible="yes" active="no"/>
<layer number="22" name="bPlace" color="7" fill="1" visible="yes" active="no"/>
<layer number="23" name="tOrigins" color="15" fill="1" visible="yes" active="no"/>
<layer number="24" name="bOrigins" color="15" fill="1" visible="yes" active="no"/>
<layer number="25" name="tNames" color="7" fill="1" visible="yes" active="no"/>
<layer number="26" name="bNames" color="7" fill="1" visible="yes" active="no"/>
<layer number="27" name="tValues" color="7" fill="1" visible="yes" active="no"/>
<layer number="28" name="bValues" color="7" fill="1" visible="yes" active="no"/>
<layer number="29" name="tStop" color="7" fill="3" visible="no" active="no"/>
<layer number="30" name="bStop" color="7" fill="6" visible="no" active="no"/>
<layer number="31" name="tCream" color="7" fill="4" visible="no" active="no"/>
<layer number="32" name="bCream" color="7" fill="5" visible="no" active="no"/>
<layer number="33" name="tFinish" color="6" fill="3" visible="no" active="no"/>
<layer number="34" name="bFinish" color="6" fill="6" visible="no" active="no"/>
<layer number="35" name="tGlue" color="7" fill="4" visible="no" active="no"/>
<layer number="36" name="bGlue" color="7" fill="5" visible="no" active="no"/>
<layer number="37" name="tTest" color="7" fill="1" visible="yes" active="no"/>
<layer number="38" name="bTest" color="7" fill="1" visible="yes" active="no"/>
<layer number="39" name="tKeepout" color="4" fill="11" visible="no" active="no"/>
<layer number="40" name="bKeepout" color="1" fill="11" visible="no" active="no"/>
<layer number="41" name="tRestrict" color="4" fill="10" visible="no" active="no"/>
<layer number="42" name="bRestrict" color="1" fill="10" visible="no" active="no"/>
<layer number="43" name="vRestrict" color="2" fill="10" visible="no" active="no"/>
<layer number="44" name="Drills" color="7" fill="1" visible="no" active="no"/>
<layer number="45" name="Holes" color="7" fill="1" visible="no" active="no"/>
<layer number="46" name="Milling" color="3" fill="1" visible="yes" active="no"/>
<layer number="47" name="Measures" color="7" fill="1" visible="yes" active="no"/>
<layer number="48" name="Document" color="7" fill="1" visible="yes" active="no"/>
<layer number="49" name="Reference" color="7" fill="1" visible="yes" active="no"/>
<layer number="51" name="tDocu" color="7" fill="1" visible="yes" active="no"/>
<layer number="52" name="bDocu" color="7" fill="1" visible="yes" active="no"/>
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
<layer number="99" name="SpiceOrder" color="7" fill="1" visible="yes" active="yes"/>
</layers>
<schematic xreflabel="%F%N/%S.%C%R" xrefpart="/%S.%C%R">
<libraries>
<library name="eigene">
<packages>
<package name="NUCLEO-32G0">
<pad name="D1" x="-7.62" y="17.78" drill="1" diameter="1.6764"/>
<pad name="D0" x="-7.62" y="15.24" drill="1" diameter="1.6764"/>
<pad name="RST" x="-7.62" y="12.7" drill="1" diameter="1.6764"/>
<pad name="GND" x="-7.62" y="10.16" drill="1" diameter="1.6764"/>
<pad name="D2" x="-7.62" y="7.62" drill="1" diameter="1.6764"/>
<pad name="D3" x="-7.62" y="5.08" drill="1" diameter="1.6764"/>
<pad name="D4" x="-7.62" y="2.54" drill="1" diameter="1.6764"/>
<pad name="D5" x="-7.62" y="0" drill="1" diameter="1.6764"/>
<pad name="D6" x="-7.62" y="-2.54" drill="1" diameter="1.6764"/>
<pad name="D7" x="-7.62" y="-5.08" drill="1" diameter="1.6764"/>
<pad name="D8" x="-7.62" y="-7.62" drill="1" diameter="1.6764"/>
<pad name="D9" x="-7.62" y="-10.16" drill="1" diameter="1.6764"/>
<pad name="D10" x="-7.62" y="-12.7" drill="1" diameter="1.6764"/>
<pad name="D11" x="-7.62" y="-15.24" drill="1" diameter="1.6764"/>
<pad name="D12" x="-7.62" y="-17.78" drill="1" diameter="1.6764"/>
<pad name="VIN" x="7.62" y="17.78" drill="1" diameter="1.6764"/>
<pad name="GND1" x="7.62" y="15.24" drill="1" diameter="1.6764"/>
<pad name="RST1" x="7.62" y="12.7" drill="1" diameter="1.6764"/>
<pad name="5V" x="7.62" y="10.16" drill="1" diameter="1.6764"/>
<pad name="A7" x="7.62" y="7.62" drill="1" diameter="1.6764"/>
<pad name="A6" x="7.62" y="5.08" drill="1" diameter="1.6764"/>
<pad name="A4" x="7.62" y="0" drill="1" diameter="1.6764"/>
<pad name="A5" x="7.62" y="2.54" drill="1" diameter="1.6764"/>
<pad name="A3" x="7.62" y="-2.54" drill="1" diameter="1.6764"/>
<pad name="A2" x="7.62" y="-5.08" drill="1" diameter="1.6764"/>
<pad name="A1" x="7.62" y="-7.62" drill="1" diameter="1.6764"/>
<pad name="A0" x="7.62" y="-10.16" drill="1" diameter="1.6764"/>
<pad name="REF" x="7.62" y="-12.7" drill="1" diameter="1.6764"/>
<pad name="3V3" x="7.62" y="-15.24" drill="1" diameter="1.6764"/>
<pad name="D13" x="7.62" y="-17.78" drill="1" diameter="1.6764"/>
<wire x1="-9.27" y1="27.35" x2="-9.27" y2="-24.35" width="0.127" layer="21"/>
<wire x1="-9.27" y1="-24.35" x2="9.27" y2="-24.35" width="0.127" layer="21"/>
<wire x1="9.27" y1="-24.35" x2="9.27" y2="27.35" width="0.127" layer="21"/>
<wire x1="9.27" y1="27.35" x2="-9.27" y2="27.35" width="0.127" layer="21"/>
<wire x1="-3.75" y1="28.94" x2="-3.75" y2="23.44" width="0.127" layer="21"/>
<wire x1="-3.75" y1="28.94" x2="3.75" y2="28.94" width="0.127" layer="21"/>
<wire x1="-3.75" y1="23.44" x2="3.75" y2="23.44" width="0.127" layer="21"/>
<wire x1="3.75" y1="23.44" x2="3.75" y2="28.94" width="0.127" layer="21"/>
<text x="-8.89" y="30.48" size="1.27" layer="27">&gt;VALUE</text>
<text x="-8.89" y="33.02" size="1.27" layer="25">&gt;NAME</text>
</package>
<package name="JST-2">
<pad name="P$1" x="-1.27" y="-0.67" drill="1"/>
<pad name="P$2" x="1.27" y="-0.67" drill="1"/>
<wire x1="-3.75" y1="3" x2="3.75" y2="3" width="0.127" layer="21"/>
<wire x1="-3.75" y1="3" x2="-3.75" y2="-3" width="0.127" layer="21"/>
<wire x1="3.75" y1="3" x2="3.75" y2="-3" width="0.127" layer="21"/>
<wire x1="-3.75" y1="-3" x2="3.75" y2="-3" width="0.127" layer="21"/>
<text x="-3.81" y="5.08" size="1.27" layer="25">&gt;NAME</text>
<text x="-3.81" y="3.556" size="1.27" layer="27">&gt;VALUE</text>
</package>
<package name="MAX485">
<pad name="RO" x="-3.81" y="3.81" drill="0.8"/>
<pad name="-RE" x="-3.81" y="1.27" drill="0.8"/>
<pad name="DE" x="-3.81" y="-1.27" drill="0.8"/>
<pad name="DI" x="-3.81" y="-3.81" drill="0.8"/>
<pad name="VCC" x="3.81" y="3.81" drill="0.8"/>
<pad name="B" x="3.81" y="1.27" drill="0.8"/>
<pad name="A" x="3.81" y="-1.27" drill="0.8"/>
<pad name="GND" x="3.81" y="-3.81" drill="0.8"/>
<wire x1="-3.5" y1="4.95" x2="-3.5" y2="-4.95" width="0.127" layer="21"/>
<wire x1="-3.5" y1="-4.95" x2="3.5" y2="-4.95" width="0.127" layer="21"/>
<wire x1="3.5" y1="-4.95" x2="3.5" y2="4.95" width="0.127" layer="21"/>
<wire x1="3.5" y1="4.95" x2="-3.5" y2="4.95" width="0.127" layer="21"/>
<wire x1="1" y1="5" x2="-1" y2="5" width="0.127" layer="21" curve="-180"/>
<circle x="-2" y="4" radius="0.192675" width="0.127" layer="21"/>
<text x="-3.81" y="7.62" size="1.27" layer="25">&gt;NAME</text>
<text x="-3.81" y="5.715" size="1.27" layer="27">&gt;VALUE</text>
</package>
<package name="JST-4">
<pad name="P$1" x="-3.81" y="-0.67" drill="1"/>
<pad name="P$2" x="-1.27" y="-0.67" drill="1"/>
<wire x1="-6.25" y1="3" x2="6.25" y2="3" width="0.127" layer="21"/>
<wire x1="-6.25" y1="3" x2="-6.25" y2="-3" width="0.127" layer="21"/>
<wire x1="6.25" y1="3" x2="6.25" y2="-3" width="0.127" layer="21"/>
<wire x1="-6.25" y1="-3" x2="6.25" y2="-3" width="0.127" layer="21"/>
<pad name="P$3" x="1.27" y="-0.67" drill="1"/>
<pad name="P$4" x="3.81" y="-0.67" drill="1"/>
<text x="-6.35" y="3.81" size="1.27" layer="27">&gt;VALUE</text>
<text x="-6.35" y="5.715" size="1.27" layer="25">&gt;NAME</text>
</package>
<package name="JST-3">
<pad name="P$1" x="-2.54" y="-0.67" drill="1"/>
<pad name="P$2" x="0" y="-0.67" drill="1"/>
<wire x1="-5" y1="3" x2="5" y2="3" width="0.127" layer="21"/>
<wire x1="-5" y1="3" x2="-5" y2="-3" width="0.127" layer="21"/>
<wire x1="5" y1="3" x2="5" y2="-3" width="0.127" layer="21"/>
<wire x1="-5" y1="-3" x2="5" y2="-3" width="0.127" layer="21"/>
<pad name="P$3" x="2.54" y="-0.67" drill="1"/>
<text x="-5.08" y="3.81" size="1.27" layer="27">&gt;VALUE</text>
<text x="-5.08" y="5.715" size="1.27" layer="25">&gt;NAME</text>
</package>
<package name="0207/7" urn="urn:adsk.eagle:footprint:22996/1" locally_modified="yes">
<description>&lt;b&gt;RESISTOR&lt;/b&gt;&lt;p&gt;
type 0207, grid 7.5 mm</description>
<wire x1="-3.81" y1="0" x2="-3.429" y2="0" width="0.6096" layer="51"/>
<wire x1="-3.175" y1="0.889" x2="-2.921" y2="1.143" width="0.1524" layer="21" curve="-90"/>
<wire x1="-3.175" y1="-0.889" x2="-2.921" y2="-1.143" width="0.1524" layer="21" curve="90"/>
<wire x1="2.921" y1="-1.143" x2="3.175" y2="-0.889" width="0.1524" layer="21" curve="90"/>
<wire x1="2.921" y1="1.143" x2="3.175" y2="0.889" width="0.1524" layer="21" curve="-90"/>
<wire x1="-3.175" y1="-0.889" x2="-3.175" y2="0.889" width="0.1524" layer="51"/>
<wire x1="-2.921" y1="1.143" x2="-2.54" y2="1.143" width="0.1524" layer="21"/>
<wire x1="-2.413" y1="1.016" x2="-2.54" y2="1.143" width="0.1524" layer="21"/>
<wire x1="-2.921" y1="-1.143" x2="-2.54" y2="-1.143" width="0.1524" layer="21"/>
<wire x1="-2.413" y1="-1.016" x2="-2.54" y2="-1.143" width="0.1524" layer="21"/>
<wire x1="2.413" y1="1.016" x2="2.54" y2="1.143" width="0.1524" layer="21"/>
<wire x1="2.413" y1="1.016" x2="-2.413" y2="1.016" width="0.1524" layer="21"/>
<wire x1="2.413" y1="-1.016" x2="2.54" y2="-1.143" width="0.1524" layer="21"/>
<wire x1="2.413" y1="-1.016" x2="-2.413" y2="-1.016" width="0.1524" layer="21"/>
<wire x1="2.921" y1="1.143" x2="2.54" y2="1.143" width="0.1524" layer="21"/>
<wire x1="2.921" y1="-1.143" x2="2.54" y2="-1.143" width="0.1524" layer="21"/>
<wire x1="3.175" y1="-0.889" x2="3.175" y2="0.889" width="0.1524" layer="51"/>
<wire x1="3.429" y1="0" x2="3.81" y2="0" width="0.6096" layer="51"/>
<pad name="1" x="-3.81" y="0" drill="0.8"/>
<pad name="2" x="3.81" y="0" drill="0.8"/>
<text x="-2.54" y="1.397" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="-2.286" y="-0.5588" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
<rectangle x1="-3.429" y1="-0.3048" x2="-3.175" y2="0.3048" layer="51"/>
<rectangle x1="3.175" y1="-0.3048" x2="3.429" y2="0.3048" layer="51"/>
</package>
<package name="S64W" urn="urn:adsk.eagle:footprint:22652/1" locally_modified="yes">
<description>&lt;b&gt;POTENTIOMETER&lt;/b&gt;&lt;p&gt;
Spectrol</description>
<wire x1="-4.826" y1="-1.27" x2="4.826" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="4.064" y1="0.508" x2="3.048" y2="-0.508" width="0.3048" layer="21"/>
<wire x1="-4.826" y1="3.81" x2="4.826" y2="3.81" width="0.1524" layer="21"/>
<wire x1="4.826" y1="3.81" x2="4.826" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="-4.826" y1="-1.27" x2="-4.826" y2="3.81" width="0.1524" layer="21"/>
<wire x1="-2.032" y1="0" x2="-2.413" y2="0" width="0.1524" layer="51"/>
<wire x1="-2.032" y1="0" x2="-2.159" y2="-0.127" width="0.1524" layer="51"/>
<wire x1="-2.032" y1="0" x2="-2.159" y2="0.127" width="0.1524" layer="51"/>
<wire x1="-2.286" y1="-0.254" x2="-2.286" y2="0.254" width="0.1524" layer="51"/>
<wire x1="-2.286" y1="-0.254" x2="-2.413" y2="-0.381" width="0.1524" layer="51"/>
<wire x1="-2.286" y1="0.254" x2="-2.413" y2="0.381" width="0.1524" layer="51"/>
<wire x1="-2.159" y1="-0.127" x2="-2.159" y2="0.127" width="0.1524" layer="51"/>
<wire x1="-2.159" y1="-0.127" x2="-2.286" y2="-0.254" width="0.1524" layer="51"/>
<wire x1="-2.159" y1="0.127" x2="-2.286" y2="0.254" width="0.1524" layer="51"/>
<wire x1="-2.413" y1="0" x2="-2.413" y2="0.381" width="0.1524" layer="51"/>
<wire x1="-2.413" y1="-0.381" x2="-2.413" y2="0" width="0.1524" layer="51"/>
<wire x1="-2.54" y1="-0.508" x2="-2.413" y2="-0.381" width="0.1524" layer="51"/>
<wire x1="-2.413" y1="0.381" x2="-2.54" y2="0.508" width="0.1524" layer="51"/>
<wire x1="-2.54" y1="0.508" x2="-2.54" y2="-0.508" width="0.1524" layer="51"/>
<wire x1="-4.318" y1="0" x2="-2.413" y2="0" width="0.1524" layer="51"/>
<circle x="3.556" y="0" radius="0.889" width="0.1524" layer="51"/>
<circle x="3.556" y="0" radius="0.635" width="0.0508" layer="21"/>
<pad name="A" x="2.54" y="1.27" drill="0.8" shape="long" rot="R90"/>
<pad name="E" x="-2.54" y="1.27" drill="0.8" shape="long" rot="R90"/>
<pad name="S" x="0" y="1.27" drill="0.8" shape="long" rot="R90"/>
<text x="-4.826" y="4.1402" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="-4.8006" y="-2.921" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
<text x="-4.445" y="1.905" size="1.27" layer="21" ratio="10">3</text>
<text x="3.556" y="1.905" size="1.27" layer="21" ratio="10">1</text>
<text x="-1.905" y="-0.635" size="1.27" layer="51" ratio="10">3</text>
</package>
</packages>
<symbols>
<symbol name="NUCLEO-32G0">
<description>Nucleo 32G0 Board</description>
<pin name="D1" x="-15.24" y="17.78" length="middle"/>
<pin name="D0" x="-15.24" y="15.24" length="middle"/>
<pin name="RST" x="-15.24" y="12.7" length="middle"/>
<pin name="GND" x="-15.24" y="10.16" length="middle"/>
<pin name="D2" x="-15.24" y="7.62" length="middle"/>
<pin name="D3" x="-15.24" y="5.08" length="middle"/>
<pin name="D4" x="-15.24" y="2.54" length="middle"/>
<pin name="D5" x="-15.24" y="0" length="middle"/>
<pin name="D6" x="-15.24" y="-2.54" length="middle"/>
<pin name="D7" x="-15.24" y="-5.08" length="middle"/>
<pin name="D8" x="-15.24" y="-7.62" length="middle"/>
<pin name="D9" x="-15.24" y="-10.16" length="middle"/>
<pin name="D10" x="-15.24" y="-12.7" length="middle"/>
<pin name="D11" x="-15.24" y="-15.24" length="middle"/>
<pin name="D12" x="-15.24" y="-17.78" length="middle"/>
<pin name="D13" x="15.24" y="-17.78" length="middle" rot="R180"/>
<pin name="3V3" x="15.24" y="-15.24" length="middle" rot="R180"/>
<pin name="REF" x="15.24" y="-12.7" length="middle" rot="R180"/>
<pin name="A0" x="15.24" y="-10.16" length="middle" rot="R180"/>
<pin name="A1" x="15.24" y="-7.62" length="middle" rot="R180"/>
<pin name="A2" x="15.24" y="-5.08" length="middle" rot="R180"/>
<pin name="A3" x="15.24" y="-2.54" length="middle" rot="R180"/>
<pin name="A4" x="15.24" y="0" length="middle" rot="R180"/>
<pin name="A5" x="15.24" y="2.54" length="middle" rot="R180"/>
<pin name="A6" x="15.24" y="5.08" length="middle" rot="R180"/>
<pin name="A7" x="15.24" y="7.62" length="middle" rot="R180"/>
<pin name="5V" x="15.24" y="10.16" length="middle" rot="R180"/>
<pin name="VIN" x="15.24" y="17.78" length="middle" rot="R180"/>
<wire x1="-10.16" y1="22.86" x2="10.16" y2="22.86" width="0.254" layer="94"/>
<wire x1="10.16" y1="22.86" x2="10.16" y2="-22.86" width="0.254" layer="94"/>
<wire x1="10.16" y1="-22.86" x2="-10.16" y2="-22.86" width="0.254" layer="94"/>
<wire x1="-10.16" y1="-22.86" x2="-10.16" y2="22.86" width="0.254" layer="94"/>
<text x="-10.16" y="27.94" size="1.27" layer="95">&gt;NAME</text>
<text x="-10.16" y="25.4" size="1.27" layer="96">&gt;VALUE</text>
</symbol>
<symbol name="JST-2">
<description>JST-2 Stecker</description>
<pin name="P$1" x="2.54" y="-12.7" length="middle" rot="R90"/>
<pin name="P$2" x="5.08" y="-12.7" length="middle" rot="R90"/>
<wire x1="0" y1="-7.62" x2="7.62" y2="-7.62" width="0.254" layer="94"/>
<wire x1="7.62" y1="-7.62" x2="7.62" y2="0" width="0.254" layer="94"/>
<wire x1="7.62" y1="0" x2="0" y2="0" width="0.254" layer="94"/>
<wire x1="0" y1="0" x2="0" y2="-7.62" width="0.254" layer="94"/>
<text x="10.16" y="-2.54" size="1.778" layer="95">&gt;NAME</text>
<text x="10.16" y="-5.08" size="1.778" layer="96">&gt;VALUE</text>
</symbol>
<symbol name="MAX485">
<pin name="RO" x="-5.08" y="-5.08" length="middle"/>
<pin name="-RE" x="-5.08" y="-7.62" length="middle"/>
<pin name="DE" x="-5.08" y="-10.16" length="middle"/>
<pin name="DI" x="-5.08" y="-12.7" length="middle"/>
<pin name="VCC" x="20.32" y="-5.08" length="middle" rot="R180"/>
<pin name="B" x="20.32" y="-7.62" length="middle" rot="R180"/>
<pin name="A" x="20.32" y="-10.16" length="middle" rot="R180"/>
<pin name="GND" x="20.32" y="-12.7" length="middle" rot="R180"/>
<wire x1="0" y1="0" x2="0" y2="-17.78" width="0.254" layer="94"/>
<wire x1="0" y1="-17.78" x2="15.24" y2="-17.78" width="0.254" layer="94"/>
<wire x1="15.24" y1="-17.78" x2="15.24" y2="0" width="0.254" layer="94"/>
<wire x1="15.24" y1="0" x2="0" y2="0" width="0.254" layer="94"/>
<text x="0" y="2.54" size="1.27" layer="96">&gt;VALUE</text>
<text x="0" y="5.08" size="1.27" layer="95">&gt;NAME</text>
</symbol>
<symbol name="JST-4">
<description>JST-4 Stecker</description>
<pin name="P$1" x="2.54" y="-12.7" length="middle" rot="R90"/>
<pin name="P$2" x="5.08" y="-12.7" length="middle" rot="R90"/>
<wire x1="0" y1="-7.62" x2="12.7" y2="-7.62" width="0.254" layer="94"/>
<wire x1="12.7" y1="-7.62" x2="12.7" y2="0" width="0.254" layer="94"/>
<wire x1="12.7" y1="0" x2="0" y2="0" width="0.254" layer="94"/>
<wire x1="0" y1="0" x2="0" y2="-7.62" width="0.254" layer="94"/>
<pin name="P$3" x="7.62" y="-12.7" length="middle" rot="R90"/>
<pin name="P$4" x="10.16" y="-12.7" length="middle" rot="R90"/>
<text x="15.24" y="-2.54" size="1.27" layer="95">&gt;NAME</text>
<text x="15.24" y="-5.08" size="1.27" layer="96">&gt;VALUE</text>
</symbol>
<symbol name="JST-3">
<description>JST-3 Stecker</description>
<pin name="P$1" x="2.54" y="-12.7" length="middle" rot="R90"/>
<pin name="P$2" x="5.08" y="-12.7" length="middle" rot="R90"/>
<wire x1="0" y1="-7.62" x2="10.16" y2="-7.62" width="0.254" layer="94"/>
<wire x1="10.16" y1="-7.62" x2="10.16" y2="0" width="0.254" layer="94"/>
<wire x1="10.16" y1="0" x2="0" y2="0" width="0.254" layer="94"/>
<wire x1="0" y1="0" x2="0" y2="-7.62" width="0.254" layer="94"/>
<pin name="P$3" x="7.62" y="-12.7" length="middle" rot="R90"/>
<text x="12.7" y="-2.54" size="1.778" layer="95">&gt;NAME</text>
<text x="12.7" y="-5.08" size="1.778" layer="96">&gt;VALUE</text>
</symbol>
<symbol name="R-EU">
<wire x1="-2.54" y1="-0.889" x2="2.54" y2="-0.889" width="0.254" layer="94"/>
<wire x1="2.54" y1="0.889" x2="-2.54" y2="0.889" width="0.254" layer="94"/>
<wire x1="2.54" y1="-0.889" x2="2.54" y2="0.889" width="0.254" layer="94"/>
<wire x1="-2.54" y1="-0.889" x2="-2.54" y2="0.889" width="0.254" layer="94"/>
<text x="-3.81" y="1.4986" size="1.778" layer="95">&gt;NAME</text>
<text x="-3.81" y="-3.302" size="1.778" layer="96">&gt;VALUE</text>
<pin name="2" x="5.08" y="0" visible="off" length="short" direction="pas" swaplevel="1" rot="R180"/>
<pin name="1" x="-5.08" y="0" visible="off" length="short" direction="pas" swaplevel="1"/>
</symbol>
<symbol name="POT_EU-">
<wire x1="-0.762" y1="2.54" x2="-0.762" y2="-2.54" width="0.254" layer="94"/>
<wire x1="0.762" y1="-2.54" x2="0.762" y2="2.54" width="0.254" layer="94"/>
<wire x1="2.54" y1="0" x2="1.651" y2="0" width="0.1524" layer="94"/>
<wire x1="1.651" y1="0" x2="-1.8796" y2="1.7526" width="0.1524" layer="94"/>
<wire x1="0.762" y1="2.54" x2="-0.762" y2="2.54" width="0.254" layer="94"/>
<wire x1="-0.762" y1="-2.54" x2="0.762" y2="-2.54" width="0.254" layer="94"/>
<wire x1="-2.1597" y1="1.2939" x2="-3.1989" y2="2.4495" width="0.1524" layer="94"/>
<wire x1="-3.1989" y1="2.4495" x2="-1.7018" y2="2.2352" width="0.1524" layer="94"/>
<wire x1="-2.54" y1="-2.54" x2="-2.54" y2="-0.508" width="0.1524" layer="94"/>
<wire x1="-2.54" y1="-0.508" x2="-3.048" y2="-1.524" width="0.1524" layer="94"/>
<wire x1="-2.54" y1="-0.508" x2="-2.032" y2="-1.524" width="0.1524" layer="94"/>
<wire x1="-2.1597" y1="1.2939" x2="-1.7018" y2="2.2352" width="0.1524" layer="94"/>
<text x="-5.969" y="-3.81" size="1.778" layer="95" rot="R90">&gt;NAME</text>
<text x="-3.81" y="-3.81" size="1.778" layer="96" rot="R90">&gt;VALUE</text>
<pin name="A" x="0" y="-5.08" visible="pad" length="short" direction="pas" rot="R90"/>
<pin name="E" x="0" y="5.08" visible="pad" length="short" direction="pas" rot="R270"/>
<pin name="S" x="5.08" y="0" visible="pad" length="short" direction="pas" rot="R180"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="NUCLEO-32G0" uservalue="yes">
<description>STM NUCLEO-G031K8 Board mit Arduino Nano Kompabilität</description>
<gates>
<gate name="G$1" symbol="NUCLEO-32G0" x="0" y="-2.54"/>
</gates>
<devices>
<device name="" package="NUCLEO-32G0">
<connects>
<connect gate="G$1" pin="3V3" pad="3V3"/>
<connect gate="G$1" pin="5V" pad="5V"/>
<connect gate="G$1" pin="A0" pad="A0"/>
<connect gate="G$1" pin="A1" pad="A1"/>
<connect gate="G$1" pin="A2" pad="A2"/>
<connect gate="G$1" pin="A3" pad="A3"/>
<connect gate="G$1" pin="A4" pad="A4"/>
<connect gate="G$1" pin="A5" pad="A5"/>
<connect gate="G$1" pin="A6" pad="A6"/>
<connect gate="G$1" pin="A7" pad="A7"/>
<connect gate="G$1" pin="D0" pad="D0"/>
<connect gate="G$1" pin="D1" pad="D1"/>
<connect gate="G$1" pin="D10" pad="D10"/>
<connect gate="G$1" pin="D11" pad="D11"/>
<connect gate="G$1" pin="D12" pad="D12"/>
<connect gate="G$1" pin="D13" pad="D13"/>
<connect gate="G$1" pin="D2" pad="D2"/>
<connect gate="G$1" pin="D3" pad="D3"/>
<connect gate="G$1" pin="D4" pad="D4"/>
<connect gate="G$1" pin="D5" pad="D5"/>
<connect gate="G$1" pin="D6" pad="D6"/>
<connect gate="G$1" pin="D7" pad="D7"/>
<connect gate="G$1" pin="D8" pad="D8"/>
<connect gate="G$1" pin="D9" pad="D9"/>
<connect gate="G$1" pin="GND" pad="GND GND1" route="any"/>
<connect gate="G$1" pin="REF" pad="REF"/>
<connect gate="G$1" pin="RST" pad="RST RST1"/>
<connect gate="G$1" pin="VIN" pad="VIN"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="JST-2" uservalue="yes">
<description>JST Steckverbinder mit 2 Pins.</description>
<gates>
<gate name="G$1" symbol="JST-2" x="0" y="0"/>
</gates>
<devices>
<device name="" package="JST-2">
<connects>
<connect gate="G$1" pin="P$1" pad="P$1"/>
<connect gate="G$1" pin="P$2" pad="P$2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="MAX485" uservalue="yes">
<description>MAX485 RS-485/RS-422 Transceiver</description>
<gates>
<gate name="G$1" symbol="MAX485" x="0" y="0"/>
</gates>
<devices>
<device name="" package="MAX485">
<connects>
<connect gate="G$1" pin="-RE" pad="-RE"/>
<connect gate="G$1" pin="A" pad="A"/>
<connect gate="G$1" pin="B" pad="B"/>
<connect gate="G$1" pin="DE" pad="DE"/>
<connect gate="G$1" pin="DI" pad="DI"/>
<connect gate="G$1" pin="GND" pad="GND"/>
<connect gate="G$1" pin="RO" pad="RO"/>
<connect gate="G$1" pin="VCC" pad="VCC"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="JST-4" uservalue="yes">
<description>JST Steckverbinder mit 4 Pins.</description>
<gates>
<gate name="G$1" symbol="JST-4" x="0" y="0"/>
</gates>
<devices>
<device name="" package="JST-4">
<connects>
<connect gate="G$1" pin="P$1" pad="P$1"/>
<connect gate="G$1" pin="P$2" pad="P$2"/>
<connect gate="G$1" pin="P$3" pad="P$3"/>
<connect gate="G$1" pin="P$4" pad="P$4"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="JST-3" uservalue="yes">
<description>JST Steckverbinder mit 3 Pins.</description>
<gates>
<gate name="G$1" symbol="JST-3" x="0" y="0"/>
</gates>
<devices>
<device name="" package="JST-3">
<connects>
<connect gate="G$1" pin="P$1" pad="P$1"/>
<connect gate="G$1" pin="P$2" pad="P$2"/>
<connect gate="G$1" pin="P$3" pad="P$3"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="RESISTOR">
<gates>
<gate name="G$1" symbol="R-EU" x="0" y="0"/>
</gates>
<devices>
<device name="" package="0207/7">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="POTENTIOMETER">
<gates>
<gate name="G$1" symbol="POT_EU-" x="0" y="0"/>
</gates>
<devices>
<device name="" package="S64W">
<connects>
<connect gate="G$1" pin="A" pad="A"/>
<connect gate="G$1" pin="E" pad="E"/>
<connect gate="G$1" pin="S" pad="S"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
<library name="supply1" urn="urn:adsk.eagle:library:371">
<description>&lt;b&gt;Supply Symbols&lt;/b&gt;&lt;p&gt;
 GND, VCC, 0V, +5V, -5V, etc.&lt;p&gt;
 Please keep in mind, that these devices are necessary for the
 automatic wiring of the supply signals.&lt;p&gt;
 The pin name defined in the symbol is identical to the net which is to be wired automatically.&lt;p&gt;
 In this library the device names are the same as the pin names of the symbols, therefore the correct signal names appear next to the supply symbols in the schematic.&lt;p&gt;
 &lt;author&gt;Created by librarian@cadsoft.de&lt;/author&gt;</description>
<packages>
</packages>
<symbols>
<symbol name="+3V3" urn="urn:adsk.eagle:symbol:26950/1" library_version="1">
<wire x1="1.27" y1="-1.905" x2="0" y2="0" width="0.254" layer="94"/>
<wire x1="0" y1="0" x2="-1.27" y2="-1.905" width="0.254" layer="94"/>
<text x="-2.54" y="-5.08" size="1.778" layer="96" rot="R90">&gt;VALUE</text>
<pin name="+3V3" x="0" y="-2.54" visible="off" length="short" direction="sup" rot="R90"/>
</symbol>
<symbol name="+5V" urn="urn:adsk.eagle:symbol:26929/1" library_version="1">
<wire x1="1.27" y1="-1.905" x2="0" y2="0" width="0.254" layer="94"/>
<wire x1="0" y1="0" x2="-1.27" y2="-1.905" width="0.254" layer="94"/>
<text x="-2.54" y="-5.08" size="1.778" layer="96" rot="R90">&gt;VALUE</text>
<pin name="+5V" x="0" y="-2.54" visible="off" length="short" direction="sup" rot="R90"/>
</symbol>
<symbol name="GND" urn="urn:adsk.eagle:symbol:26925/1" library_version="1">
<wire x1="-1.905" y1="0" x2="1.905" y2="0" width="0.254" layer="94"/>
<text x="-2.54" y="-2.54" size="1.778" layer="96">&gt;VALUE</text>
<pin name="GND" x="0" y="2.54" visible="off" length="short" direction="sup" rot="R270"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="+3V3" urn="urn:adsk.eagle:component:26981/1" prefix="+3V3" library_version="1">
<description>&lt;b&gt;SUPPLY SYMBOL&lt;/b&gt;</description>
<gates>
<gate name="G$1" symbol="+3V3" x="0" y="0"/>
</gates>
<devices>
<device name="">
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="+5V" urn="urn:adsk.eagle:component:26963/1" prefix="P+" library_version="1">
<description>&lt;b&gt;SUPPLY SYMBOL&lt;/b&gt;</description>
<gates>
<gate name="1" symbol="+5V" x="0" y="0"/>
</gates>
<devices>
<device name="">
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="GND" urn="urn:adsk.eagle:component:26954/1" prefix="GND" library_version="1">
<description>&lt;b&gt;SUPPLY SYMBOL&lt;/b&gt;</description>
<gates>
<gate name="1" symbol="GND" x="0" y="0"/>
</gates>
<devices>
<device name="">
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
<library name="frames" urn="urn:adsk.eagle:library:229">
<description>&lt;b&gt;Frames for Sheet and Layout&lt;/b&gt;</description>
<packages>
</packages>
<symbols>
<symbol name="DINA4_P" urn="urn:adsk.eagle:symbol:13866/1" library_version="1">
<frame x1="0" y1="0" x2="180.34" y2="264.16" columns="4" rows="4" layer="94" border-left="no" border-top="no" border-right="no" border-bottom="no"/>
</symbol>
<symbol name="DOCFIELD" urn="urn:adsk.eagle:symbol:13864/1" library_version="1">
<wire x1="0" y1="0" x2="71.12" y2="0" width="0.1016" layer="94"/>
<wire x1="101.6" y1="15.24" x2="87.63" y2="15.24" width="0.1016" layer="94"/>
<wire x1="0" y1="0" x2="0" y2="5.08" width="0.1016" layer="94"/>
<wire x1="0" y1="5.08" x2="71.12" y2="5.08" width="0.1016" layer="94"/>
<wire x1="0" y1="5.08" x2="0" y2="15.24" width="0.1016" layer="94"/>
<wire x1="101.6" y1="15.24" x2="101.6" y2="5.08" width="0.1016" layer="94"/>
<wire x1="71.12" y1="5.08" x2="71.12" y2="0" width="0.1016" layer="94"/>
<wire x1="71.12" y1="5.08" x2="87.63" y2="5.08" width="0.1016" layer="94"/>
<wire x1="71.12" y1="0" x2="101.6" y2="0" width="0.1016" layer="94"/>
<wire x1="87.63" y1="15.24" x2="87.63" y2="5.08" width="0.1016" layer="94"/>
<wire x1="87.63" y1="15.24" x2="0" y2="15.24" width="0.1016" layer="94"/>
<wire x1="87.63" y1="5.08" x2="101.6" y2="5.08" width="0.1016" layer="94"/>
<wire x1="101.6" y1="5.08" x2="101.6" y2="0" width="0.1016" layer="94"/>
<wire x1="0" y1="15.24" x2="0" y2="22.86" width="0.1016" layer="94"/>
<wire x1="101.6" y1="35.56" x2="0" y2="35.56" width="0.1016" layer="94"/>
<wire x1="101.6" y1="35.56" x2="101.6" y2="22.86" width="0.1016" layer="94"/>
<wire x1="0" y1="22.86" x2="101.6" y2="22.86" width="0.1016" layer="94"/>
<wire x1="0" y1="22.86" x2="0" y2="35.56" width="0.1016" layer="94"/>
<wire x1="101.6" y1="22.86" x2="101.6" y2="15.24" width="0.1016" layer="94"/>
<text x="1.27" y="1.27" size="2.54" layer="94">Date:</text>
<text x="12.7" y="1.27" size="2.54" layer="94">&gt;LAST_DATE_TIME</text>
<text x="72.39" y="1.27" size="2.54" layer="94">Sheet:</text>
<text x="86.36" y="1.27" size="2.54" layer="94">&gt;SHEET</text>
<text x="88.9" y="11.43" size="2.54" layer="94">REV:</text>
<text x="1.27" y="19.05" size="2.54" layer="94">TITLE:</text>
<text x="1.27" y="11.43" size="2.54" layer="94">Document Number:</text>
<text x="17.78" y="19.05" size="2.54" layer="94">&gt;DRAWING_NAME</text>
</symbol>
</symbols>
<devicesets>
<deviceset name="DINA4_P" urn="urn:adsk.eagle:component:13925/1" prefix="FRAME" uservalue="yes" library_version="1">
<description>&lt;b&gt;FRAME&lt;/b&gt;&lt;p&gt;
DIN A4, portrait with extra doc field</description>
<gates>
<gate name="G$1" symbol="DINA4_P" x="0" y="0"/>
<gate name="G$2" symbol="DOCFIELD" x="78.74" y="0" addlevel="must"/>
</gates>
<devices>
<device name="">
<technologies>
<technology name=""/>
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
<part name="MCU1" library="eigene" deviceset="NUCLEO-32G0" device="" value="NUCLEO-32G0"/>
<part name="+3V1" library="supply1" library_urn="urn:adsk.eagle:library:371" deviceset="+3V3" device=""/>
<part name="JST3" library="eigene" deviceset="JST-2" device=""/>
<part name="JST2" library="eigene" deviceset="JST-2" device=""/>
<part name="JST5" library="eigene" deviceset="JST-2" device=""/>
<part name="JST4" library="eigene" deviceset="JST-2" device=""/>
<part name="JST1" library="eigene" deviceset="JST-2" device=""/>
<part name="+3V6" library="supply1" library_urn="urn:adsk.eagle:library:371" deviceset="+3V3" device=""/>
<part name="IC1" library="eigene" deviceset="MAX485" device="" value="MAX485"/>
<part name="P+1" library="supply1" library_urn="urn:adsk.eagle:library:371" deviceset="+5V" device=""/>
<part name="P+2" library="supply1" library_urn="urn:adsk.eagle:library:371" deviceset="+5V" device=""/>
<part name="GND1" library="supply1" library_urn="urn:adsk.eagle:library:371" deviceset="GND" device=""/>
<part name="GND2" library="supply1" library_urn="urn:adsk.eagle:library:371" deviceset="GND" device=""/>
<part name="JST9" library="eigene" deviceset="JST-2" device=""/>
<part name="R6" library="eigene" deviceset="RESISTOR" device="" value="10k"/>
<part name="R7" library="eigene" deviceset="RESISTOR" device="" value="10k"/>
<part name="R8" library="eigene" deviceset="RESISTOR" device="" value="10k"/>
<part name="R9" library="eigene" deviceset="RESISTOR" device="" value="10k"/>
<part name="R10" library="eigene" deviceset="RESISTOR" device="" value="10k"/>
<part name="+3V7" library="supply1" library_urn="urn:adsk.eagle:library:371" deviceset="+3V3" device=""/>
<part name="GND3" library="supply1" library_urn="urn:adsk.eagle:library:371" deviceset="GND" device=""/>
<part name="R11" library="eigene" deviceset="RESISTOR" device="" value="10k"/>
<part name="R12" library="eigene" deviceset="RESISTOR" device="" value="10k"/>
<part name="+3V8" library="supply1" library_urn="urn:adsk.eagle:library:371" deviceset="+3V3" device=""/>
<part name="GND4" library="supply1" library_urn="urn:adsk.eagle:library:371" deviceset="GND" device=""/>
<part name="JST16" library="eigene" deviceset="JST-4" device=""/>
<part name="JST12" library="eigene" deviceset="JST-4" device=""/>
<part name="JST13" library="eigene" deviceset="JST-3" device=""/>
<part name="JST15" library="eigene" deviceset="JST-3" device=""/>
<part name="+3V9" library="supply1" library_urn="urn:adsk.eagle:library:371" deviceset="+3V3" device=""/>
<part name="GND5" library="supply1" library_urn="urn:adsk.eagle:library:371" deviceset="GND" device=""/>
<part name="JST11" library="eigene" deviceset="JST-2" device=""/>
<part name="+3V10" library="supply1" library_urn="urn:adsk.eagle:library:371" deviceset="+3V3" device=""/>
<part name="R5" library="eigene" deviceset="RESISTOR" device="" value="10k"/>
<part name="GND6" library="supply1" library_urn="urn:adsk.eagle:library:371" deviceset="GND" device=""/>
<part name="JST6" library="eigene" deviceset="JST-2" device=""/>
<part name="+3V11" library="supply1" library_urn="urn:adsk.eagle:library:371" deviceset="+3V3" device=""/>
<part name="R3" library="eigene" deviceset="RESISTOR" device="" value="330"/>
<part name="GND7" library="supply1" library_urn="urn:adsk.eagle:library:371" deviceset="GND" device=""/>
<part name="JST8" library="eigene" deviceset="JST-2" device=""/>
<part name="JST7" library="eigene" deviceset="JST-2" device=""/>
<part name="R2" library="eigene" deviceset="RESISTOR" device=""/>
<part name="GND8" library="supply1" library_urn="urn:adsk.eagle:library:371" deviceset="GND" device=""/>
<part name="R1" library="eigene" deviceset="RESISTOR" device=""/>
<part name="GND9" library="supply1" library_urn="urn:adsk.eagle:library:371" deviceset="GND" device=""/>
<part name="JST14" library="eigene" deviceset="JST-2" device=""/>
<part name="FRAME1" library="frames" library_urn="urn:adsk.eagle:library:229" deviceset="DINA4_P" device=""/>
<part name="R4" library="eigene" deviceset="POTENTIOMETER" device="" value="10k"/>
<part name="JST10" library="eigene" deviceset="JST-3" device=""/>
<part name="P+3" library="supply1" library_urn="urn:adsk.eagle:library:371" deviceset="+5V" device=""/>
<part name="GND10" library="supply1" library_urn="urn:adsk.eagle:library:371" deviceset="GND" device=""/>
</parts>
<sheets>
<sheet>
<plain>
<text x="147.32" y="-71.12" size="2.54" layer="94">1</text>
</plain>
<instances>
<instance part="MCU1" gate="G$1" x="38.1" y="149.86" smashed="yes"/>
<instance part="+3V1" gate="G$1" x="86.36" y="139.7" smashed="yes">
<attribute name="VALUE" x="83.82" y="134.62" size="1.778" layer="96" rot="R90"/>
</instance>
<instance part="JST3" gate="G$1" x="-7.62" y="-33.02" smashed="yes">
<attribute name="NAME" x="2.54" y="-35.56" size="1.778" layer="95"/>
<attribute name="VALUE" x="2.54" y="-38.1" size="1.778" layer="96"/>
</instance>
<instance part="JST2" gate="G$1" x="-7.62" y="-15.24" smashed="yes">
<attribute name="NAME" x="2.54" y="-17.78" size="1.778" layer="95"/>
<attribute name="VALUE" x="2.54" y="-20.32" size="1.778" layer="96"/>
</instance>
<instance part="JST5" gate="G$1" x="-7.62" y="2.54" smashed="yes">
<attribute name="NAME" x="2.54" y="0" size="1.778" layer="95"/>
<attribute name="VALUE" x="2.54" y="-2.54" size="1.778" layer="96"/>
</instance>
<instance part="JST4" gate="G$1" x="-7.62" y="-50.8" smashed="yes">
<attribute name="NAME" x="2.54" y="-53.34" size="1.778" layer="95"/>
<attribute name="VALUE" x="2.54" y="-55.88" size="1.778" layer="96"/>
</instance>
<instance part="JST1" gate="G$1" x="-7.62" y="20.32" smashed="yes">
<attribute name="NAME" x="2.54" y="17.78" size="1.778" layer="95"/>
<attribute name="VALUE" x="2.54" y="15.24" size="1.778" layer="96"/>
</instance>
<instance part="+3V6" gate="G$1" x="-12.7" y="20.32" smashed="yes">
<attribute name="VALUE" x="-15.24" y="15.24" size="1.778" layer="96" rot="R90"/>
</instance>
<instance part="IC1" gate="G$1" x="99.06" y="121.92" smashed="yes">
<attribute name="VALUE" x="99.06" y="124.46" size="1.27" layer="96"/>
<attribute name="NAME" x="99.06" y="127" size="1.27" layer="95"/>
</instance>
<instance part="P+1" gate="1" x="86.36" y="165.1" smashed="yes">
<attribute name="VALUE" x="83.82" y="160.02" size="1.778" layer="96" rot="R90"/>
</instance>
<instance part="P+2" gate="1" x="124.46" y="124.46" smashed="yes">
<attribute name="VALUE" x="121.92" y="124.46" size="1.778" layer="96" rot="R180"/>
</instance>
<instance part="GND1" gate="1" x="-12.7" y="157.48" smashed="yes">
<attribute name="VALUE" x="-15.24" y="154.94" size="1.778" layer="96"/>
</instance>
<instance part="GND2" gate="1" x="124.46" y="99.06" smashed="yes">
<attribute name="VALUE" x="121.92" y="96.52" size="1.778" layer="96"/>
</instance>
<instance part="JST9" gate="G$1" x="132.08" y="129.54" smashed="yes">
<attribute name="NAME" x="142.24" y="127" size="1.778" layer="95"/>
<attribute name="VALUE" x="142.24" y="124.46" size="1.778" layer="96"/>
</instance>
<instance part="R6" gate="G$1" x="93.98" y="35.56" smashed="yes" rot="R90">
<attribute name="NAME" x="91.44" y="35.56" size="1.778" layer="95" rot="R90" align="center"/>
<attribute name="VALUE" x="96.52" y="35.56" size="1.778" layer="95" rot="R90" align="center"/>
</instance>
<instance part="R7" gate="G$1" x="93.98" y="20.32" smashed="yes" rot="R90">
<attribute name="NAME" x="91.44" y="20.32" size="1.778" layer="95" rot="R90" align="center"/>
<attribute name="VALUE" x="96.52" y="20.32" size="1.778" layer="95" rot="R90" align="center"/>
</instance>
<instance part="R8" gate="G$1" x="93.98" y="5.08" smashed="yes" rot="R90">
<attribute name="NAME" x="91.44" y="5.08" size="1.778" layer="95" rot="R90" align="center"/>
<attribute name="VALUE" x="96.52" y="5.08" size="1.778" layer="95" rot="R90" align="center"/>
</instance>
<instance part="R9" gate="G$1" x="93.98" y="-10.16" smashed="yes" rot="R90">
<attribute name="NAME" x="91.44" y="-10.16" size="1.778" layer="95" rot="R90" align="center"/>
<attribute name="VALUE" x="96.52" y="-10.16" size="1.778" layer="95" rot="R90" align="center"/>
</instance>
<instance part="R10" gate="G$1" x="93.98" y="-25.4" smashed="yes" rot="R90">
<attribute name="NAME" x="91.44" y="-25.4" size="1.778" layer="95" rot="R90" align="center"/>
<attribute name="VALUE" x="96.52" y="-25.4" size="1.778" layer="95" rot="R90" align="center"/>
</instance>
<instance part="+3V7" gate="G$1" x="93.98" y="48.26" smashed="yes">
<attribute name="VALUE" x="91.44" y="43.18" size="1.778" layer="96" rot="R90"/>
</instance>
<instance part="GND3" gate="1" x="93.98" y="-38.1" smashed="yes">
<attribute name="VALUE" x="91.44" y="-40.64" size="1.778" layer="96"/>
</instance>
<instance part="R11" gate="G$1" x="40.64" y="-2.54" smashed="yes" rot="R90">
<attribute name="NAME" x="38.1" y="-2.54" size="1.778" layer="95" rot="R90" align="center"/>
<attribute name="VALUE" x="43.18" y="-2.54" size="1.778" layer="95" rot="R90" align="center"/>
</instance>
<instance part="R12" gate="G$1" x="40.64" y="-17.78" smashed="yes" rot="R90">
<attribute name="NAME" x="38.1" y="-17.78" size="1.778" layer="95" rot="R90" align="center"/>
<attribute name="VALUE" x="43.18" y="-17.78" size="1.778" layer="95" rot="R90" align="center"/>
</instance>
<instance part="+3V8" gate="G$1" x="40.64" y="10.16" smashed="yes">
<attribute name="VALUE" x="38.1" y="5.08" size="1.778" layer="96" rot="R90"/>
</instance>
<instance part="GND4" gate="1" x="40.64" y="-30.48" smashed="yes">
<attribute name="VALUE" x="38.1" y="-33.02" size="1.778" layer="96"/>
</instance>
<instance part="JST16" gate="G$1" x="50.8" y="20.32" smashed="yes">
<attribute name="NAME" x="66.04" y="17.78" size="1.27" layer="95"/>
<attribute name="VALUE" x="66.04" y="15.24" size="1.27" layer="96"/>
</instance>
<instance part="JST12" gate="G$1" x="106.68" y="60.96" smashed="yes">
<attribute name="NAME" x="121.92" y="58.42" size="1.27" layer="95"/>
<attribute name="VALUE" x="121.92" y="55.88" size="1.27" layer="96"/>
</instance>
<instance part="JST13" gate="G$1" x="127" y="60.96" smashed="yes">
<attribute name="NAME" x="139.7" y="58.42" size="1.778" layer="95"/>
<attribute name="VALUE" x="139.7" y="55.88" size="1.778" layer="96"/>
</instance>
<instance part="JST15" gate="G$1" x="68.58" y="88.9" smashed="yes">
<attribute name="NAME" x="81.28" y="86.36" size="1.778" layer="95"/>
<attribute name="VALUE" x="81.28" y="83.82" size="1.778" layer="96"/>
</instance>
<instance part="+3V9" gate="G$1" x="63.5" y="76.2" smashed="yes">
<attribute name="VALUE" x="60.96" y="71.12" size="1.778" layer="96" rot="R90"/>
</instance>
<instance part="GND5" gate="1" x="73.66" y="68.58" smashed="yes">
<attribute name="VALUE" x="71.12" y="66.04" size="1.778" layer="96"/>
</instance>
<instance part="JST11" gate="G$1" x="-10.16" y="66.04" smashed="yes">
<attribute name="NAME" x="0" y="63.5" size="1.778" layer="95"/>
<attribute name="VALUE" x="0" y="60.96" size="1.778" layer="96"/>
</instance>
<instance part="+3V10" gate="G$1" x="-15.24" y="55.88" smashed="yes">
<attribute name="VALUE" x="-17.78" y="50.8" size="1.778" layer="96" rot="R90"/>
</instance>
<instance part="R5" gate="G$1" x="-5.08" y="43.18" smashed="yes" rot="R90">
<attribute name="NAME" x="-7.62" y="43.18" size="1.778" layer="95" rot="R90" align="center"/>
<attribute name="VALUE" x="-2.54" y="43.18" size="1.778" layer="95" rot="R90" align="center"/>
</instance>
<instance part="GND6" gate="1" x="-5.08" y="33.02" smashed="yes">
<attribute name="VALUE" x="-7.62" y="30.48" size="1.778" layer="96"/>
</instance>
<instance part="JST6" gate="G$1" x="127" y="88.9" smashed="yes">
<attribute name="NAME" x="137.16" y="86.36" size="1.778" layer="95"/>
<attribute name="VALUE" x="137.16" y="83.82" size="1.778" layer="96"/>
</instance>
<instance part="+3V11" gate="G$1" x="40.64" y="68.58" smashed="yes">
<attribute name="VALUE" x="38.1" y="63.5" size="1.778" layer="96" rot="R90"/>
</instance>
<instance part="R3" gate="G$1" x="40.64" y="58.42" smashed="yes" rot="R90">
<attribute name="NAME" x="38.1" y="58.42" size="1.778" layer="95" rot="R90" align="center"/>
<attribute name="VALUE" x="43.18" y="58.42" size="1.778" layer="95" rot="R90" align="center"/>
</instance>
<instance part="GND7" gate="1" x="40.64" y="35.56" smashed="yes">
<attribute name="VALUE" x="38.1" y="33.02" size="1.778" layer="96"/>
</instance>
<instance part="JST8" gate="G$1" x="0" y="109.22" smashed="yes">
<attribute name="NAME" x="10.16" y="106.68" size="1.778" layer="95"/>
<attribute name="VALUE" x="10.16" y="104.14" size="1.778" layer="96"/>
</instance>
<instance part="JST7" gate="G$1" x="38.1" y="109.22" smashed="yes">
<attribute name="NAME" x="48.26" y="106.68" size="1.778" layer="95"/>
<attribute name="VALUE" x="48.26" y="104.14" size="1.778" layer="96"/>
</instance>
<instance part="R2" gate="G$1" x="5.08" y="88.9" smashed="yes" rot="R90">
<attribute name="NAME" x="2.54" y="88.9" size="1.778" layer="95" rot="R90" align="center"/>
<attribute name="VALUE" x="7.62" y="88.9" size="1.778" layer="95" rot="R90" align="center"/>
</instance>
<instance part="GND8" gate="1" x="5.08" y="78.74" smashed="yes">
<attribute name="VALUE" x="2.54" y="76.2" size="1.778" layer="96"/>
</instance>
<instance part="R1" gate="G$1" x="43.18" y="88.9" smashed="yes" rot="R90">
<attribute name="NAME" x="40.64" y="88.9" size="1.778" layer="95" align="center"/>
<attribute name="VALUE" x="45.72" y="88.9" size="1.778" layer="95" align="center"/>
</instance>
<instance part="GND9" gate="1" x="43.18" y="78.74" smashed="yes">
<attribute name="VALUE" x="40.64" y="76.2" size="1.778" layer="96"/>
</instance>
<instance part="JST14" gate="G$1" x="116.84" y="162.56" smashed="yes">
<attribute name="NAME" x="127" y="160.02" size="1.778" layer="95"/>
<attribute name="VALUE" x="127" y="157.48" size="1.778" layer="96"/>
</instance>
<instance part="FRAME1" gate="G$1" x="-25.4" y="-78.74" smashed="yes"/>
<instance part="FRAME1" gate="G$2" x="53.34" y="-78.74" smashed="yes">
<attribute name="LAST_DATE_TIME" x="66.04" y="-77.47" size="2.54" layer="94"/>
<attribute name="SHEET" x="139.7" y="-77.47" size="2.54" layer="94"/>
<attribute name="DRAWING_NAME" x="71.12" y="-59.69" size="2.54" layer="94"/>
</instance>
<instance part="R4" gate="G$1" x="50.8" y="45.72" smashed="yes" rot="MR0">
<attribute name="NAME" x="56.769" y="41.91" size="1.778" layer="95" rot="R90"/>
<attribute name="VALUE" x="54.61" y="41.91" size="1.778" layer="96" rot="R90"/>
</instance>
<instance part="JST10" gate="G$1" x="20.32" y="40.64" smashed="yes" rot="R90">
<attribute name="NAME" x="22.86" y="53.34" size="1.778" layer="95" rot="R90"/>
<attribute name="VALUE" x="25.4" y="53.34" size="1.778" layer="96" rot="R90"/>
</instance>
<instance part="P+3" gate="1" x="111.76" y="152.4" smashed="yes">
<attribute name="VALUE" x="109.22" y="147.32" size="1.778" layer="96" rot="R90"/>
</instance>
<instance part="GND10" gate="1" x="121.92" y="144.78" smashed="yes">
<attribute name="VALUE" x="119.38" y="142.24" size="1.778" layer="96"/>
</instance>
</instances>
<busses>
</busses>
<nets>
<net name="+3V3" class="0">
<segment>
<pinref part="MCU1" gate="G$1" pin="3V3"/>
<wire x1="53.34" y1="134.62" x2="86.36" y2="134.62" width="0.1524" layer="91"/>
<pinref part="+3V1" gate="G$1" pin="+3V3"/>
<wire x1="86.36" y1="134.62" x2="86.36" y2="137.16" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="+3V6" gate="G$1" pin="+3V3"/>
<wire x1="-12.7" y1="17.78" x2="-12.7" y2="5.08" width="0.1524" layer="91"/>
<wire x1="-12.7" y1="-66.04" x2="-12.7" y2="-48.26" width="0.1524" layer="91"/>
<pinref part="JST1" gate="G$1" pin="P$1"/>
<wire x1="-12.7" y1="-48.26" x2="-12.7" y2="-30.48" width="0.1524" layer="91"/>
<wire x1="-12.7" y1="-30.48" x2="-12.7" y2="-12.7" width="0.1524" layer="91"/>
<wire x1="-12.7" y1="-12.7" x2="-12.7" y2="5.08" width="0.1524" layer="91"/>
<wire x1="-5.08" y1="7.62" x2="-5.08" y2="5.08" width="0.1524" layer="91"/>
<wire x1="-5.08" y1="5.08" x2="-12.7" y2="5.08" width="0.1524" layer="91"/>
<junction x="-12.7" y="5.08"/>
<pinref part="JST5" gate="G$1" pin="P$1"/>
<wire x1="-5.08" y1="-10.16" x2="-5.08" y2="-12.7" width="0.1524" layer="91"/>
<wire x1="-5.08" y1="-12.7" x2="-12.7" y2="-12.7" width="0.1524" layer="91"/>
<junction x="-12.7" y="-12.7"/>
<pinref part="JST2" gate="G$1" pin="P$1"/>
<wire x1="-5.08" y1="-27.94" x2="-5.08" y2="-30.48" width="0.1524" layer="91"/>
<wire x1="-5.08" y1="-30.48" x2="-12.7" y2="-30.48" width="0.1524" layer="91"/>
<junction x="-12.7" y="-30.48"/>
<pinref part="JST3" gate="G$1" pin="P$1"/>
<wire x1="-5.08" y1="-45.72" x2="-5.08" y2="-48.26" width="0.1524" layer="91"/>
<wire x1="-5.08" y1="-48.26" x2="-12.7" y2="-48.26" width="0.1524" layer="91"/>
<junction x="-12.7" y="-48.26"/>
<pinref part="JST4" gate="G$1" pin="P$1"/>
<wire x1="-5.08" y1="-63.5" x2="-5.08" y2="-66.04" width="0.1524" layer="91"/>
<wire x1="-5.08" y1="-66.04" x2="-12.7" y2="-66.04" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="+3V7" gate="G$1" pin="+3V3"/>
<pinref part="R6" gate="G$1" pin="2"/>
<wire x1="93.98" y1="45.72" x2="93.98" y2="43.18" width="0.1524" layer="91"/>
<wire x1="93.98" y1="43.18" x2="93.98" y2="40.64" width="0.1524" layer="91"/>
<wire x1="93.98" y1="43.18" x2="116.84" y2="43.18" width="0.1524" layer="91"/>
<junction x="93.98" y="43.18"/>
<pinref part="JST12" gate="G$1" pin="P$4"/>
<wire x1="116.84" y1="43.18" x2="116.84" y2="48.26" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="+3V8" gate="G$1" pin="+3V3"/>
<pinref part="R11" gate="G$1" pin="2"/>
<wire x1="40.64" y1="7.62" x2="40.64" y2="5.08" width="0.1524" layer="91"/>
<pinref part="JST16" gate="G$1" pin="P$1"/>
<wire x1="40.64" y1="5.08" x2="40.64" y2="2.54" width="0.1524" layer="91"/>
<wire x1="40.64" y1="5.08" x2="53.34" y2="5.08" width="0.1524" layer="91"/>
<wire x1="53.34" y1="5.08" x2="53.34" y2="7.62" width="0.1524" layer="91"/>
<junction x="40.64" y="5.08"/>
</segment>
<segment>
<pinref part="JST15" gate="G$1" pin="P$1"/>
<wire x1="71.12" y1="76.2" x2="71.12" y2="73.66" width="0.1524" layer="91"/>
<pinref part="+3V9" gate="G$1" pin="+3V3"/>
<wire x1="71.12" y1="73.66" x2="63.5" y2="73.66" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="+3V10" gate="G$1" pin="+3V3"/>
<pinref part="JST11" gate="G$1" pin="P$1"/>
<wire x1="-15.24" y1="53.34" x2="-7.62" y2="53.34" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="+3V11" gate="G$1" pin="+3V3"/>
<pinref part="R3" gate="G$1" pin="2"/>
<wire x1="40.64" y1="66.04" x2="40.64" y2="63.5" width="0.1524" layer="91"/>
</segment>
</net>
<net name="+5V" class="0">
<segment>
<pinref part="P+3" gate="1" pin="+5V"/>
<pinref part="JST14" gate="G$1" pin="P$1"/>
<wire x1="111.76" y1="147.32" x2="111.76" y2="149.86" width="0.1524" layer="91"/>
<wire x1="111.76" y1="147.32" x2="119.38" y2="147.32" width="0.1524" layer="91"/>
<wire x1="119.38" y1="147.32" x2="119.38" y2="149.86" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="MCU1" gate="G$1" pin="5V"/>
<pinref part="P+1" gate="1" pin="+5V"/>
<wire x1="53.34" y1="160.02" x2="86.36" y2="160.02" width="0.1524" layer="91"/>
<wire x1="86.36" y1="160.02" x2="86.36" y2="162.56" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="IC1" gate="G$1" pin="VCC"/>
<wire x1="119.38" y1="116.84" x2="124.46" y2="116.84" width="0.1524" layer="91"/>
<pinref part="P+2" gate="1" pin="+5V"/>
<wire x1="124.46" y1="116.84" x2="124.46" y2="121.92" width="0.1524" layer="91"/>
</segment>
</net>
<net name="GND" class="0">
<segment>
<pinref part="MCU1" gate="G$1" pin="GND"/>
<pinref part="GND1" gate="1" pin="GND"/>
<wire x1="22.86" y1="160.02" x2="-12.7" y2="160.02" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="R10" gate="G$1" pin="1"/>
<pinref part="GND3" gate="1" pin="GND"/>
<wire x1="93.98" y1="-30.48" x2="93.98" y2="-33.02" width="0.1524" layer="91"/>
<pinref part="JST13" gate="G$1" pin="P$2"/>
<wire x1="93.98" y1="-33.02" x2="93.98" y2="-35.56" width="0.1524" layer="91"/>
<wire x1="93.98" y1="-33.02" x2="132.08" y2="-33.02" width="0.1524" layer="91"/>
<wire x1="132.08" y1="-33.02" x2="132.08" y2="48.26" width="0.1524" layer="91"/>
<junction x="93.98" y="-33.02"/>
</segment>
<segment>
<pinref part="R12" gate="G$1" pin="1"/>
<wire x1="40.64" y1="-22.86" x2="40.64" y2="-25.4" width="0.1524" layer="91"/>
<pinref part="GND4" gate="1" pin="GND"/>
<pinref part="JST16" gate="G$1" pin="P$3"/>
<wire x1="40.64" y1="-25.4" x2="40.64" y2="-27.94" width="0.1524" layer="91"/>
<wire x1="40.64" y1="-25.4" x2="58.42" y2="-25.4" width="0.1524" layer="91"/>
<wire x1="58.42" y1="-25.4" x2="58.42" y2="7.62" width="0.1524" layer="91"/>
<junction x="40.64" y="-25.4"/>
</segment>
<segment>
<pinref part="JST15" gate="G$1" pin="P$2"/>
<pinref part="GND5" gate="1" pin="GND"/>
<wire x1="73.66" y1="76.2" x2="73.66" y2="71.12" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="R5" gate="G$1" pin="1"/>
<wire x1="-5.08" y1="38.1" x2="-5.08" y2="35.56" width="0.1524" layer="91"/>
<pinref part="GND6" gate="1" pin="GND"/>
</segment>
<segment>
<pinref part="GND7" gate="1" pin="GND"/>
<wire x1="40.64" y1="40.64" x2="40.64" y2="38.1" width="0.1524" layer="91"/>
<wire x1="40.64" y1="40.64" x2="50.8" y2="40.64" width="0.1524" layer="91"/>
<junction x="40.64" y="40.64"/>
<pinref part="R4" gate="G$1" pin="A"/>
<wire x1="40.64" y1="45.72" x2="40.64" y2="40.64" width="0.1524" layer="91"/>
<pinref part="JST10" gate="G$1" pin="P$2"/>
<wire x1="40.64" y1="45.72" x2="33.02" y2="45.72" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="R2" gate="G$1" pin="1"/>
<wire x1="5.08" y1="83.82" x2="5.08" y2="81.28" width="0.1524" layer="91"/>
<pinref part="GND8" gate="1" pin="GND"/>
</segment>
<segment>
<pinref part="R1" gate="G$1" pin="1"/>
<pinref part="GND9" gate="1" pin="GND"/>
<wire x1="43.18" y1="83.82" x2="43.18" y2="81.28" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="IC1" gate="G$1" pin="DE"/>
<wire x1="93.98" y1="111.76" x2="91.44" y2="111.76" width="0.1524" layer="91"/>
<wire x1="91.44" y1="111.76" x2="91.44" y2="101.6" width="0.1524" layer="91"/>
<pinref part="GND2" gate="1" pin="GND"/>
<wire x1="91.44" y1="101.6" x2="124.46" y2="101.6" width="0.1524" layer="91"/>
<pinref part="IC1" gate="G$1" pin="GND"/>
<wire x1="119.38" y1="109.22" x2="124.46" y2="109.22" width="0.1524" layer="91"/>
<wire x1="124.46" y1="109.22" x2="124.46" y2="101.6" width="0.1524" layer="91"/>
<junction x="124.46" y="101.6"/>
</segment>
<segment>
<pinref part="JST14" gate="G$1" pin="P$2"/>
<pinref part="GND10" gate="1" pin="GND"/>
<wire x1="121.92" y1="149.86" x2="121.92" y2="147.32" width="0.1524" layer="91"/>
</segment>
</net>
<net name="RECEIVER_DATA" class="0">
<segment>
<pinref part="MCU1" gate="G$1" pin="D0"/>
<wire x1="22.86" y1="165.1" x2="-7.62" y2="165.1" width="0.1524" layer="91"/>
<label x="-7.62" y="165.1" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="IC1" gate="G$1" pin="RO"/>
<wire x1="93.98" y1="116.84" x2="66.04" y2="116.84" width="0.1524" layer="91"/>
<label x="66.04" y="116.84" size="1.778" layer="95"/>
</segment>
</net>
<net name="N$7" class="0">
<segment>
<pinref part="JST9" gate="G$1" pin="P$2"/>
<wire x1="137.16" y1="114.3" x2="137.16" y2="116.84" width="0.1524" layer="91"/>
<pinref part="IC1" gate="G$1" pin="B"/>
<wire x1="119.38" y1="114.3" x2="137.16" y2="114.3" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$8" class="0">
<segment>
<pinref part="R6" gate="G$1" pin="1"/>
<pinref part="R7" gate="G$1" pin="2"/>
<wire x1="93.98" y1="30.48" x2="93.98" y2="27.94" width="0.1524" layer="91"/>
<wire x1="93.98" y1="27.94" x2="93.98" y2="25.4" width="0.1524" layer="91"/>
<wire x1="93.98" y1="27.94" x2="114.3" y2="27.94" width="0.1524" layer="91"/>
<junction x="93.98" y="27.94"/>
<pinref part="JST12" gate="G$1" pin="P$3"/>
<wire x1="114.3" y1="27.94" x2="114.3" y2="48.26" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$10" class="0">
<segment>
<pinref part="R7" gate="G$1" pin="1"/>
<pinref part="R8" gate="G$1" pin="2"/>
<wire x1="93.98" y1="15.24" x2="93.98" y2="12.7" width="0.1524" layer="91"/>
<wire x1="93.98" y1="12.7" x2="93.98" y2="10.16" width="0.1524" layer="91"/>
<wire x1="93.98" y1="12.7" x2="111.76" y2="12.7" width="0.1524" layer="91"/>
<junction x="93.98" y="12.7"/>
<pinref part="JST12" gate="G$1" pin="P$2"/>
<wire x1="111.76" y1="48.26" x2="111.76" y2="12.7" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$11" class="0">
<segment>
<pinref part="R8" gate="G$1" pin="1"/>
<pinref part="R9" gate="G$1" pin="2"/>
<wire x1="93.98" y1="0" x2="93.98" y2="-2.54" width="0.1524" layer="91"/>
<wire x1="93.98" y1="-2.54" x2="93.98" y2="-5.08" width="0.1524" layer="91"/>
<wire x1="93.98" y1="-2.54" x2="109.22" y2="-2.54" width="0.1524" layer="91"/>
<junction x="93.98" y="-2.54"/>
<pinref part="JST12" gate="G$1" pin="P$1"/>
<wire x1="109.22" y1="48.26" x2="109.22" y2="-2.54" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$12" class="0">
<segment>
<pinref part="R9" gate="G$1" pin="1"/>
<pinref part="R10" gate="G$1" pin="2"/>
<wire x1="93.98" y1="-15.24" x2="93.98" y2="-17.78" width="0.1524" layer="91"/>
<pinref part="JST13" gate="G$1" pin="P$1"/>
<wire x1="93.98" y1="-17.78" x2="93.98" y2="-20.32" width="0.1524" layer="91"/>
<wire x1="93.98" y1="-17.78" x2="129.54" y2="-17.78" width="0.1524" layer="91"/>
<wire x1="129.54" y1="-17.78" x2="129.54" y2="48.26" width="0.1524" layer="91"/>
<junction x="93.98" y="-17.78"/>
</segment>
</net>
<net name="N$13" class="0">
<segment>
<pinref part="R11" gate="G$1" pin="1"/>
<pinref part="R12" gate="G$1" pin="2"/>
<wire x1="40.64" y1="-7.62" x2="40.64" y2="-10.16" width="0.1524" layer="91"/>
<pinref part="JST16" gate="G$1" pin="P$2"/>
<wire x1="40.64" y1="-10.16" x2="40.64" y2="-12.7" width="0.1524" layer="91"/>
<wire x1="40.64" y1="-10.16" x2="55.88" y2="-10.16" width="0.1524" layer="91"/>
<wire x1="55.88" y1="-10.16" x2="55.88" y2="7.62" width="0.1524" layer="91"/>
<junction x="40.64" y="-10.16"/>
</segment>
</net>
<net name="PROTOCOL" class="0">
<segment>
<pinref part="MCU1" gate="G$1" pin="A1"/>
<label x="55.88" y="142.24" size="1.778" layer="95"/>
<wire x1="53.34" y1="142.24" x2="78.74" y2="142.24" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="JST16" gate="G$1" pin="P$4"/>
<wire x1="60.96" y1="7.62" x2="66.04" y2="7.62" width="0.1524" layer="91"/>
<label x="66.04" y="7.62" size="1.778" layer="95" xref="yes"/>
</segment>
</net>
<net name="MODE" class="0">
<segment>
<pinref part="JST13" gate="G$1" pin="P$3"/>
<wire x1="134.62" y1="48.26" x2="134.62" y2="45.72" width="0.1524" layer="91"/>
<label x="137.16" y="45.72" size="1.778" layer="95" xref="yes"/>
<wire x1="134.62" y1="45.72" x2="137.16" y2="45.72" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="MCU1" gate="G$1" pin="A0"/>
<label x="55.88" y="139.7" size="1.778" layer="95"/>
<wire x1="53.34" y1="139.7" x2="78.74" y2="139.7" width="0.1524" layer="91"/>
</segment>
</net>
<net name="SCROLL" class="0">
<segment>
<pinref part="JST1" gate="G$1" pin="P$2"/>
<label x="5.08" y="5.08" size="1.778" layer="95" xref="yes"/>
<wire x1="-2.54" y1="7.62" x2="-2.54" y2="5.08" width="0.1524" layer="91"/>
<wire x1="-2.54" y1="5.08" x2="5.08" y2="5.08" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="MCU1" gate="G$1" pin="D3"/>
<wire x1="-7.62" y1="154.94" x2="22.86" y2="154.94" width="0.1524" layer="91"/>
<label x="-7.62" y="154.94" size="1.778" layer="95"/>
</segment>
</net>
<net name="ON_OFF" class="0">
<segment>
<pinref part="JST5" gate="G$1" pin="P$2"/>
<label x="5.08" y="-12.7" size="1.778" layer="95" xref="yes"/>
<wire x1="-2.54" y1="-10.16" x2="-2.54" y2="-12.7" width="0.1524" layer="91"/>
<wire x1="-2.54" y1="-12.7" x2="5.08" y2="-12.7" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="MCU1" gate="G$1" pin="D7"/>
<wire x1="22.86" y1="144.78" x2="-7.62" y2="144.78" width="0.1524" layer="91"/>
<label x="-7.62" y="144.78" size="1.778" layer="95"/>
</segment>
</net>
<net name="AUTO_BRIGHTNESS" class="0">
<segment>
<pinref part="JST2" gate="G$1" pin="P$2"/>
<label x="5.08" y="-30.48" size="1.778" layer="95" xref="yes"/>
<wire x1="-2.54" y1="-27.94" x2="-2.54" y2="-30.48" width="0.1524" layer="91"/>
<wire x1="-2.54" y1="-30.48" x2="5.08" y2="-30.48" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="MCU1" gate="G$1" pin="D4"/>
<wire x1="-7.62" y1="152.4" x2="22.86" y2="152.4" width="0.1524" layer="91"/>
<label x="-7.62" y="152.4" size="1.778" layer="95"/>
</segment>
</net>
<net name="SINGLE_MODE" class="0">
<segment>
<pinref part="JST3" gate="G$1" pin="P$2"/>
<label x="5.08" y="-48.26" size="1.778" layer="95" xref="yes"/>
<wire x1="-2.54" y1="-45.72" x2="-2.54" y2="-48.26" width="0.1524" layer="91"/>
<wire x1="-2.54" y1="-48.26" x2="5.08" y2="-48.26" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="MCU1" gate="G$1" pin="D5"/>
<wire x1="22.86" y1="149.86" x2="-7.62" y2="149.86" width="0.1524" layer="91"/>
<label x="-7.62" y="149.86" size="1.778" layer="95"/>
</segment>
</net>
<net name="SHOW_TEMPERATURE" class="0">
<segment>
<pinref part="JST4" gate="G$1" pin="P$2"/>
<label x="5.08" y="-66.04" size="1.778" layer="95" xref="yes"/>
<wire x1="-2.54" y1="-63.5" x2="-2.54" y2="-66.04" width="0.1524" layer="91"/>
<wire x1="-2.54" y1="-66.04" x2="5.08" y2="-66.04" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="MCU1" gate="G$1" pin="D6"/>
<wire x1="-7.62" y1="147.32" x2="22.86" y2="147.32" width="0.1524" layer="91"/>
<label x="-7.62" y="147.32" size="1.778" layer="95"/>
</segment>
</net>
<net name="-RECEIVER_ENABLE" class="0">
<segment>
<pinref part="MCU1" gate="G$1" pin="D2"/>
<wire x1="22.86" y1="157.48" x2="-7.62" y2="157.48" width="0.1524" layer="91"/>
<label x="-7.62" y="157.48" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="IC1" gate="G$1" pin="-RE"/>
<wire x1="93.98" y1="114.3" x2="66.04" y2="114.3" width="0.1524" layer="91"/>
<label x="66.04" y="114.3" size="1.778" layer="95"/>
</segment>
</net>
<net name="BRIGHTNESS" class="0">
<segment>
<pinref part="JST15" gate="G$1" pin="P$3"/>
<wire x1="76.2" y1="76.2" x2="76.2" y2="73.66" width="0.1524" layer="91"/>
<wire x1="76.2" y1="73.66" x2="83.82" y2="73.66" width="0.1524" layer="91"/>
<label x="83.82" y="73.66" size="1.778" layer="95" xref="yes"/>
</segment>
<segment>
<pinref part="MCU1" gate="G$1" pin="A2"/>
<wire x1="53.34" y1="144.78" x2="78.74" y2="144.78" width="0.1524" layer="91"/>
<label x="55.88" y="144.78" size="1.778" layer="95"/>
</segment>
</net>
<net name="LIGHT" class="0">
<segment>
<pinref part="JST11" gate="G$1" pin="P$2"/>
<pinref part="R5" gate="G$1" pin="2"/>
<wire x1="-5.08" y1="53.34" x2="-5.08" y2="50.8" width="0.1524" layer="91"/>
<label x="0" y="50.8" size="1.778" layer="95" xref="yes"/>
<wire x1="-5.08" y1="50.8" x2="-5.08" y2="48.26" width="0.1524" layer="91"/>
<junction x="-5.08" y="50.8"/>
<wire x1="-5.08" y1="50.8" x2="0" y2="50.8" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="MCU1" gate="G$1" pin="A3"/>
<wire x1="53.34" y1="147.32" x2="78.74" y2="147.32" width="0.1524" layer="91"/>
<label x="55.88" y="147.32" size="1.778" layer="95"/>
</segment>
</net>
<net name="DISPLAY" class="0">
<segment>
<pinref part="MCU1" gate="G$1" pin="D9"/>
<wire x1="22.86" y1="139.7" x2="-7.62" y2="139.7" width="0.1524" layer="91"/>
<label x="-7.62" y="139.7" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="JST6" gate="G$1" pin="P$1"/>
<wire x1="129.54" y1="76.2" x2="129.54" y2="73.66" width="0.1524" layer="91"/>
<wire x1="129.54" y1="73.66" x2="132.08" y2="73.66" width="0.1524" layer="91"/>
<pinref part="JST6" gate="G$1" pin="P$2"/>
<wire x1="132.08" y1="73.66" x2="132.08" y2="76.2" width="0.1524" layer="91"/>
<wire x1="129.54" y1="73.66" x2="127" y2="73.66" width="0.1524" layer="91"/>
<junction x="129.54" y="73.66"/>
<label x="127" y="73.66" size="1.778" layer="95" rot="R180" xref="yes"/>
</segment>
</net>
<net name="TEMPERATURE" class="0">
<segment>
<pinref part="MCU1" gate="G$1" pin="A6"/>
<wire x1="53.34" y1="154.94" x2="78.74" y2="154.94" width="0.1524" layer="91"/>
<label x="55.88" y="154.94" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="R3" gate="G$1" pin="1"/>
<wire x1="40.64" y1="53.34" x2="40.64" y2="50.8" width="0.1524" layer="91"/>
<wire x1="40.64" y1="50.8" x2="50.8" y2="50.8" width="0.1524" layer="91"/>
<junction x="40.64" y="50.8"/>
<label x="55.88" y="50.8" size="1.778" layer="95" xref="yes"/>
<pinref part="R4" gate="G$1" pin="E"/>
<wire x1="50.8" y1="50.8" x2="55.88" y2="50.8" width="0.1524" layer="91"/>
<junction x="50.8" y="50.8"/>
<wire x1="40.64" y1="50.8" x2="40.64" y2="48.26" width="0.1524" layer="91"/>
<pinref part="JST10" gate="G$1" pin="P$3"/>
<wire x1="40.64" y1="48.26" x2="33.02" y2="48.26" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$2" class="0">
<segment>
<pinref part="JST8" gate="G$1" pin="P$2"/>
<pinref part="R2" gate="G$1" pin="2"/>
<wire x1="5.08" y1="96.52" x2="5.08" y2="93.98" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$4" class="0">
<segment>
<pinref part="JST7" gate="G$1" pin="P$2"/>
<pinref part="R1" gate="G$1" pin="2"/>
<wire x1="43.18" y1="96.52" x2="43.18" y2="93.98" width="0.1524" layer="91"/>
</segment>
</net>
<net name="LED_RECEIVE" class="0">
<segment>
<pinref part="JST7" gate="G$1" pin="P$1"/>
<label x="35.56" y="93.98" size="1.778" layer="95" rot="R180" xref="yes"/>
<wire x1="35.56" y1="93.98" x2="40.64" y2="93.98" width="0.1524" layer="91"/>
<wire x1="40.64" y1="93.98" x2="40.64" y2="96.52" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="MCU1" gate="G$1" pin="D11"/>
<wire x1="22.86" y1="134.62" x2="-7.62" y2="134.62" width="0.1524" layer="91"/>
<label x="-7.62" y="134.62" size="1.778" layer="95"/>
</segment>
</net>
<net name="LED_POWER" class="0">
<segment>
<pinref part="JST8" gate="G$1" pin="P$1"/>
<label x="-2.54" y="93.98" size="1.778" layer="95" rot="R180" xref="yes"/>
<wire x1="-2.54" y1="93.98" x2="2.54" y2="93.98" width="0.1524" layer="91"/>
<wire x1="2.54" y1="93.98" x2="2.54" y2="96.52" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="MCU1" gate="G$1" pin="D12"/>
<wire x1="22.86" y1="132.08" x2="-7.62" y2="132.08" width="0.1524" layer="91"/>
<label x="-7.62" y="132.08" size="1.778" layer="95"/>
</segment>
</net>
<net name="N$3" class="0">
<segment>
<pinref part="IC1" gate="G$1" pin="A"/>
<wire x1="119.38" y1="111.76" x2="134.62" y2="111.76" width="0.1524" layer="91"/>
<pinref part="JST9" gate="G$1" pin="P$1"/>
<wire x1="134.62" y1="111.76" x2="134.62" y2="116.84" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$5" class="0">
<segment>
<pinref part="R4" gate="G$1" pin="S"/>
<pinref part="JST10" gate="G$1" pin="P$1"/>
<wire x1="43.18" y1="43.18" x2="33.02" y2="43.18" width="0.1524" layer="91"/>
<wire x1="43.18" y1="43.18" x2="43.18" y2="45.72" width="0.1524" layer="91"/>
<wire x1="43.18" y1="45.72" x2="45.72" y2="45.72" width="0.1524" layer="91"/>
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
</compatibility>
</eagle>
