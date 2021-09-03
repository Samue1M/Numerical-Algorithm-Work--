printf('\nQuestão 1 :Implemente a densidade de probabilidade da eq. (3) em forma de funç˜ao anônima\n\n');


%%%   The requested function
%%%
%%%   p(x; µ, ?^2) = (1/sqrt (2pi?^2))exp {-(x - µ)^2 / 2?^2) 


% Creating an anonymous role 

FDP_Normal = @(x, u, sig) ( 1 /(sqrt(2*pi*sig^2) ) * exp( -(x - u).^2 / (2*sig^2) ));


% Defining the constants

u_1 = 0;
u_2 = -2;
x = -6:0.1:6;

sig_1 = .4;
sig_2 = 1.0;
sig_3 = 2.2;
sig_4 = .7;


% Defining the fuction

FDP_Normal_1 = FDP_Normal(x, u_1, sig_1);
FDP_Normal_2 = FDP_Normal(x, u_1, sig_2);
FDP_Normal_3 = FDP_Normal(x, u_1, sig_3);
FDP_Normal_4 = FDP_Normal(x, u_2, sig_4);

NormalPDF_1 = FDP_Normal_1 ./sum(FDP_Normal_1);
NormalPDF_2 = FDP_Normal_2 ./sum(FDP_Normal_2);
NormalPDF_3 = FDP_Normal_3 ./sum(FDP_Normal_3);
NormalPDF_4 = FDP_Normal_4 ./sum(FDP_Normal_4);


% Ploting

figure(), clf
plot(x,NormalPDF_1,'r','linew',1,x,NormalPDF_2,'y','linew',1,x,NormalPDF_3,'c','linew',1,x,NormalPDF_4,'m','linew',1);
title(" Distribuição Normal (Gaussiana)",'fontsize',15)
xlabel('x','fontsize',15);
ylabel('p(x)','fontsize',15);
legend('µ=0.0, ?=0.4 ','µ=0.0, ?=1.0 ','µ=0.0, ?=2.2 ','µ=-2.0, ?=0.7 ');
