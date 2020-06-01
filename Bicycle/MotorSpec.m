function [Kt, R] = MotorSpec(T_rated, W_rated, I_rated, V);
Kt = T_rated/I_rated;
V_emf = W_rated * Kt;
R = (V - V_emf)/I_rated;