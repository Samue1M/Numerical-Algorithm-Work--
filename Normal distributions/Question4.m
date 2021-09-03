printf('\n\nQuestão 3 :Replique o gráfico na página da Wikipedia, variando os dois parâmetros\n\n');


%%%   The requested function
%%%
%%%   p(x; µ, ?²) = (1/sqrt (2pi?²))exp {-(x - µ)^2 / 2?²2) 
%%%
%%%   


% Creating an anonymous role.

FDP_Normal = @(x, u, sigm) ( 1 /(sqrt(2*pi*sigm^2) ) * exp( -(x - u).^2 / (2*sigm^2) ));


% First doing the initial task  


% Defining the constants.

u_1 = 0;
u_2 = -2;
x = -6:0.1:6;

sig_1 = .4;
sig_2 = 1.0;
sig_3 = 2.2;
sig_4 = .7;


% Defining the fuction.

FDP_Normal_1 = FDP_Normal(x, u_1, sig_1);
FDP_Normal_2 = FDP_Normal(x, u_1, sig_2);
FDP_Normal_3 = FDP_Normal(x, u_1, sig_3);
FDP_Normal_4 = FDP_Normal(x, u_2, sig_4);


% Normalizing probability density. Divided by your dot product (Fuction 'sum').

NormalPDF_1 = FDP_Normal_1 ./sum(FDP_Normal_1); 
NormalPDF_2 = FDP_Normal_2 ./sum(FDP_Normal_2);
NormalPDF_3 = FDP_Normal_3 ./sum(FDP_Normal_3);
NormalPDF_4 = FDP_Normal_4 ./sum(FDP_Normal_4);


% Ploting

figure(), clf
plot(x,cumsum(NormalPDF_1),'b','linew',1,x,cumsum(NormalPDF_2),'r','linew',1,x,cumsum(NormalPDF_3),'c','linew',1,x,cumsum(NormalPDF_4),'m','linew',1);
axis([-5 5 0 1.04])
title(" Função de distribuição acumulada ",'fontsize',15)
xlabel('x','fontsize',15);
ylabel('p(x)','fontsize',15);
legend('µ=0.0, ?=0.4 ','µ=0.0, ?=1.0 ','µ=0.0, ?=2.2 ','µ=-2.0, ?=0.7 ');
hold on



%%% -------------------____________________---------------------- -------------------____________________----------------------

% Replicating the graphic from the Wikipedia page 


% Defining the constants.

u_1 = 0;
u_2 = -2;
x = -5:0.1:5;

sig_1 = .4472135954999579;
sig_2 = 1.0;
sig_3 = 2.23606797749979;
sig_4 = .7071067811865475;


% Defining the fuction.

FDP_Normal_1 = FDP_Normal(x, u_1, sig_1);
FDP_Normal_2 = FDP_Normal(x, u_1, sig_2);
FDP_Normal_3 = FDP_Normal(x, u_1, sig_3);
FDP_Normal_4 = FDP_Normal(x, u_2, sig_4);


% Normalizing probability density. Divided by your dot product (Fuction 'sum').

NormalPDF_1 = FDP_Normal_1 ./sum(FDP_Normal_1); 
NormalPDF_2 = FDP_Normal_2 ./sum(FDP_Normal_2);
NormalPDF_3 = FDP_Normal_3 ./sum(FDP_Normal_3);
NormalPDF_4 = FDP_Normal_4 ./sum(FDP_Normal_4);


% Ploting

figure(), clf
plot(x,cumsum(NormalPDF_1),'b','linew',1,x,cumsum(NormalPDF_2),'r','linew',1,x,cumsum(NormalPDF_3),'c','linew',1,x,cumsum(NormalPDF_4),'m','linew',1);
axis([-5 5 0 1.04])
title(" Função de distribuição acumulada  ",'fontsize',15)
xlabel('x','fontsize',15);
ylabel('p(x)','fontsize',15);
legend('µ=0.0, ?²=0.2 ','µ=0.0, ?²=1.0 ','µ=0.0, ?²=2.2 ','µ=5.0, ?²=0.5 ');
