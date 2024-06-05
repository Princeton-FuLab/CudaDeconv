rem set which GPU using
SET CUDA_VISIBLE_DEVICES=0

rem ************************************* one color, copy whole module for another color

rem select PSF directory
SET PSFsPath="Z:\Andy_Zhang\Data\20240429_SQ_NA0P42_na0p38_forCal_Compact_PEARLS_V2_on_MOSAIC\PSF"
SET PSFfile1=PSF_PEARLS_NA0P42_na0p38_50mW_100ms.tif

SET PSF_input1=%PSFsPath%\%PSFfile1%
SET OTF_output1=%PSFsPath%\OTF_%PSFfile1%

SET lambda_PSF1=515

rem select image data path
SET image_path1="Y:\Tian-Ming_Fu\Backup\20240507_PEARLS_V2_Fish\Fish1_60sInterval_200um"
SET otf1=%OTF_output1%

SET pattern1="CamA"
SET pattern2="CamB"

SET emit_lambda1=0.515

rem generate OTF parameter
SET NAdet=1.0
SET medium_index=1.3333
SET xypixel_PSF=0.108
SET zpixel_PSF=0.1
SET origin=0
SET bg=100
SET OTF_Option=--background %bg% --xyres %xypixel_PSF% --zres %zpixel_PSF% --fixorigin %origin% --na %NAdet% --nimm %medium_index%

rem deconv parameter
SET xypixel_image=0.108
SET zpixel_image=0.4
SET iter=15
SET deskew_angle=-32.4
SET rotate_angle=0.0
SET image_bg=100
REM SET crop_size=20 491 100 1947 0 625
SET padding_size=16
SET MIPdir=1 1 1
SET deconv_Option=--drdata %xypixel_image% --dzdata %zpixel_image% --drpsf %xypixel_PSF% --dzpsf %zpixel_PSF% --RL %iter% --Pad %padding_size% -b %image_bg% --NA %NAdet% --deskew %deskew_angle% --rotate %rotate_angle% --MIP %MIPdir%

REM Generate OTF
radialft %PSF_input1% %OTF_output1% --wavelength %lambda_PSF1% %OTF_Option%

REM Tiled Deconvolve
cudaDecon --wavelength %emit_lambda1% --FlatStart --tile 256 %deconv_Option% %image_path1% %pattern1% %otf1%
REM cudaDecon --wavelength %emit_lambda1% --FlatStart --tile 256 %deconv_Option% %image_path1% %pattern2% %otf1%

REM Deconvolve
REM image_path1% %pattern1% %otf1%