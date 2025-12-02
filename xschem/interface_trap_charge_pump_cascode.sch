v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N 20 30 60 30 {lab=#net1}
N 60 -30 60 30 {lab=#net1}
N 20 -30 60 -30 {lab=#net1}
N -160 -80 20 -80 {lab=#net1}
N -160 -80 -160 -60 {lab=#net1}
N -160 -0 -160 20 {lab=GND}
N 20 -0 160 -0 {lab=vo}
N 160 0 160 40 {lab=vo}
N -100 60 -100 80 {lab=GND}
N -100 -0 -20 -0 {lab=vin}
N 20 -80 60 -80 {lab=#net1}
N 60 -80 60 -30 {lab=#net1}
N -20 180 -20 190 {lab=GND}
N 200 150 340 150 {lab=GND}
N 200 90 340 90 {lab=charge}
N -20 120 20 120 {lab=#net2}
N 60 150 60 190 {lab=#net3}
N 160 40 160 80 {lab=vo}
N 60 80 160 80 {lab=vo}
N 60 80 60 90 {lab=vo}
N 140 210 140 220 {lab=GND}
N 140 120 140 150 {lab=#net4}
N 60 120 140 120 {lab=#net4}
C {symbols/pfet_03v3.sym} 0 0 0 0 {name=M1
L=0.28u
W=100u
nf=10
m=1
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=pfet_03v3
spiceprefix=X
}
C {vsource.sym} -160 -30 0 0 {name=V1 value=0 savecurrent=false}
C {gnd.sym} -160 20 0 0 {name=l1 lab=GND}
C {ammeter.sym} 60 220 0 0 {name=Vmeas savecurrent=true spice_ignore=0}
C {gnd.sym} -20 190 0 0 {name=l2 lab=GND}
C {vsource.sym} -100 30 0 0 {name=V2 value="PULSE(0 5 0 100ns 100ns 0.5us 1us)" savecurrent=false}
C {gnd.sym} -100 80 0 0 {name=l3 lab=GND}
C {devices/code_shown.sym} 210 -240 0 0 {name=NGSPICE only_toplevel=true
value="
.ic v(charge)=0
.control
save all
tran 1ns 1000us
plot v(vin)
plot v(vo)
plot i(Vmeas)
plot v(charge)
.endc
"}
C {devices/code_shown.sym} -230 270 0 0 {name=MODELS only_toplevel=true
format="tcleval( @value )"
value="
.include $::180MCU_MODELS/design.ngspice
.lib $::180MCU_MODELS/sm141064.ngspice typical
"}
C {lab_pin.sym} -60 0 1 0 {name=p1 sig_type=std_logic lab=vin}
C {vsource.sym} -20 150 0 0 {name=V3 value=3.5 savecurrent=false}
C {bsource.sym} 200 120 0 0 {name=B1 VAR=I FUNC="\{ I(Vmeas) \}" m=1}
C {gnd.sym} 200 150 0 0 {name=l4 lab=GND}
C {capa.sym} 340 120 0 0 {name=C1
m=1
value=1p
footprint=1206
device="ceramic capacitor"}
C {lab_pin.sym} 280 90 1 0 {name=p2 sig_type=std_logic lab=charge}
C {symbols/pfet_03v3.sym} 40 120 0 0 {name=M2
L=0.28u
W=0.22u
nf=1
m=1
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=pfet_03v3
spiceprefix=X
}
C {gnd.sym} 60 250 0 0 {name=l5 lab=GND}
C {gnd.sym} 140 220 0 0 {name=l6 lab=GND}
C {vsource.sym} 140 180 0 0 {name=V4 value=5 savecurrent=false}
C {lab_pin.sym} 140 0 1 0 {name=p3 sig_type=std_logic lab=vo}
