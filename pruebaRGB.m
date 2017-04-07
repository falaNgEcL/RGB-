%%
%-----------GENERADOR DE SEÑALES RGB----------
%t2 J. Hernández B.
%program: converting digial image, to RGB SIGNALS

clc
clear all
close all




%% 
[RGB]=imread('1.jpg'); % generar matriz de RGB de la imagen

R=RGB(:,:,1); % capa Roja
G=RGB(:,:,2); % capa Verde
B=RGB(:,:,3); % capa Azul

%n=length(R(:,1));%alto
n=1;
m=length(R(1,:));
A=zeros(n,m,3);

for i=1:n

A(i,:,1)=R(i,:,1);%matriz capa roja
A(i,:,2)=G(i,:,1);%matriz capa verde
A(i,:,3)=B(i,:,1);%matriz capa azul


end
A=uint8(A);
A(n,:,1)
image(A)
axis equal;
grid on