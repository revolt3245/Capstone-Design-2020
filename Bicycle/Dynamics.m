function dev = Dynamics(theta, dtheta, phi, dphi, torque);
[Kt, Rm] = MotorSpec(1.569, 12.776, 2.1, 24);

Kb=Kt;
Jc=0.001;
Lf=Jc*(3000*2*pi/60);
m=18.131;
g=9.8;
l=0.349;
Jb=0.894;

dev(1) = dtheta;
dev(3) = dphi;

dev(2) = (m * g * l * sin(theta) - 2 * Lf * dphi * cos(phi))/Jb;
dev(4) = (2 * Lf*dtheta * cos(phi) + torque)/Jc;
end