# ASYS
practicas
%% Practica 2
% SEÑALES EN TIEMPO DISCRETO
%% INTEGRANTES
% * Chavez Andrade Luis Daniel
% * Alvarado Angeles  Francisco Javier
% * Jose Carlos martinez cruz
%% OBJETIVOS
% # Manipulación básica de MATLAB
% # Gráficas de señales reales y complejas discretas
% # Transformación de señales discretas (escalamientos y traslaciones)
%% ENTREGABLES
% * Resuelva el problema 3.2.3 de Lathi, tenga cuidado en los escalamientos horizontales
% * Construya una función que gráfique funciones de $f:Z\rightarrow R$ en el formato de su elección.
% Con ayuda de esta función resuelva el problema 3.3.7 de Lathi,
% el rango de la varible se deja a criterio
% * Construya una app
%% For the signal shown in Fig. P3.1-1b, sketch the following signals:
% * a. x[-n]
% * b. x[n + 6]
% * c. x[n - 6]
% * d. x[3n]
% * e. x[n/3]
% * f. x[3 - n]
%% SEÑAL ORIGINAL

x=@(t) (t).*((t<=3)&(t>=0)); 
t=-6:.5:12; 
c(t,x(t))
 %% PUNTO A
% * a. x[-n]
 c(t,x(-t))
  %% PUNTO B
  % * b. x[n + 6]
c(t,x(t-6))
 %% PUNTO C
 % * c. x[n - 6]
c(t,x(t+6))
 %% PUNTO D
 % * d. x[3n]
 c(t,x(3*t))
  %% PUNTO E
  % * e. x[n/3]
 c(t,x(t/3))
  %% PUNTO F
  % * f. x[3 - n]
  c(t,x(3-t))
  
  %% PUNTO2
  % PARTE PAR E IMPAR DE SEÑALES DISCRETAS
  % * Escalon unitario u(t)
  x=@(t) ((t<=100)&(t>=0)); 
 t=-5:10; 
 c(t,x(t))
 % PARTE PAR
 f=(x(t)+x(-t))/2;
 c(t,f)
 % PARTE IMPAR
 g=(x(t)-x(-t))/2;
 c(t,g) 
 %% ESCALON UNITARIO POR UNA CONSTANTE n*U(T)
   x=@(t) ((t<=10)&(t>=0)); 
   t=-5:10;
   c(t,x(t))
    % PARTE PAR
 f=(x(t)+x(-t))/2;
 c(t,f)
 % PARTE IMPAR
 g=(x(t)-x(-t))/2;
 c(t,g)
 
 %% SENO sin((pi*t)/4)
   x=@(t) sin((pi*t)/4).*((t<=10)&(t>=0)); 
  t=0:.5:10; 
  c(t,x(t))
  % PARTE PAR
 f=(x(t)+x(-t))/2;
 c(t,f)
 % PARTE IMPAR
 g=(x(t)-x(-t))/2;
 c(t,g)
 %% COSENO cos((pi*t)/4)
   x=@(t) cos((pi*t)/4).*((t<=10)&(t>=0)); 
  t=0:.5:10; 
  c(t,x(t))
  % PARTE PAR
 f=(x(t)+x(-t))/2;
 c(t,f)
 % PARTE IMPAR
 g=(x(t)-x(-t))/2; 
 c(t,g)
 
  
  


