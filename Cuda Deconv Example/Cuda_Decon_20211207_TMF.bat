set CUDA_VISIBLE_DEVICES=0


SET mypath1=S:\TL_KW_Stanford\20211209_Imaging\Afternoon\1h\Brain6_91GO4_0h_Right\
SET mypath2=S:\TL_KW_Stanford\20211209_Imaging\Afternoon\1h\Brain6_91GO4_0h_Left\
SET mypath3=S:\TL_KW_Stanford\20211209_Imaging\Afternoon\2h\Brain6_91GO4_0h_Right\
SET mypath4=S:\TL_KW_Stanford\20211209_Imaging\Afternoon\2h\Brain6_91GO4_0h_Left\
SET mypath5=S:\TL_KW_Stanford\20211208_Imaging\Night\Brain7_50um\
SET mypath6=S:\TL_KW_Stanford\20211208_Imaging\Night\Brain7_Right_70um\
SET mypath7=S:\TL_KW_Stanford\20211208_Imaging\Night\Brain8_Center_60um\
SET mypath8=S:\TL_KW_Stanford\20211208_Imaging\Night\Brain11_50um\


REM ****642****

SET myotf2=S:\TL_KW_Stanford\20211206_Calibration\PSFs\OTF_642nm_NBessel.tif

SET DECON2=Z:\Code\GPU_Decon\GPU_decon\build\cudaDeconv.exe --drdata 0.108 --drpsf 0.108 -z .25 -Z .1 -l 0.642 -b 100 -i 15 -u -M 0 0 1 --Pad 20

%DECON2%  --input-dir %mypath1% --filename-pattern CamB --otf-file %myotf2% 
%DECON2%  --input-dir %mypath2% --filename-pattern CamB --otf-file %myotf2%
%DECON2%  --input-dir %mypath3% --filename-pattern CamB --otf-file %myotf2% 
%DECON2%  --input-dir %mypath4% --filename-pattern CamB --otf-file %myotf2%
REM %DECON2%  --input-dir %mypath5% --filename-pattern CamB --otf-file %myotf2% 
REM %DECON2%  --input-dir %mypath6% --filename-pattern CamB --otf-file %myotf2%
REM %DECON2%  --input-dir %mypath7% --filename-pattern CamB --otf-file %myotf2% 
REM %DECON2%  --input-dir %mypath8% --filename-pattern CamB --otf-file %myotf2%


REM ****488****

SET myotf1=S:\TL_KW_Stanford\20211206_Calibration\PSFs\OTF_488nm_NBessel.tif

SET DECON1=Z:\Code\GPU_Decon\GPU_decon\build\cudaDeconv.exe --drdata 0.108 --drpsf 0.108 -z .25 -Z .1 -l 0.488 -b 100 -i 15 -u -M 0 0 1 --Pad 20

%DECON1%  --input-dir %mypath1% --filename-pattern CamA --otf-file %myotf1% 
%DECON1%  --input-dir %mypath2% --filename-pattern CamA --otf-file %myotf1%
%DECON1%  --input-dir %mypath3% --filename-pattern CamA --otf-file %myotf1% 
%DECON1%  --input-dir %mypath4% --filename-pattern CamA --otf-file %myotf1%
REM %DECON1%  --input-dir %mypath5% --filename-pattern CamA --otf-file %myotf1% 
REM %DECON1%  --input-dir %mypath6% --filename-pattern CamA --otf-file %myotf1%
REM %DECON1%  --input-dir %mypath7% --filename-pattern CamA --otf-file %myotf1% 
REM %DECON1%  --input-dir %mypath8% --filename-pattern CamA --otf-file %myotf1%   

  
