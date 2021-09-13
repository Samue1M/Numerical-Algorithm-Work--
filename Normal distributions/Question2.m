printf('\nQuest√£o 1 :Implemente a densidade de probabilidade da eq. (3) em forma de fun√ßÀúao an√¥nima\n\n');


pkg load statistics


%%%   The requested function
%%%
%%%   p(x; µ, ?≤) = (1/sqrt (2pi?≤))exp {-(x - µ)^2 / 2?≤2) 


% Creating an anonymous role.

FDP_Normal = @(x, u, sig) ( 1 /(sqrt(2*pi*sig^2) ) * exp( -(x - u).^2 / (2*sig^2) ));


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


% Using the normpdf function

normpdf_1 = normpdf(x, u_1, sig_1);
normpdf_2 = normpdf(x, u_1, sig_2);
normpdf_3 = normpdf(x, u_1, sig_3);
normpdf_4 = normpdf(x, u_2, sig_4);


% Print

fprintf('%3s | %12s \n','      Normpdf function    ','"homemade" implementation');
fprintf('-------------------------------------------------------\n');

fprintf('%5.2f | %3.2f | %3.2f | %4.2f | %3.2f | %3.2f | %3.2f | %3.2f  \n', normpdf_1 , normpdf_2,normpdf_3,normpdf_4,NormalPDF_1,NormalPDF_2,NormalPDF_3,NormalPDF_4);

fprintf('\n\n Difference between the two functions');
fprintf('\n--------------------------------------\n');

fprintf('%5.2f | %3.2f | %3.2f | %3.2f  \n', (normpdf_1-NormalPDF_1) , (normpdf_2-NormalPDF_2),(normpdf_3-NormalPDF_3),(normpdf_4-NormalPDF_4));


