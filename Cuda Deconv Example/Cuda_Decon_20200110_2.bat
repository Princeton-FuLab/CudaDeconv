set CUDA_VISIBLE_DEVICES=0

REM ****514****

SET myotf=P:\Tian-Ming_Fu\GPU_Decon\mbOTF_514_NA0p4na0p36.tif

SET DECON=P:\Tool_Codes\Decon\GPU_decon\build\cudaDecon.exe --drdata 0.108 -z .5 -Z .1 -D -32.4 -R 32.4 -C 349 825 0 1295 0 395 -l 0.514 -i 15 -u -M 1 1 1 --Pad 50

SET mypath1=J:\Tian-Ming\Jeff_Mumm_JohnsHopkins\20191205_Imaging\Ok_8dpf_F7_rod_YFP_uGtdTomato_DMSOControl_30sInterval

%DECON%  --input-dir %mypath1% --filename-pattern CamA --otf-file %myotf% 


REM ****560****

SET myotf=P:\Tian-Ming_Fu\GPU_Decon\mbOTF_560_NA0p4na0p36.tif

SET DECON=P:\Tool_Codes\Decon\GPU_decon\build\cudaDecon.exe --drdata 0.108 -z .5 -Z .1 -D -32.4 -R 32.4 -C 349 825 0 1295 0 395 -l 0.560 -i 15 -u -M 1 1 1 --Pad 50

SET mypath1=J:\Tian-Ming\Jeff_Mumm_JohnsHopkins\20191205_Imaging\Ok_8dpf_F7_rod_YFP_uGtdTomato_DMSOControl_30sInterval

%DECON%  --input-dir %mypath1% --filename-pattern CamB --otf-file %myotf% 
    
    
