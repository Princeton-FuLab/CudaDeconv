rem set which GPU using
SET CUDA_VISIBLE_DEVICES=0

rem ************************************* one color, copy whole module for another color

rem select PSF directory
rem SET PSFsPath="Y:\Andy Zhang\Data\20240327_Compact_PEARLS_V2_on_MOSAIC\PEARLS\PSF"
rem SET PSFfile1=take1_PSF_100nmzStep_PEARLS_Square_NA0P6_na0p5_5mW_100ms.tif

SET PSFsPath="Y:\Andy Zhang\Data\20240326_Compact_PEARLS_V2_on_MOSAIC\PSF\LLS"
SET PSFfile1=take1_PSF_ZStep_100nmzStep_10umZRange_LLS_hex_NA0P6_na0p5_1mW_100ms.tif

SET PSF_input1=%PSFsPath%\%PSFfile1%

SET OTF_output1=%PSFsPath%\OTF_%PSFfile1%

SET lambda_PSF1=515

rem select image data path
SET image_path="Y:\Andy Zhang\Data\20240327_Compact_PEARLS_V2_on_MOSAIC\LLS\Collagen\LLS_hex\X_scan"
SET pattern1="take1_Collagen_200nmXStep_lls_HEX_NA0P6_na0p5_5mW_50ms.tif"

rem SET image_path="Y:\Andy Zhang\Data\20240327_Compact_PEARLS_V2_on_MOSAIC\LLS\Collagen"
rem SET pattern1="take2_Collagen_200nmXStep_lls_NBessel_NA0P6_na0p5_2p5mW_100ms"

SET otf1=%OTF_output1%
SET emit_lambda1=0.517

rem generate OTF parameter
SET NAdet=1.0
SET medium_index=1.3333
SET xypixel_PSF=0.108
SET zpixel_PSF=0.1
SET origin=0
SET bg=120
SET OTF_Option=--background %bg% --xyres %xypixel_PSF% --zres %zpixel_PSF% --fixorigin %origin% --na %NAdet% --nimm %medium_index%

rem deconv parameter
SET xypixel_image=0.108
SET zpixel_image=0.2
SET iter=15
SET deskew_angle=-32.4
SET rotate_angle=0.0
SET image_bg=220
rem SET crop_size=1 256 1 1200 0 250
SET padding_size=20
SET MIPdir=0 0 1
SET deconv_Option=--drdata %xypixel_image% --dzdata %zpixel_image% --drpsf %xypixel_PSF% --dzpsf %zpixel_PSF% --RL %iter% --Pad %padding_size% -b %image_bg% --NA %NAdet% --deskew %deskew_angle% --rotate %rotate_angle% --MIP %MIPdir%

REM Generate OTF
radialft %PSF_input1% %OTF_output1% --wavelength %lambda_PSF1% %OTF_Option%

REM Deconvolve
cudaDecon --wavelength %emit_lambda1% %deconv_Option% %image_path% %pattern1% %otf1%


