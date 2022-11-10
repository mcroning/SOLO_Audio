# SOLO_Audio
Reconstructing data in Fig 3f of https://doi.org/10.1038/s43588-021-00112-0
Scalable Optical Learning Operator by Tegin et al.

I used the data in the paper's repository 

https://github.com/ugurtegin/Nonlinear_MMF_Network

In particular Audio Digit-Fig3c_Fig3f.zip

and the following MATLAB code to convert the csv files to mat files

res_sq_flt= readmatrix('res_sq_flt1.csv');
label= readmatrix('label.csv');
save('res_sq_digits.mat','res_sq_flt');
save('label_digits.mat','label');


