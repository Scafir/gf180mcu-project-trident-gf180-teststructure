v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
T {dummy} 560 -180 0 0 0.4 0.4 {}
N 120 -90 320 -90 {lab=V_S}
N 120 -150 320 -150 {lab=V_S}
N 220 -150 220 -90 {lab=V_S}
N 220 -180 220 -150 {lab=V_S}
N 0 -180 220 -180 {lab=V_S}
N 120 -120 320 -120 {lab=V_W}
N 240 -120 240 -0 {lab=V_W}
N 0 0 240 -0 {lab=V_W}
N 0 -120 80 -120 {lab=V_G1}
N 360 -120 440 -120 {lab=V_G2}
N -0 -280 60 -280 {lab=guard}
N 320 -150 600 -150 {lab=V_S}
N 560 -150 560 -120 {lab=V_S}
N 600 -120 640 -120 {lab=V_W}
N 640 -120 640 -0 {lab=V_W}
N 240 0 640 0 {lab=V_W}
N 320 -90 600 -90 {lab=V_S}
C {iopin.sym} 0 -280 2 0 {name=p1 lab=guard}
C {iopin.sym} 0 0 2 0 {name=p2 lab=V_W}
C {iopin.sym} 0 -180 2 0 {name=p3 lab=V_S}
C {iopin.sym} 0 -120 2 0 {name=p4 lab=V_G1}
C {iopin.sym} 440 -120 0 0 {name=p5 lab=V_G2}
C {symbols/pfet_03v3.sym} 100 -120 0 0 {name=M1
L=1u
W=10u
nf=1
m=4
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=pfet_03v3
spiceprefix=X
}
C {symbols/pfet_03v3.sym} 340 -120 0 1 {name=M2
L=1u
W=10u
nf=1
m=4
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=pfet_03v3
spiceprefix=X
}
C {noconn.sym} 60 -280 2 0 {name=l1}
C {symbols/pfet_03v3.sym} 580 -120 0 0 {name=M3
L=1u
W=10u
nf=1
m=2
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=pfet_03v3
spiceprefix=X
}
