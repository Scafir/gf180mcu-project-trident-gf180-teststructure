v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N 160 110 180 110 {lab=VSS}
N 180 110 180 140 {lab=VSS}
N 160 140 180 140 {lab=VSS}
N 160 140 160 160 {lab=VSS}
N -20 160 160 160 {lab=VSS}
N 100 110 120 110 {lab=VIN}
N 100 0 100 110 {lab=VIN}
N 160 0 160 80 {lab=VOUT}
N 160 -120 160 -100 {lab=VDD}
N -20 -120 160 -120 {lab=VDD}
N 160 -40 160 -0 {lab=VOUT}
N 160 -70 180 -70 {lab=VDD}
N 180 -100 180 -70 {lab=VDD}
N 160 -100 180 -100 {lab=VDD}
N 100 -70 120 -70 {lab=VIN}
N 100 -70 100 -0 {lab=VIN}
N -30 -0 100 0 {lab=VIN}
N 160 -0 320 0 {lab=VOUT}
C {iopin.sym} -20 -120 2 0 {name=p1 lab=VDD}
C {iopin.sym} -20 160 2 0 {name=p2 lab=VSS}
C {iopin.sym} -30 0 2 0 {name=p3 lab=VIN}
C {iopin.sym} 320 0 0 0 {name=p4 lab=VOUT}
C {symbols/nfet_06v0.sym} 140 110 0 0 {name=M3
L=0.70u
W=0.75u
nf=1
m=1
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=nfet_06v0
spiceprefix=X
}
C {symbols/pfet_06v0.sym} 140 -70 0 0 {name=M1
L=0.7u
W=0.75u
nf=1
m=1
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=pfet_06v0
spiceprefix=X
}
