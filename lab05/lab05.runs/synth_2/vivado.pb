
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2$
create_project: 2default:default2
00:00:042default:default2
00:00:062default:default2
455.1482default:default2
159.9692default:defaultZ17-268h px� 
�
Command: %s
1870*	planAhead2�
�read_checkpoint -auto_incremental -incremental C:/Users/vivat/Desktop/cp-eng-hwsynlab2023/lab05/lab05.srcs/utils_1/imports/synth_2/nano_03_system.dcp2default:defaultZ12-2866h px� 
�
;Read reference checkpoint from %s for incremental synthesis3154*	planAhead2z
fC:/Users/vivat/Desktop/cp-eng-hwsynlab2023/lab05/lab05.srcs/utils_1/imports/synth_2/nano_03_system.dcp2default:defaultZ12-5825h px� 
T
-Please ensure there are no constraint changes3725*	planAheadZ12-7989h px� 
{
Command: %s
53*	vivadotcl2J
6synth_design -top nano_03_system -part xc7a35tcpg236-12default:defaultZ4-113h px� 
:
Starting synth_design
149*	vivadotclZ4-321h px� 
�
@Attempting to get a license for feature '%s' and/or device '%s'
308*common2
	Synthesis2default:default2
xc7a35t2default:defaultZ17-347h px� 
�
0Got license for feature '%s' and/or device '%s'
310*common2
	Synthesis2default:default2
xc7a35t2default:defaultZ17-349h px� 
V
Loading part %s157*device2#
xc7a35tcpg236-12default:defaultZ21-403h px� 

VNo compile time benefit to using incremental synthesis; A full resynthesis will be run2353*designutilsZ20-5440h px� 
�
�Flow is switching to default flow due to incremental criteria not met. If you would like to alter this behaviour and have the flow terminate instead, please set the following parameter config_implementation {autoIncr.Synth.RejectBehavior Terminate}2229*designutilsZ20-4379h px� 
�
HMultithreading enabled for synth_design using a maximum of %s processes.4828*oasys2
22default:defaultZ8-7079h px� 
a
?Launching helper process for spawning children vivado processes4827*oasysZ8-7078h px� 
_
#Helper process launched with PID %s4824*oasys2
13562default:defaultZ8-7075h px� 
�
5undeclared symbol '%s', assumed default net type '%s'7502*oasys2
data2default:default2
wire2default:default2p
ZC:/Users/vivat/Desktop/cp-eng-hwsynlab2023/lab05/lab05.srcs/sources_1/new/nano_03_system.v2default:default2
842default:default8@Z8-11241h px� 
�
%s*synth2�
yStarting RTL Elaboration : Time (s): cpu = 00:00:04 ; elapsed = 00:00:05 . Memory (MB): peak = 1273.109 ; gain = 410.773
2default:defaulth px� 
�
synthesizing module '%s'%s4497*oasys2"
nano_03_system2default:default2
 2default:default2p
ZC:/Users/vivat/Desktop/cp-eng-hwsynlab2023/lab05/lab05.srcs/sources_1/new/nano_03_system.v2default:default2
32default:default8@Z8-6157h px� 
�
synthesizing module '%s'%s4497*oasys2
clk_div2default:default2
 2default:default2�
�C:/Users/vivat/Desktop/cp-eng-hwsynlab2023/lab05/lab05.srcs/sources_1/imports/hwlab/lab04/lab04.srcs/sources_1/imports/new/clk_div.v2default:default2
32default:default8@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
clk_div2default:default2
 2default:default2
02default:default2
12default:default2�
�C:/Users/vivat/Desktop/cp-eng-hwsynlab2023/lab05/lab05.srcs/sources_1/imports/hwlab/lab04/lab04.srcs/sources_1/imports/new/clk_div.v2default:default2
32default:default8@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2
push_button2default:default2
 2default:default2�
�C:/Users/vivat/Desktop/cp-eng-hwsynlab2023/lab05/lab05.srcs/sources_1/imports/hwlab/lab04/lab04.srcs/sources_1/new/push_button.v2default:default2
32default:default8@Z8-6157h px� 
�
synthesizing module '%s'%s4497*oasys2
	debouncer2default:default2
 2default:default2�
�C:/Users/vivat/Desktop/cp-eng-hwsynlab2023/lab05/lab05.srcs/sources_1/imports/hwlab/lab04/lab04.srcs/sources_1/imports/new/debouncer.v2default:default2
32default:default8@Z8-6157h px� 
h
%s
*synth2P
<	Parameter DEBOUNCE_TIME bound to: 2500000 - type: integer 
2default:defaulth p
x
� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
	debouncer2default:default2
 2default:default2
02default:default2
12default:default2�
�C:/Users/vivat/Desktop/cp-eng-hwsynlab2023/lab05/lab05.srcs/sources_1/imports/hwlab/lab04/lab04.srcs/sources_1/imports/new/debouncer.v2default:default2
32default:default8@Z8-6155h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
push_button2default:default2
 2default:default2
02default:default2
12default:default2�
�C:/Users/vivat/Desktop/cp-eng-hwsynlab2023/lab05/lab05.srcs/sources_1/imports/hwlab/lab04/lab04.srcs/sources_1/new/push_button.v2default:default2
32default:default8@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2

quad_7_seg2default:default2
 2default:default2�
�C:/Users/vivat/Desktop/cp-eng-hwsynlab2023/lab05/lab05.srcs/sources_1/imports/hwlab/lab04/lab04.srcs/sources_1/imports/new/quad_7_seg.v2default:default2
32default:default8@Z8-6157h px� 
�
synthesizing module '%s'%s4497*oasys2 
hex_to_7_seg2default:default2
 2default:default2�
�C:/Users/vivat/Desktop/cp-eng-hwsynlab2023/lab05/lab05.srcs/sources_1/imports/hwlab/lab04/lab04.srcs/sources_1/imports/new/hex_to_7_seg.v2default:default2
32default:default8@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2 
hex_to_7_seg2default:default2
 2default:default2
02default:default2
12default:default2�
�C:/Users/vivat/Desktop/cp-eng-hwsynlab2023/lab05/lab05.srcs/sources_1/imports/hwlab/lab04/lab04.srcs/sources_1/imports/new/hex_to_7_seg.v2default:default2
32default:default8@Z8-6155h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2

quad_7_seg2default:default2
 2default:default2
02default:default2
12default:default2�
�C:/Users/vivat/Desktop/cp-eng-hwsynlab2023/lab05/lab05.srcs/sources_1/imports/hwlab/lab04/lab04.srcs/sources_1/imports/new/quad_7_seg.v2default:default2
32default:default8@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2
nanocpu2default:default2
 2default:default2~
hC:/Users/vivat/Desktop/cp-eng-hwsynlab2023/lab05/lab05.srcs/sources_1/imports/hwlab/lab05_srcs/nanocpu.v2default:default2
92default:default8@Z8-6157h px� 
�
synthesizing module '%s'%s4497*oasys2
adder2default:default2
 2default:default2|
fC:/Users/vivat/Desktop/cp-eng-hwsynlab2023/lab05/lab05.srcs/sources_1/imports/hwlab/lab05_srcs/adder.v2default:default2
92default:default8@Z8-6157h px� 
[
%s
*synth2C
/	Parameter WIDTH bound to: 30 - type: integer 
2default:defaulth p
x
� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
adder2default:default2
 2default:default2
02default:default2
12default:default2|
fC:/Users/vivat/Desktop/cp-eng-hwsynlab2023/lab05/lab05.srcs/sources_1/imports/hwlab/lab05_srcs/adder.v2default:default2
92default:default8@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2
mux2_12default:default2
 2default:default2}
gC:/Users/vivat/Desktop/cp-eng-hwsynlab2023/lab05/lab05.srcs/sources_1/imports/hwlab/lab05_srcs/mux2_1.v2default:default2
92default:default8@Z8-6157h px� 
[
%s
*synth2C
/	Parameter WIDTH bound to: 30 - type: integer 
2default:defaulth p
x
� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
mux2_12default:default2
 2default:default2
02default:default2
12default:default2}
gC:/Users/vivat/Desktop/cp-eng-hwsynlab2023/lab05/lab05.srcs/sources_1/imports/hwlab/lab05_srcs/mux2_1.v2default:default2
92default:default8@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2
extender2default:default2
 2default:default2
iC:/Users/vivat/Desktop/cp-eng-hwsynlab2023/lab05/lab05.srcs/sources_1/imports/hwlab/lab05_srcs/extender.v2default:default2
102default:default8@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
extender2default:default2
 2default:default2
02default:default2
12default:default2
iC:/Users/vivat/Desktop/cp-eng-hwsynlab2023/lab05/lab05.srcs/sources_1/imports/hwlab/lab05_srcs/extender.v2default:default2
102default:default8@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2*
mux2_1__parameterized02default:default2
 2default:default2}
gC:/Users/vivat/Desktop/cp-eng-hwsynlab2023/lab05/lab05.srcs/sources_1/imports/hwlab/lab05_srcs/mux2_1.v2default:default2
92default:default8@Z8-6157h px� 
Z
%s
*synth2B
.	Parameter WIDTH bound to: 5 - type: integer 
2default:defaulth p
x
� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2*
mux2_1__parameterized02default:default2
 2default:default2
02default:default2
12default:default2}
gC:/Users/vivat/Desktop/cp-eng-hwsynlab2023/lab05/lab05.srcs/sources_1/imports/hwlab/lab05_srcs/mux2_1.v2default:default2
92default:default8@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2
regfile2default:default2
 2default:default2~
hC:/Users/vivat/Desktop/cp-eng-hwsynlab2023/lab05/lab05.srcs/sources_1/imports/hwlab/lab05_srcs/regfile.v2default:default2
92default:default8@Z8-6157h px� 
�
'system function call '%s' not supported639*oasys2
time2default:default2~
hC:/Users/vivat/Desktop/cp-eng-hwsynlab2023/lab05/lab05.srcs/sources_1/imports/hwlab/lab05_srcs/regfile.v2default:default2
322default:default8@Z8-639h px� 
�
display: %s251*oasys2L
80 - A(REG[x]) -  xxxxxxxx (x), B(REG[x]) -  xxxxxxxx (x)2default:default2~
hC:/Users/vivat/Desktop/cp-eng-hwsynlab2023/lab05/lab05.srcs/sources_1/imports/hwlab/lab05_srcs/regfile.v2default:default2
322default:default8@Z8-251h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
regfile2default:default2
 2default:default2
02default:default2
12default:default2~
hC:/Users/vivat/Desktop/cp-eng-hwsynlab2023/lab05/lab05.srcs/sources_1/imports/hwlab/lab05_srcs/regfile.v2default:default2
92default:default8@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2*
mux2_1__parameterized12default:default2
 2default:default2}
gC:/Users/vivat/Desktop/cp-eng-hwsynlab2023/lab05/lab05.srcs/sources_1/imports/hwlab/lab05_srcs/mux2_1.v2default:default2
92default:default8@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2*
mux2_1__parameterized12default:default2
 2default:default2
02default:default2
12default:default2}
gC:/Users/vivat/Desktop/cp-eng-hwsynlab2023/lab05/lab05.srcs/sources_1/imports/hwlab/lab05_srcs/mux2_1.v2default:default2
92default:default8@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2
alu2default:default2
 2default:default2z
dC:/Users/vivat/Desktop/cp-eng-hwsynlab2023/lab05/lab05.srcs/sources_1/imports/hwlab/lab05_srcs/alu.v2default:default2
102default:default8@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
alu2default:default2
 2default:default2
02default:default2
12default:default2z
dC:/Users/vivat/Desktop/cp-eng-hwsynlab2023/lab05/lab05.srcs/sources_1/imports/hwlab/lab05_srcs/alu.v2default:default2
102default:default8@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2
control2default:default2
 2default:default2~
hC:/Users/vivat/Desktop/cp-eng-hwsynlab2023/lab05/lab05.srcs/sources_1/imports/hwlab/lab05_srcs/control.v2default:default2
102default:default8@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
control2default:default2
 2default:default2
02default:default2
12default:default2~
hC:/Users/vivat/Desktop/cp-eng-hwsynlab2023/lab05/lab05.srcs/sources_1/imports/hwlab/lab05_srcs/control.v2default:default2
102default:default8@Z8-6155h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
nanocpu2default:default2
 2default:default2
02default:default2
12default:default2~
hC:/Users/vivat/Desktop/cp-eng-hwsynlab2023/lab05/lab05.srcs/sources_1/imports/hwlab/lab05_srcs/nanocpu.v2default:default2
92default:default8@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2
rom2default:default2
 2default:default2z
dC:/Users/vivat/Desktop/cp-eng-hwsynlab2023/lab05/lab05.srcs/sources_1/imports/hwlab/lab05_srcs/rom.v2default:default2
92default:default8@Z8-6157h px� 
h
%s
*synth2P
<	Parameter PROG_FILE bound to: lab05_03.mem - type: string 
2default:defaulth p
x
� 
`
%s
*synth2H
4	Parameter ADDR_WIDTH bound to: 16 - type: integer 
2default:defaulth p
x
� 
�
,$readmem data file '%s' is read successfully3426*oasys2 
lab05_03.mem2default:default2z
dC:/Users/vivat/Desktop/cp-eng-hwsynlab2023/lab05/lab05.srcs/sources_1/imports/hwlab/lab05_srcs/rom.v2default:default2
222default:default8@Z8-3876h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
rom2default:default2
 2default:default2
02default:default2
12default:default2z
dC:/Users/vivat/Desktop/cp-eng-hwsynlab2023/lab05/lab05.srcs/sources_1/imports/hwlab/lab05_srcs/rom.v2default:default2
92default:default8@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2$
io_mapped_memory2default:default2
 2default:default2r
\C:/Users/vivat/Desktop/cp-eng-hwsynlab2023/lab05/lab05.srcs/sources_1/new/io_mapped_memory.v2default:default2
32default:default8@Z8-6157h px� 
j
%s
*synth2R
>	Parameter DATA_FILE bound to: empty32x16.mem - type: string 
2default:defaulth p
x
� 
`
%s
*synth2H
4	Parameter DATA_WIDTH bound to: 32 - type: integer 
2default:defaulth p
x
� 
`
%s
*synth2H
4	Parameter ADDR_WIDTH bound to: 16 - type: integer 
2default:defaulth p
x
� 
�
,$readmem data file '%s' is read successfully3426*oasys2"
empty32x16.mem2default:default2r
\C:/Users/vivat/Desktop/cp-eng-hwsynlab2023/lab05/lab05.srcs/sources_1/new/io_mapped_memory.v2default:default2
252default:default8@Z8-3876h px� 
�
8referenced signal '%s' should be on the sensitivity list567*oasys2
io_in2default:default2r
\C:/Users/vivat/Desktop/cp-eng-hwsynlab2023/lab05/lab05.srcs/sources_1/new/io_mapped_memory.v2default:default2
282default:default8@Z8-567h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2$
io_mapped_memory2default:default2
 2default:default2
02default:default2
12default:default2r
\C:/Users/vivat/Desktop/cp-eng-hwsynlab2023/lab05/lab05.srcs/sources_1/new/io_mapped_memory.v2default:default2
32default:default8@Z8-6155h px� 
�
Pwidth (%s) of port connection '%s' does not match port width (%s) of module '%s'689*oasys2
12default:default2
io_out2default:default2
162default:default2$
io_mapped_memory2default:default2p
ZC:/Users/vivat/Desktop/cp-eng-hwsynlab2023/lab05/lab05.srcs/sources_1/new/nano_03_system.v2default:default2
892default:default8@Z8-689h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2"
nano_03_system2default:default2
 2default:default2
02default:default2
12default:default2p
ZC:/Users/vivat/Desktop/cp-eng-hwsynlab2023/lab05/lab05.srcs/sources_1/new/nano_03_system.v2default:default2
32default:default8@Z8-6155h px� 
�
+Unused sequential element %s was removed. 
4326*oasys2

z_flag_reg2default:default2~
hC:/Users/vivat/Desktop/cp-eng-hwsynlab2023/lab05/lab05.srcs/sources_1/imports/hwlab/lab05_srcs/nanocpu.v2default:default2
1172default:default8@Z8-6014h px� 
�
0Net %s in module/entity %s does not have driver.3422*oasys2
	digits[3]2default:default2"
nano_03_system2default:default2p
ZC:/Users/vivat/Desktop/cp-eng-hwsynlab2023/lab05/lab05.srcs/sources_1/new/nano_03_system.v2default:default2
302default:default8@Z8-3848h px� 
�
0Net %s in module/entity %s does not have driver.3422*oasys2
	digits[2]2default:default2"
nano_03_system2default:default2p
ZC:/Users/vivat/Desktop/cp-eng-hwsynlab2023/lab05/lab05.srcs/sources_1/new/nano_03_system.v2default:default2
302default:default8@Z8-3848h px� 
�
0Net %s in module/entity %s does not have driver.3422*oasys2
	digits[1]2default:default2"
nano_03_system2default:default2p
ZC:/Users/vivat/Desktop/cp-eng-hwsynlab2023/lab05/lab05.srcs/sources_1/new/nano_03_system.v2default:default2
302default:default8@Z8-3848h px� 
�
0Net %s in module/entity %s does not have driver.3422*oasys2
	digits[0]2default:default2"
nano_03_system2default:default2p
ZC:/Users/vivat/Desktop/cp-eng-hwsynlab2023/lab05/lab05.srcs/sources_1/new/nano_03_system.v2default:default2
302default:default8@Z8-3848h px� 
�
%s*synth2�
yFinished RTL Elaboration : Time (s): cpu = 00:00:06 ; elapsed = 00:00:07 . Memory (MB): peak = 1402.738 ; gain = 540.402
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
M
%s
*synth25
!Start Handling Custom Attributes
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished Handling Custom Attributes : Time (s): cpu = 00:00:06 ; elapsed = 00:00:08 . Memory (MB): peak = 1402.738 ; gain = 540.402
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished RTL Optimization Phase 1 : Time (s): cpu = 00:00:06 ; elapsed = 00:00:08 . Memory (MB): peak = 1402.738 ; gain = 540.402
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2.
Netlist sorting complete. 2default:default2
00:00:002default:default2 
00:00:00.0152default:default2
1402.7382default:default2
0.0002default:defaultZ17-268h px� 
K
)Preparing netlist for logic optimization
349*projectZ1-570h px� 
>

Processing XDC Constraints
244*projectZ1-262h px� 
=
Initializing timing engine
348*projectZ1-569h px� 
�
Parsing XDC File [%s]
179*designutils2�
mC:/Users/vivat/Desktop/cp-eng-hwsynlab2023/lab05/lab05.srcs/constrs_1/imports/hwlab/Basys-3-Master-Custom.xdc2default:default8Z20-179h px� 
�
Finished Parsing XDC File [%s]
178*designutils2�
mC:/Users/vivat/Desktop/cp-eng-hwsynlab2023/lab05/lab05.srcs/constrs_1/imports/hwlab/Basys-3-Master-Custom.xdc2default:default8Z20-178h px� 
�
�Implementation specific constraints were found while reading constraint file [%s]. These constraints will be ignored for synthesis but will be used in implementation. Impacted constraints are listed in the file [%s].
233*project2�
mC:/Users/vivat/Desktop/cp-eng-hwsynlab2023/lab05/lab05.srcs/constrs_1/imports/hwlab/Basys-3-Master-Custom.xdc2default:default24
 .Xil/nano_03_system_propImpl.xdc2default:defaultZ1-236h px� 
H
&Completed Processing XDC Constraints

245*projectZ1-263h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2.
Netlist sorting complete. 2default:default2
00:00:002default:default2
00:00:002default:default2
1478.9692default:default2
0.0002default:defaultZ17-268h px� 
~
!Unisim Transformation Summary:
%s111*project29
%No Unisim elements were transformed.
2default:defaultZ1-111h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common24
 Constraint Validation Runtime : 2default:default2
00:00:002default:default2 
00:00:00.0032default:default2
1478.9692default:default2
0.0002default:defaultZ17-268h px� 

VNo compile time benefit to using incremental synthesis; A full resynthesis will be run2353*designutilsZ20-5440h px� 
�
�Flow is switching to default flow due to incremental criteria not met. If you would like to alter this behaviour and have the flow terminate instead, please set the following parameter config_implementation {autoIncr.Synth.RejectBehavior Terminate}2229*designutilsZ20-4379h px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
Finished Constraint Validation : Time (s): cpu = 00:00:11 ; elapsed = 00:00:15 . Memory (MB): peak = 1478.969 ; gain = 616.633
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
V
%s
*synth2>
*Start Loading Part and Timing Information
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
J
%s
*synth22
Loading part: xc7a35tcpg236-1
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished Loading Part and Timing Information : Time (s): cpu = 00:00:11 ; elapsed = 00:00:15 . Memory (MB): peak = 1478.969 ; gain = 616.633
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
Z
%s
*synth2B
.Start Applying 'set_property' XDC Constraints
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished applying 'set_property' XDC Constraints : Time (s): cpu = 00:00:11 ; elapsed = 00:00:15 . Memory (MB): peak = 1478.969 ; gain = 616.633
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished RTL Optimization Phase 2 : Time (s): cpu = 00:00:12 ; elapsed = 00:00:15 . Memory (MB): peak = 1478.969 ; gain = 616.633
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
L
%s
*synth24
 Start RTL Component Statistics 
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
K
%s
*synth23
Detailed RTL Component Info : 
2default:defaulth p
x
� 
:
%s
*synth2"
+---Adders : 
2default:defaulth p
x
� 
X
%s
*synth2@
,	   3 Input   33 Bit       Adders := 2     
2default:defaulth p
x
� 
X
%s
*synth2@
,	   2 Input   32 Bit       Adders := 3     
2default:defaulth p
x
� 
X
%s
*synth2@
,	   3 Input   31 Bit       Adders := 1     
2default:defaulth p
x
� 
X
%s
*synth2@
,	   2 Input    2 Bit       Adders := 1     
2default:defaulth p
x
� 
8
%s
*synth2 
+---XORs : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input     32 Bit         XORs := 1     
2default:defaulth p
x
� 
=
%s
*synth2%
+---Registers : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	               32 Bit    Registers := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	               16 Bit    Registers := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	                2 Bit    Registers := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	                1 Bit    Registers := 5     
2default:defaulth p
x
� 
8
%s
*synth2 
+---RAMs : 
2default:defaulth p
x
� 
l
%s
*synth2T
@	            1024K Bit	(32769 X 32 bit)          RAMs := 1     
2default:defaulth p
x
� 
i
%s
*synth2Q
=	             1024 Bit	(32 X 32 bit)          RAMs := 1     
2default:defaulth p
x
� 
9
%s
*synth2!
+---Muxes : 
2default:defaulth p
x
� 
X
%s
*synth2@
,	   3 Input   32 Bit        Muxes := 1     
2default:defaulth p
x
� 
X
%s
*synth2@
,	   2 Input   32 Bit        Muxes := 5     
2default:defaulth p
x
� 
X
%s
*synth2@
,	   4 Input   32 Bit        Muxes := 1     
2default:defaulth p
x
� 
X
%s
*synth2@
,	   2 Input   30 Bit        Muxes := 2     
2default:defaulth p
x
� 
X
%s
*synth2@
,	   6 Input   16 Bit        Muxes := 1     
2default:defaulth p
x
� 
X
%s
*synth2@
,	   2 Input    5 Bit        Muxes := 1     
2default:defaulth p
x
� 
X
%s
*synth2@
,	   4 Input    4 Bit        Muxes := 1     
2default:defaulth p
x
� 
X
%s
*synth2@
,	   2 Input    4 Bit        Muxes := 4     
2default:defaulth p
x
� 
X
%s
*synth2@
,	   5 Input    3 Bit        Muxes := 1     
2default:defaulth p
x
� 
X
%s
*synth2@
,	   5 Input    2 Bit        Muxes := 1     
2default:defaulth p
x
� 
X
%s
*synth2@
,	   8 Input    1 Bit        Muxes := 1     
2default:defaulth p
x
� 
X
%s
*synth2@
,	   2 Input    1 Bit        Muxes := 8     
2default:defaulth p
x
� 
X
%s
*synth2@
,	   4 Input    1 Bit        Muxes := 1     
2default:defaulth p
x
� 
X
%s
*synth2@
,	   5 Input    1 Bit        Muxes := 3     
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
O
%s
*synth27
#Finished RTL Component Statistics 
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
H
%s
*synth20
Start Part Resource Summary
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s
*synth2j
VPart Resources:
DSPs: 90 (col length:60)
BRAMs: 100 (col length: RAMB18 60 RAMB36 30)
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
K
%s
*synth23
Finished Part Resource Summary
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
W
%s
*synth2?
+Start Cross Boundary and Area Optimization
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
H
&Parallel synthesis criteria is not met4829*oasysZ8-7080h px� 
�
+design %s has port %s driven by constant %s3447*oasys2"
nano_03_system2default:default2
dp2default:default2
12default:defaultZ8-3917h px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished Cross Boundary and Area Optimization : Time (s): cpu = 00:00:16 ; elapsed = 00:00:21 . Memory (MB): peak = 1478.969 ; gain = 616.633
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�---------------------------------------------------------------------------------
Start ROM, RAM, DSP, Shift Register and Retiming Reporting
2default:defaulth px� 
~
%s*synth2f
R---------------------------------------------------------------------------------
2default:defaulth px� 
M
%s*synth25
!
ROM: Preliminary Mapping Report
2default:defaulth px� 
l
%s*synth2T
@+---------------+------------+---------------+----------------+
2default:defaulth px� 
m
%s*synth2U
A|Module Name    | RTL Object | Depth x Width | Implemented As | 
2default:defaulth px� 
l
%s*synth2T
@+---------------+------------+---------------+----------------+
2default:defaulth px� 
m
%s*synth2U
A|rom            | mem        | 32x32         | LUT            | 
2default:defaulth px� 
m
%s*synth2U
A|nano_03_system | p_0_out    | 32x32         | LUT            | 
2default:defaulth px� 
m
%s*synth2U
A+---------------+------------+---------------+----------------+

2default:defaulth px� 
j
%s*synth2R
>
Distributed RAM: Preliminary Mapping Report (see note below)
2default:defaulth px� 
�
%s*synth2�
s+---------------+---------------------------+-----------+----------------------+---------------------------------+
2default:defaulth px� 
�
%s*synth2�
t|Module Name    | RTL Object                | Inference | Size (Depth x Width) | Primitives                      | 
2default:defaulth px� 
�
%s*synth2�
s+---------------+---------------------------+-----------+----------------------+---------------------------------+
2default:defaulth px� 
�
%s*synth2�
t|nano_03_system | main_cpu/REGFILE/regs_reg | Implied   | 32 x 32              | RAM32M x 12                     | 
2default:defaulth px� 
�
%s*synth2�
t|nano_03_system | user_memory/mem_reg       | Implied   | 64 K x 32            | RAM16X1S x 32 RAM256X1S x 4096  | 
2default:defaulth px� 
�
%s*synth2�
t+---------------+---------------------------+-----------+----------------------+---------------------------------+

2default:defaulth px� 
�
%s*synth2�
�Note: The table above is a preliminary report that shows the Distributed RAMs at the current stage of the synthesis flow. Some Distributed RAMs may be reimplemented as non Distributed RAM primitives later in the synthesis flow. Multiple instantiated RAMs are reported only once.
2default:defaulth px� 
�
%s*synth2�
�---------------------------------------------------------------------------------
Finished ROM, RAM, DSP, Shift Register and Retiming Reporting
2default:defaulth px� 
~
%s*synth2f
R---------------------------------------------------------------------------------
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
R
%s
*synth2:
&Start Applying XDC Timing Constraints
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished Applying XDC Timing Constraints : Time (s): cpu = 00:00:21 ; elapsed = 00:00:26 . Memory (MB): peak = 1478.969 ; gain = 616.633
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
F
%s
*synth2.
Start Timing Optimization
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
}Finished Timing Optimization : Time (s): cpu = 00:00:21 ; elapsed = 00:00:26 . Memory (MB): peak = 1478.969 ; gain = 616.633
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s
*synth2�
�---------------------------------------------------------------------------------
Start ROM, RAM, DSP, Shift Register and Retiming Reporting
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
S
%s
*synth2;
'
Distributed RAM: Final Mapping Report
2default:defaulth p
x
� 
�
%s
*synth2�
s+---------------+---------------------------+-----------+----------------------+---------------------------------+
2default:defaulth p
x
� 
�
%s
*synth2�
t|Module Name    | RTL Object                | Inference | Size (Depth x Width) | Primitives                      | 
2default:defaulth p
x
� 
�
%s
*synth2�
s+---------------+---------------------------+-----------+----------------------+---------------------------------+
2default:defaulth p
x
� 
�
%s
*synth2�
t|nano_03_system | main_cpu/REGFILE/regs_reg | Implied   | 32 x 32              | RAM32M x 12                     | 
2default:defaulth p
x
� 
�
%s
*synth2�
t|nano_03_system | user_memory/mem_reg       | Implied   | 64 K x 32            | RAM16X1S x 32 RAM256X1S x 4096  | 
2default:defaulth p
x
� 
�
%s
*synth2�
t+---------------+---------------------------+-----------+----------------------+---------------------------------+

2default:defaulth p
x
� 
�
%s
*synth2�
�---------------------------------------------------------------------------------
Finished ROM, RAM, DSP, Shift Register and Retiming Reporting
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
E
%s
*synth2-
Start Technology Mapping
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
|Finished Technology Mapping : Time (s): cpu = 00:00:21 ; elapsed = 00:00:27 . Memory (MB): peak = 1478.969 ; gain = 616.633
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
?
%s
*synth2'
Start IO Insertion
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
Q
%s
*synth29
%Start Flattening Before IO Insertion
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
T
%s
*synth2<
(Finished Flattening Before IO Insertion
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
H
%s
*synth20
Start Final Netlist Cleanup
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
K
%s
*synth23
Finished Final Netlist Cleanup
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
vFinished IO Insertion : Time (s): cpu = 00:00:25 ; elapsed = 00:00:31 . Memory (MB): peak = 1478.969 ; gain = 616.633
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
O
%s
*synth27
#Start Renaming Generated Instances
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished Renaming Generated Instances : Time (s): cpu = 00:00:25 ; elapsed = 00:00:31 . Memory (MB): peak = 1478.969 ; gain = 616.633
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
L
%s
*synth24
 Start Rebuilding User Hierarchy
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished Rebuilding User Hierarchy : Time (s): cpu = 00:00:25 ; elapsed = 00:00:31 . Memory (MB): peak = 1478.969 ; gain = 616.633
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
K
%s
*synth23
Start Renaming Generated Ports
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished Renaming Generated Ports : Time (s): cpu = 00:00:25 ; elapsed = 00:00:31 . Memory (MB): peak = 1478.969 ; gain = 616.633
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
M
%s
*synth25
!Start Handling Custom Attributes
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished Handling Custom Attributes : Time (s): cpu = 00:00:25 ; elapsed = 00:00:31 . Memory (MB): peak = 1478.969 ; gain = 616.633
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
J
%s
*synth22
Start Renaming Generated Nets
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished Renaming Generated Nets : Time (s): cpu = 00:00:25 ; elapsed = 00:00:31 . Memory (MB): peak = 1478.969 ; gain = 616.633
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
K
%s
*synth23
Start Writing Synthesis Report
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
A
%s
*synth2)

Report BlackBoxes: 
2default:defaulth p
x
� 
J
%s
*synth22
+-+--------------+----------+
2default:defaulth p
x
� 
J
%s
*synth22
| |BlackBox name |Instances |
2default:defaulth p
x
� 
J
%s
*synth22
+-+--------------+----------+
2default:defaulth p
x
� 
J
%s
*synth22
+-+--------------+----------+
2default:defaulth p
x
� 
A
%s*synth2)

Report Cell Usage: 
2default:defaulth px� 
G
%s*synth2/
+------+----------+------+
2default:defaulth px� 
G
%s*synth2/
|      |Cell      |Count |
2default:defaulth px� 
G
%s*synth2/
+------+----------+------+
2default:defaulth px� 
G
%s*synth2/
|1     |BUFG      |     2|
2default:defaulth px� 
G
%s*synth2/
|2     |CARRY4    |    22|
2default:defaulth px� 
G
%s*synth2/
|3     |LUT1      |     5|
2default:defaulth px� 
G
%s*synth2/
|4     |LUT2      |    40|
2default:defaulth px� 
G
%s*synth2/
|5     |LUT3      |     4|
2default:defaulth px� 
G
%s*synth2/
|6     |LUT4      |   101|
2default:defaulth px� 
G
%s*synth2/
|7     |LUT5      |    35|
2default:defaulth px� 
G
%s*synth2/
|8     |LUT6      |   220|
2default:defaulth px� 
G
%s*synth2/
|9     |MUXF7     |    18|
2default:defaulth px� 
G
%s*synth2/
|10    |MUXF8     |     3|
2default:defaulth px� 
G
%s*synth2/
|11    |RAM16X1S  |     1|
2default:defaulth px� 
G
%s*synth2/
|12    |RAM256X1S |   128|
2default:defaulth px� 
G
%s*synth2/
|13    |RAM32M    |    10|
2default:defaulth px� 
G
%s*synth2/
|14    |RAM32X1D  |     4|
2default:defaulth px� 
G
%s*synth2/
|15    |FDRE      |    53|
2default:defaulth px� 
G
%s*synth2/
|16    |IBUF      |    14|
2default:defaulth px� 
G
%s*synth2/
|17    |OBUF      |    24|
2default:defaulth px� 
G
%s*synth2/
+------+----------+------+
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished Writing Synthesis Report : Time (s): cpu = 00:00:25 ; elapsed = 00:00:31 . Memory (MB): peak = 1478.969 ; gain = 616.633
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
r
%s
*synth2Z
FSynthesis finished with 0 errors, 0 critical warnings and 2 warnings.
2default:defaulth p
x
� 
�
%s
*synth2�
Synthesis Optimization Runtime : Time (s): cpu = 00:00:18 ; elapsed = 00:00:30 . Memory (MB): peak = 1478.969 ; gain = 540.402
2default:defaulth p
x
� 
�
%s
*synth2�
�Synthesis Optimization Complete : Time (s): cpu = 00:00:25 ; elapsed = 00:00:32 . Memory (MB): peak = 1478.969 ; gain = 616.633
2default:defaulth p
x
� 
B
 Translating synthesized netlist
350*projectZ1-571h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2.
Netlist sorting complete. 2default:default2
00:00:002default:default2 
00:00:00.0132default:default2
1478.9692default:default2
0.0002default:defaultZ17-268h px� 
g
-Analyzing %s Unisim elements for replacement
17*netlist2
1862default:defaultZ29-17h px� 
j
2Unisim Transformation completed in %s CPU seconds
28*netlist2
02default:defaultZ29-28h px� 
K
)Preparing netlist for logic optimization
349*projectZ1-570h px� 
u
)Pushed %s inverter(s) to %s load pin(s).
98*opt2
02default:default2
02default:defaultZ31-138h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2.
Netlist sorting complete. 2default:default2
00:00:002default:default2
00:00:002default:default2
1478.9692default:default2
0.0002default:defaultZ17-268h px� 
�
!Unisim Transformation Summary:
%s111*project2�
�  A total of 143 instances were transformed.
  RAM16X1S => RAM32X1S (RAMS32): 1 instance 
  RAM256X1S => RAM256X1S (MUXF7(x2), MUXF8, RAMS64E(x4)): 128 instances
  RAM32M => RAM32M (RAMD32(x6), RAMS32(x2)): 10 instances
  RAM32X1D => RAM32X1D (RAMD32(x2)): 4 instances
2default:defaultZ1-111h px� 
h
%Synth Design complete | Checksum: %s
562*	vivadotcl2
d2a01e002default:defaultZ4-1430h px� 
U
Releasing license: %s
83*common2
	Synthesis2default:defaultZ17-83h px� 
�
G%s Infos, %s Warnings, %s Critical Warnings and %s Errors encountered.
28*	vivadotcl2
592default:default2
102default:default2
02default:default2
02default:defaultZ4-41h px� 
^
%s completed successfully
29*	vivadotcl2 
synth_design2default:defaultZ4-42h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2"
synth_design: 2default:default2
00:00:282default:default2
00:00:372default:default2
1478.9692default:default2
995.6372default:defaultZ17-268h px� 
�
 The %s '%s' has been generated.
621*common2

checkpoint2default:default2j
VC:/Users/vivat/Desktop/cp-eng-hwsynlab2023/lab05/lab05.runs/synth_2/nano_03_system.dcp2default:defaultZ17-1381h px� 
�
%s4*runtcl2�
rExecuting : report_utilization -file nano_03_system_utilization_synth.rpt -pb nano_03_system_utilization_synth.pb
2default:defaulth px� 
�
Exiting %s at %s...
206*common2
Vivado2default:default2,
Tue Oct  3 14:27:58 20232default:defaultZ17-206h px� 


End Record