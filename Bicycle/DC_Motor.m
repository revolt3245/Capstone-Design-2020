function Torque = DC_Motor(Voltage, dphi);
[Kt, Rm] = MotorSpec(1.569, 12.776, 2.1, 24);

Kb=Kt;
Jc=0.001;
Lf=Jc*(3000*2*pi/60);

Torque = Kt/Rm * Voltage - Kt * Kb/Rm * dphi;
end