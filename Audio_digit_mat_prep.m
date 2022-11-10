res_sq_flt= readmatrix('res_sq_flt1.csv');
label= readmatrix('label.csv');
save('res_sq_digits.mat','res_sq_flt');
save('label_digits.mat','label');