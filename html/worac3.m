%% Practica 4 Convolucion y correlacion de se�ales
% SE�ALES EN TIEMPO DISCRETO
%% INTEGRANTES
% * Chavez Andrade Luis Daniel
%% OBJETIVOS
% * Conocer m�todos b�sicos de integraci�n num�rica 
% * Manipulaci�n de instrucciones en MATLAB
% * Simular convoluciones y correlaciones de se�ales continuas
% * Simular convoluciones y correlaciones de se�ales discretas
%% ENTREGABLES
% # Para el PR04 reporte la grafica de la simulaci�n n�merica
% de la convoluci�n y compare con el resultado an�litico que obtuvo para el problema 1, esto
% es, su pr�ctica tendr� que incluir una llamada a la funci�nn
% _convconm_ y posteriormente se tendr� que mostrar (mediante el
% Publish) la gr�fica tanto de las se�ales involucradas como el resultado de
% la convoluci�n, y en esta �ltima gr�ficara su resultado analitico, se
% tendr� que incluir el resultado analitico. 
% # Para el PR05 reporte la grafica de la simulaci�n n�merica
% de la correalci�n y compare con el resultado an�litico que obtuvo para el problema e), esto
% es, su pr�ctica tendr� que incluir una llamada a la funci�nn
% _convconm_ y posteriormente se tendr� que mostrar (mediante el
% Publish) la gr�fica tanto de las se�ales involucradas como el resultado de
% su correlaci�n, y en esta �ltima graficara su resultado analitico, se
% tendr� que incluir el resultado analitico. 
% # Realice la simuaci�n de la convoluci�n de las se�ales (c) con (d) del
% problema 3.1.1 
% # Realice la simuaci�n de la correlaci�n de las se�ales (c) con (d) del
% problema 3.1.1
% # Realice la  la convoluci�n de las se�ales (c) con (d) del
% problema 3.1.1 utilizando el comando *conv* de MATLAB, muestre el c�digo
% utilizado y gr�fique el resultado, sugerencia: Utilice las propiedades de
% traslaci�n de la convoluci�n. 
%% INTEGRACION NUMERICA
% En an�lisis num�rico, la integraci�n num�rica constituye una amplia gama
% de algoritmos para calcular el valor num�rico de una integral definida y,
% por extensi�n, el t�rmino se usa a veces para describir algoritmos num�ricos
% para resolver ecuaciones diferenciales

%%  NEWTON-COTES
% En an�lisis num�rico las f�rmulas de Newton-Cotes (nombradas as� por Isaac
% Newton y Roger Cotes) son un grupo de f�rmulas de integraci�n num�rica de 
% tipo interpolatorio, en las cuales se eval�a la funci�n en puntos equidistantes,
% para as� hallar un valor aproximado de la integral. Cuanto m�s intervalos se
% divida la funci�n m�s preciso ser� el resultado.
%% METODO DEL TRAPECIO
% A este m�todo se le conoce con el nombre de la regla del trapecio compuesta. %
% Para aplicar este m�todo siga los siguientes pasos: Divida el intervalo [a, b]
% en subintervalos de igual medida. Aproxime en cada subintervalo la funci�n f(x) por una recta
%% EJEMPLO HECHO A MANO
%%
% 
% <<newton-cotes.png>>
% 

%% EJERCICIO 1 DE PR04
% Convolucion de las siguientes dos se�ales
% Primera se�al
a=@(t) (exp(-t)).*((t>=0)&(t<=1)); 
t=-2:.01:2;
figure
plot(t,a(t))
title({'grafica de e^-t '});
% Segunda se�al
b=@(t) ((-(-t).*((t>=-1)&(t<0))) + ((t).*((t>=0)&(t<=1)))); 
figure
plot(t,b(t))
title({'grsfica de -t y t intervalo -1 a 1'});
%convolucion
figure
convconm(a,b)
%% EJERCICIO E DE PR05
% realiza a autocorrelacion de
% x1(t) = u(t) ? 2u(t ? 3) + u(t ? 4) N   

%% EJERCICIO 3.1.1
% CONVOLUCION  Y CORRELACION DE LAS SE�ALES  C Y D 
x=@(t) ((-(-3*t).*((t>=-3)&(t<0))) + ((3*t).*((t>=0)&(t<=3))));
t=-3.5:.08:3.5;
figure
plot(t,x(t))
title({'se�al c '});
%SE�AL D
h=@(t) (((-2*t).*((t>=-2)&(t<0))) + ((2*t).*((t>=0)&(t<=2))));  
figure
plot(t,h(t))
title({'se�al d'});
%la se�al al ser par e invertirla es lo mismo que la convolucion'
title({'correlacion'});
convconm1(x,h)



%% REALICE LA CONVOLUCION OCUPANDO COMANDO CONV
% DE C Y D
%SE�AL C

x=@(t) ((-(-3*t).*((t>=-3)&(t<0))) + ((3*t).*((t>=0)&(t<=3)))); 
figure
plot(t,x(t))
title({'se�al c'});

%SE�AL D
h=@(t) (((-2*t).*((t>=-2)&(t<0))) + ((2*t).*((t>=0)&(t<=2)))); 
figure
plot(t,h(t))
title({'se�al d'});
figure
c=conv(x(t),h(t),'same'); 
plot(t,c)
title({'convolucion con comando conv'});