%%
%-----------GENERADOR DE SEÑALES RGB----------
%t2 J. Hernández B.
%program: converting digial image, to RGB SIGNALS

clc
clear all
close all




%% 
[RGB]=imread('1.jpg'); % generar matriz de RGB de la imagen

R=RGB(:,:,1); % capa Roja.
G=RGB(:,:,2); % capa Verde.
B=RGB(:,:,3); % capa Azul.





if  length(R)==length(G)&length(G)==length(B)
    correcto=1;
end



if correcto==1;

n=length(R(:,1));%alto
m=length(R(1,:));%largo
A=zeros(n,m,3);%generar matriz de zeros para completar matriz de imagen


%P=randi([0 10],n,m); % matriz para generar ruido

%P=uint8(P);


%R=R.*P;
%G=G.*P;
%B=B.*P;

A(:,:,1)=R;%matriz capa roja
A(:,:,2)=G;%matriz capa verde
A(:,:,3)=B;%matriz capa azul

A=uint8(A);% transformar A a matriz de 8 bits


image(A) %generacion de imagen




else
    disp('error revisar codigo');
    
end

p=1/60; % tiempo de pause entre ploteo y ploteo.

drawnow
pause(p)
subplot(4,1,1)

image(A)


%%
for i=1:1000

la=1;
psr=R(la,:);
n=length(psr);

subplot(4,1,2)






plot(linspace(0,n,n),R(i,:),'r')
axis equal;
grid on


subplot(4,1,3)

plot(linspace(0,n,n),G(i,:),'g')
axis equal;
grid on
subplot(4,1,4)
plot(linspace(0,n,n),B(i,:))
axis equal;
grid on
pause(p)


end

%h264 revisar
%lalalaa


