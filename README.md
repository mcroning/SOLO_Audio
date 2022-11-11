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

The included Python notebook is based on  
BPM_SpokenDigit_paper.ipynb in the paper's repository  
This program looks for .mat files that are not in the paper's repository, see snippet from  
BPM_SpokenDigit_paper.ipynb below

"""  
import scipy.io as sio  
f = sio.loadmat(filepath+'New_audio/flattened_longer.mat')  
inp2 = f['flattened']  

#Load data  
f2 = sio.loadmat(filepath+'New_audio/label_digits.mat')  

out = np.squeeze(f2['label'])  
"""  
The back end seems to do a similar job with the original spectrograms (stored in the npz file in this repository) than the the spactrograms after passage through the nonlinear fiber. 

Typical original spectrogram (downsampled to 22 by 22 as in the paper)  
![typinputoriginal_spectrograms](https://user-images.githubusercontent.com/36680270/201202824-13ed3a00-b45e-415a-ace7-40b631fd8c02.png)
Training result  
![accy_original_spectrograms](https://user-images.githubusercontent.com/36680270/201435960-08795f4c-ac50-405a-95d2-42b87c88b2e7.png)


Typical image after passage through fiber  
![typinputSOLO paper Fig 3f](https://user-images.githubusercontent.com/36680270/201203046-6fa04f06-d4bd-43c6-ad18-e30fe2036aa8.png)
Training result
![accy_SOLO paper Fig 3f](https://user-images.githubusercontent.com/36680270/201436022-59b1196d-9a1f-455d-97df-47e061933141.png)


