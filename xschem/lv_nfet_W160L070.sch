v {xschem version=3.4.8RC file_version=1.3
SPDX-FileCopyrightText: 2026 Clyde laforge <clyde.laforge@cern.ch>
SPDX-License-Identifier: CERN-OHL-W-2.0
}
G {}
K {}
V {}
S {}
F {}
E {}
T {------------------------------------------------------------------------
| Copyright CERN 2026                                                  |
|                                                                      |
| This source describes Open Hardware and is licensed under the        |
| CERN-OHL-W v2.                                                       |
| You may redistribute and modify this source and make products using  |
| it under the terms of the CERN-OHL-W v2                              |
| (https://ohwr.org/cern_ohl_w_v2.txt).                                |
|                                                                      |
| This source is distributed WITHOUT ANY EXPRESS OR IMPLIED WARRANTY,  |
| INCLUDING OF MERCHANTABILITY, SATISFACTORY QUALITY AND FITNESS FOR A |
| PARTICULAR PURPOSE. Please see the CERN-OHL-W v2 for applicable      |
| conditions.                                                          |
------------------------------------------------------------------------} -70 230 0 0 0.4 0.4 {font=monospace}
T {--------------------------------------------------------------------------
| Source location:                                                       |
| https://github.com/Scafir/gf180mcu-project-trident-gf180-teststructure |
| As per CERN-OHL-W v2 section 4, should You produce hardware based      |
| on this source, You must where practicable maintain the Source         |
| Location visible on the package of the integrated circuit or other     |
| products you make using this source, as well as in any documentation   |
| you publish including datasheets and manuals.                          |
--------------------------------------------------------------------------} -70 570 0 0 0.4 0.4 {font=monospace}
N -0 200 160 200 {lab=VSS}
N 0 -220 200 -220 {lab=drain}
N 200 -220 200 -130 {lab=drain}
N 0 -100 160 -100 {lab=gate}
N 0 40 200 40 {lab=source}
N 200 -70 200 40 {lab=source}
N 160 200 320 200 {lab=VSS}
N 320 -100 320 200 {lab=VSS}
N 200 -100 320 -100 {lab=VSS}
N -0 -280 40 -280 {lab=guard}
C {iopin.sym} 0 -220 2 0 {name=p1 lab=drain}
C {iopin.sym} 0 -100 2 0 {name=p2 lab=gate}
C {iopin.sym} 0 40 2 0 {name=p3 lab=source}
C {iopin.sym} 0 200 2 0 {name=p4 lab=VSS}
C {iopin.sym} 0 -280 2 0 {name=p5 lab=guard}
C {symbols/nfet_03v3.sym} 180 -100 0 0 {name=M1
L=0.7u
W=1.6u
nf=1
m=1
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=nfet_03v3
spiceprefix=X
}
C {noconn.sym} 40 -280 2 0 {name=l1}
