% Octave Script
% Title         :Funcion m�nimo material para la alberca
% Description   :Script del ejercicio de la alberca
% Author        :Rafael Miranda Jimenez
% Date          :20211013
% Version       :1
% Usage         :octave> /path/alberca
% Notes         :Requiere aplicaci�n octave y usar linea de comandos

% limpiar variables
 clear
 disp("Una persona tiene su casa en un patio rectangular que mide 20 por 30 metros y desea construir una alberca de forma rectangular, cuya �rea sea de 40 metros cuadrados. Determina las dimensiones del rect�ngulo para que la cantidad de material que use en las paredes sea m�nima."); 
% Minimo material para la alberca
% Rango de 0..10 en i= 0.1
  r=0:0.1:10;
% Valor de la funcion (a, b)
ar= @(ar)sqrt(40);
ab=@(ab) 40/6.3246;
% Funci�n a plotear
y= sqrt(40);
z=40/6.3246;
% Funcion para valor minimo
resr = fminbnd(ar,0,10);
resr1 = fminbnd(ab,0,10);
% Dibujar r,y
plot (r,y);

% Titulo
  title (['Minimo material A= ' num2str(ar (resr))]);
% Etiqueta para a
  xlabel(['Min a= ' num2str( ar(resr)) ] );
% Etiqueta para b
  ylabel(['Min b= ' num2str( ab(resr1))] );   
  
 
  

