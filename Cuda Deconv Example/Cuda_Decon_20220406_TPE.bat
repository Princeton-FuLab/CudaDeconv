@set CUDA_VISIBLE_DEVICES=0

@SET PSFsPath=\\dm11\betziglab\Tian-Ming_Fu\Data\20220325_ISM_TPE_Mouse_Good\2P_Decon_test

@SET PSF1=TPE_PSF_Mean.tif

rem @SET PSF2=642nm_NBessel_NA0p38na0p36.tif

@radialft --3Dout --nocleanup  --xyres 0.1 --zres 0.1 --fixorigin 0 --background 108 --input-file %PSFsPath%\%PSF1% --output-file %PSFsPath%\OTF_%PSF1% 
rem @radialft --3Dout --nocleanup  --xyres 0.108 --zres 0.1 --fixorigin 0 --background 100.1 --input-file %PSFsPath%\%PSF2% --output-file %PSFsPath%\OTF_%PSF2%






REM set data folders (use REM to comment a line)
@SET mypath1=\\dm11\betziglab\Tian-Ming_Fu\Data\20220325_ISM_TPE_Mouse_Good\2P_Decon_test\Data\
@SET mypath2=Z:\20211108_LLS_V2_for_ISMComp\Fish3\AO\
@SET mypath3=W:\TL_KW_Stanford\20211208_Imaging\Night\Brain11_50um\
@SET mypath4=W:\TL_KW_Stanford\20211219_Imaging\Morning\4h\Brain7_40um\
@SET mypath5=W:\TL_KW_Stanford\20211219_Imaging\Morning\4h\Brain10_50um\
@SET mypath6=W:\TL_KW_Stanford\20211211_Imaging\Morning\8h\Brain7_Bottom_50um\
@SET mypath7=W:\TL_KW_Stanford\20211211_Imaging\Morning\8h\Brain7_Top_50um\
@SET mypath8=W:\TL_KW_Stanford\20211211_Imaging\Morning\8h\Brain8_Bottom_70um\
@SET mypath9=W:\TL_KW_Stanford\20211211_Imaging\Morning\8h\Brain8_Top_60um\
@SET mypath10=W:\TL_KW_Stanford\20211218_Imaging\Night\2h\Brain2_50um\
@SET mypath11=W:\TL_KW_Stanford\20211218_Imaging\Night\2h\Brain3_50um\
@SET mypath12=W:\TL_KW_Stanford\20211218_Imaging\Night\2h\Brain4_50um\
@SET mypath13=W:\TL_KW_Stanford\20211218_Imaging\Night\2h\Brain5_40um\
@SET mypath14=W:\TL_KW_Stanford\20211218_Imaging\Night\2h\Brain7_50um\
@SET mypath15=W:\TL_KW_Stanford\20211218_Imaging\Night\2h\Brain9_50um\
@SET mypath16=W:\TL_KW_Stanford\20211218_Imaging\Night\2h\Brain10_50um\
@SET mypath17=W:\TL_KW_Stanford\20211218_Imaging\Night\4-6h\Brain1_40um\
@SET mypath18=W:\TL_KW_Stanford\20211218_Imaging\Night\4-6h\Brain2_50um\
@SET mypath19=W:\TL_KW_Stanford\20211218_Imaging\Night\4-6h\Brain3_50um\
@SET mypath20=W:\TL_KW_Stanford\20211218_Imaging\Night\4-6h\Brain4_50um\
@SET mypath21=W:\TL_KW_Stanford\20211218_Imaging\Night\4-6h\Brain5_40um\
@SET mypath22=W:\TL_KW_Stanford\20211218_Imaging\Night\4-6h\Brain7_50um\
@SET mypath23=W:\TL_KW_Stanford\20211218_Imaging\Night\4-6h\Brain9_50um\
@SET mypath24=W:\TL_KW_Stanford\20211218_Imaging\Night\4-6h\Brain10_50um\
@SET mypath25=W:\TL_KW_Stanford\20211218_Imaging\Night\8-10h\Brain3_50um\
@SET mypath26=W:\TL_KW_Stanford\20211218_Imaging\Night\8-10h\Brain4_50um\
@SET mypath27=W:\TL_KW_Stanford\20211218_Imaging\Night\8-10h\Brain5_40um\
@SET mypath28=W:\TL_KW_Stanford\20211218_Imaging\Night\8-10h\Brain7_50um\
@SET mypath29=W:\TL_KW_Stanford\20211218_Imaging\Night\12h\Brain3_50um\
@SET mypath30=W:\TL_KW_Stanford\20211218_Imaging\Night\12h\Brain4_50um\
@SET mypath31=W:\TL_KW_Stanford\20211218_Imaging\Night\12h\Brain5_40um\
@SET mypath32=W:\TL_KW_Stanford\20211218_Imaging\Night\12h\Brain7_50um\





REM ****TPE****

@SET myotf2=%PSFsPath%\OTF_%PSF2%

@SET DECON2=U:\Tool_Codes\Decon\GPU_decon_no_radial_avg\cudaDecon.exe --drdata 0.108 --drpsf 0.108 -z .1 -Z .1 -l 0.642 -b 100 -i 15 -u -M 0 0 1 --Pad 20 --dcbds

rem %DECON2%  --input-dir %mypath1% --filename-pattern CamB --otf-file %myotf2%
rem %DECON2%  --input-dir %mypath2% --filename-pattern CamB --otf-file %myotf2%
rem %DECON2%  --input-dir %mypath3% --filename-pattern CamB --otf-file %myotf2%
rem %DECON2%  --input-dir %mypath4% --filename-pattern CamB --otf-file %myotf2%
rem %DECON2%  --input-dir %mypath5% --filename-pattern CamB --otf-file %myotf2%
rem %DECON2%  --input-dir %mypath6% --filename-pattern CamB --otf-file %myotf2%
rem %DECON2%  --input-dir %mypath7% --filename-pattern CamB --otf-file %myotf2%
rem %DECON2%  --input-dir %mypath8% --filename-pattern CamB --otf-file %myotf2%
rem %DECON2%  --input-dir %mypath9% --filename-pattern CamB --otf-file %myotf2%
rem %DECON2%  --input-dir %mypath10% --filename-pattern CamB --otf-file %myotf2%
rem %DECON2%  --input-dir %mypath11% --filename-pattern CamB --otf-file %myotf2%
rem %DECON2%  --input-dir %mypath12% --filename-pattern CamB --otf-file %myotf2%
rem %DECON2%  --input-dir %mypath13% --filename-pattern CamB --otf-file %myotf2%
rem %DECON2%  --input-dir %mypath14% --filename-pattern CamB --otf-file %myotf2%
rem %DECON2%  --input-dir %mypath15% --filename-pattern CamB --otf-file %myotf2%
rem %DECON2%  --input-dir %mypath16% --filename-pattern CamB --otf-file %myotf2%
rem %DECON2%  --input-dir %mypath17% --filename-pattern CamB --otf-file %myotf2%
rem %DECON2%  --input-dir %mypath18% --filename-pattern CamB --otf-file %myotf2%
rem %DECON2%  --input-dir %mypath19% --filename-pattern CamB --otf-file %myotf2%
rem %DECON2%  --input-dir %mypath20% --filename-pattern CamB --otf-file %myotf2%
rem %DECON2%  --input-dir %mypath21% --filename-pattern CamB --otf-file %myotf2%
rem %DECON2%  --input-dir %mypath22% --filename-pattern CamB --otf-file %myotf2%
rem %DECON2%  --input-dir %mypath23% --filename-pattern CamB --otf-file %myotf2%
rem %DECON2%  --input-dir %mypath24% --filename-pattern CamB --otf-file %myotf2%
rem %DECON2%  --input-dir %mypath25% --filename-pattern CamB --otf-file %myotf2%
rem %DECON2%  --input-dir %mypath26% --filename-pattern CamB --otf-file %myotf2%
rem %DECON2%  --input-dir %mypath27% --filename-pattern CamB --otf-file %myotf2%
rem %DECON2%  --input-dir %mypath28% --filename-pattern CamB --otf-file %myotf2%
rem %DECON2%  --input-dir %mypath29% --filename-pattern CamB --otf-file %myotf2%
rem %DECON2%  --input-dir %mypath30% --filename-pattern CamB --otf-file %myotf2%
rem %DECON2%  --input-dir %mypath31% --filename-pattern CamB --otf-file %myotf2%
rem %DECON2%  --input-dir %mypath32% --filename-pattern CamB --otf-file %myotf2%
 

REM ****TPE_CamA****

@SET myotf1=%PSFsPath%\OTF_%PSF1%

@SET DECON1=U:\Tool_Codes\Decon\GPU_decon_no_radial_avg\cudaDecon.exe --drdata 0.1 --drpsf 0.1 -z .1 -Z .1 -l 0.488 -b 7770 -i 15 -u -M 0 0 1 --Pad 20 --dcbds

%DECON1%  --input-dir %mypath1% --filename-pattern CamA --otf-file %myotf1%
rem %DECON1%  --input-dir %mypath2% --filename-pattern CamA --otf-file %myotf1%
rem %DECON1%  --input-dir %mypath3% --filename-pattern CamA --otf-file %myotf1%
rem %DECON1%  --input-dir %mypath4% --filename-pattern CamA --otf-file %myotf1%
rem %DECON1%  --input-dir %mypath5% --filename-pattern CamA --otf-file %myotf1%
rem %DECON1%  --input-dir %mypath6% --filename-pattern CamA --otf-file %myotf1%
rem %DECON1%  --input-dir %mypath7% --filename-pattern CamA --otf-file %myotf1%
rem %DECON1%  --input-dir %mypath8% --filename-pattern CamA --otf-file %myotf1%
rem %DECON1%  --input-dir %mypath9% --filename-pattern CamA --otf-file %myotf1%
rem %DECON1%  --input-dir %mypath10% --filename-pattern CamA --otf-file %myotf1%
rem %DECON1%  --input-dir %mypath11% --filename-pattern CamA --otf-file %myotf1%
rem %DECON1%  --input-dir %mypath12% --filename-pattern CamA --otf-file %myotf1%
rem %DECON1%  --input-dir %mypath13% --filename-pattern CamA --otf-file %myotf1%
rem %DECON1%  --input-dir %mypath14% --filename-pattern CamA --otf-file %myotf1%
rem %DECON1%  --input-dir %mypath15% --filename-pattern CamA --otf-file %myotf1%
rem %DECON1%  --input-dir %mypath16% --filename-pattern CamA --otf-file %myotf1%
rem %DECON1%  --input-dir %mypath17% --filename-pattern CamA --otf-file %myotf1%
rem %DECON1%  --input-dir %mypath18% --filename-pattern CamA --otf-file %myotf1%
rem %DECON1%  --input-dir %mypath19% --filename-pattern CamA --otf-file %myotf1%
rem %DECON1%  --input-dir %mypath20% --filename-pattern CamA --otf-file %myotf1%
rem %DECON1%  --input-dir %mypath21% --filename-pattern CamA --otf-file %myotf1%
rem %DECON1%  --input-dir %mypath22% --filename-pattern CamA --otf-file %myotf1%
rem %DECON1%  --input-dir %mypath23% --filename-pattern CamA --otf-file %myotf1%
rem %DECON1%  --input-dir %mypath24% --filename-pattern CamA --otf-file %myotf1%
rem %DECON1%  --input-dir %mypath25% --filename-pattern CamA --otf-file %myotf1%
rem %DECON1%  --input-dir %mypath26% --filename-pattern CamA --otf-file %myotf1%
rem %DECON1%  --input-dir %mypath27% --filename-pattern CamA --otf-file %myotf1%
rem %DECON1%  --input-dir %mypath28% --filename-pattern CamA --otf-file %myotf1%
rem %DECON1%  --input-dir %mypath29% --filename-pattern CamA --otf-file %myotf1%
rem %DECON1%  --input-dir %mypath30% --filename-pattern CamA --otf-file %myotf1%
rem %DECON1%  --input-dir %mypath31% --filename-pattern CamA --otf-file %myotf1%
rem %DECON1%  --input-dir %mypath32% --filename-pattern CamA --otf-file %myotf1%


