rem set which GPU using
SET CUDA_VISIBLE_DEVICES=0

rem ************************************* one color, copy whole module for another color

rem select PSF directory
SET PSFsPath="Y:\Tian-Ming_Fu\Files_from_Janelia\LLS\20201201_LLS_Calibration\PSFs"
SET PSFfile1=560nm_NBessel_NA0p4na0p3.tif

SET PSF_input1=%PSFsPath%\%PSFfile1%

SET OTF_output1=%PSFsPath%\OTF_%PSFfile1%

SET lambda_PSF1=603

rem select image data path
SET image_path="Y:\Tian-Ming_Fu\Files_from_Janelia\LLS\20201209_LLS\Hela_CSII_mCherry_CAAX\Cell2"

SET otf1=%OTF_output1%

SET pattern1="CamB"

SET emit_lambda1=0.610

rem generate OTF parameter
SET NAdet=1.0
SET medium_index=1.3333
SET xypixel_PSF=0.108
SET zpixel_PSF=0.1
SET origin=0
SET bg=106
SET OTF_Option=--background %bg% --xyres %xypixel_PSF% --zres %zpixel_PSF% --fixorigin %origin% --na %NAdet% --nimm %medium_index%

rem deconv parameter
SET xypixel_image=0.108
SET zpixel_image=0.4
SET iter=15
SET deskew_angle=-32.4
SET rotate_angle=0.0
SET image_bg=106
rem SET crop_size=1 256 1 1200 0 250
SET padding_size=20
SET MIPdir=0 0 1
SET deconv_Option=--drdata %xypixel_image% --dzdata %zpixel_image% --drpsf %xypixel_PSF% --dzpsf %zpixel_PSF% --RL %iter% --Pad %padding_size% -b %image_bg% --NA %NAdet% --deskew %deskew_angle% --rotate %rotate_angle% --MIP %MIPdir%

REM Generate OTF
radialft %PSF_input1% %OTF_output1% --wavelength %lambda_PSF1% %OTF_Option%

REM Deconvolve
cudaDecon --wavelength %emit_lambda1% %deconv_Option% %image_path% %pattern1% %otf1%


