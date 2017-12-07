function eulerTable(f,t_init,t_end,y_init,h,y_end)
%EULERTABLE Membuat tabel yang akan membandingkan solusi numerik untuk berbagai nilai h
%   EULERTABLE(f,t_init,t_end,y_init,h) menerima input fungsi f, syarat awal t_init
%   batas atas perhitungan t_end, syarat awal y_init, vektor h yang berisikan stepsize perhitungan h. 
%   dan y_end yang merupakan solusi sebenarnya dari PDB di titik t=t_end

n = length(h);
table = zeros(n,4);
table(:,1) = h;
table(:,2) = y_end;

% ===================== KODENYA MULAI DARI SINI============================
% ******************TULIS KODE DI BAWAH INSTRUKSI*************************
% ------------------------------------------------------------------------




% =========================================================================
table
end

