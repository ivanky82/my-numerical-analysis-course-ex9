% Tutorial Minggu ke-8
% MENCARI SOLUSI NUMERIK PERSAMAAN DIFERENSIAL
% 
% File ini akan memanggil beberapa kode dan anda harus melengkapi kode tersebut
% untuk mencari hampiran turunan beberapa fungsi
% 
% File latihan :    
%     1. myode.m
%     2. euler.m
%     3. eulerTable.m
% 
%     
% Pada latihan ini, anda tidak perlu mengotak-atik code pada file ini 
% anda cukup membuat kode program pada file-file diatas.
% 
% 
%==========================================================================
% PART 1: MENDEFINISIKAN PERSAMAAN DIFERENSIAL YANG AKAN DICARI SOLUSINYA
% Buatlah sebuah fungsi yang diberi nama myfun.m yang isinya adalah fungsi
% yang akan dicari integralnya.
% Bualah kode yang merepresentasikan fungsi dy/dt = f(t,y) = t^2-y

clc;
clear;
close all;
t = [0; 0.5; 1; 1.5; 2]; 
y = [1; 1; 1; 1; 1];
fprintf('Part 1 : Mendefinisikan pdb yang akan dicari solusinya \n');
dy = myode(t,y)
fprintf('Kode yang anda kerjakan adalah benar jika outputnya adalah  \n');
fprintf('dy =  -1.00000 -0.75000 0.00000 1.25000 3.00000 \n'); 
fprintf('Tekan tombol apapun untuk lanjut \n\n');
pause;

%==========================================================================
% PART 2: MENCARI SOLUSI NUMERIK PDB dy/dt=f(t,y) DENGAN METODE EULER
% Buatlah sebuah fungsi yang diberi nama euler.m yang akan mencari solusi
% numerik suatu pdb dengan metode Euler

fprintf('Part 2 : Mencari solusi numerik PDB dengan metode Euler \n');
t_init = 0; %initial condition for t
t_end = 3; %batas atas integrasi
y_init = 1; %initial condition for y
h = 0.2; %lebar selang / step size
[T,Y] = euler(@(t,y)myode(t,y),t_init,t_end,y_init,h);
Y(end-1),Y(end)
fprintf('Kode yang anda kerjakan adalah benar jika dua element terakhir dari vektor Y adalah \n');
fprintf('4.0048 4.7719 \n');
fprintf('Tekan tombol apapun untuk lanjut\n\n');
pause;

%==========================================================================
% PART 3: MEMBANDINGKAN SOLUSI SEBENARNYA DENGAN SOLUSI NUMERIK
% Anda tidak perlu melakukan apa-apa di bagian ini. Pada bagian ini akan dipanggil
% sebuah fungsi yang akan membandingkan solusi sebenarnya dengan solusi numerik

fprintf('Part 3 : Membandingkan solusi numerik dengan solusi sebenarnya \n');
%This step needs to be changed if you consider a different ODE
%----------------------------------------------------------------
real_sol = @(t) (-exp(-t)+t.^2-2*t+2) ; %this is the real solution
%----------------------------------------------------------------
Y_real = real_sol(T);
compareplot(T,Y,Y_real)
fprintf('Tekan tombol apapun untuk lanjut\n\n');
pause;


%==========================================================================
% PART 4: MEMBANDINGKAN SOLUSI NUMERIK EULER UNTUK BERBAGAI NILAI h
% Buatlah sebuah fungsi void yang diberi nama eulerTable.m yang akan membuat sebuah tabel
% yang akan membandingkan solusi numerik Euler untuk berbagai nilai h. Solusi numerik
% yang akan dibandingkan hanya di t yang terakhir, dalam kasus ini di t=3

fprintf('Part 4 : Membandingkan solusi numerik untuk berbagai nilai h\n');
t_init = 0; %initial condition for t
t_end = 3; %batas atas integrasi
y_init = 1; %initial condition for y
y_end = real_sol(t_end); %solusi sebenarnya di t=3
h = [1 0.5 0.125 0.0625 0.031250]; %lebar selang / step size
eulerTable(@(t,y)myode(t,y),t_init,t_end,y_init,h,y_end);
fprintf('Kode yang anda kerjakan adalah benar jika outputnya sebuah tabel yang \n');
fprintf('terdiri dari 4 kolom. Kolom 1 = h, kolom 2 = real solution di t_end, \n');
fprintf('kolom 3 = solusi numerik di t_end dan kolom 4 = absolut erornya \n');
fprintf('Program Selesai. Tekan tombol apapun untuk lanjut\n\n');
pause;
close all;


% ==============================AKHIR KODE================================
% TIDAK MELAKUKAN PENGETIKAN KODE DI BAWAH GARIS INI AGAR LEBIH RAPI DALAM
% MELAKUKAN KODING DAN LEBIH DIMENGERTI.

% BONUS : 
% 1. COBALAH UNTUK MENCARI SOLUSI NUMERIK DENGAN PDB YANG LAIN 
% 
% 2. COBALAH UNTUK MEMBUAT PROGRAM MENCARI SOLUSI NUMERIK DENGAN METODE HEUN


