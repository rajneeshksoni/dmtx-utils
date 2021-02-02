#!/bin/bash
for i in $(seq -f "%04g" 1 7000)
do
   echo -n $i  |  ./dmtxwrite/dmtxwrite > ~/tempdir/scan_$i.png
done

#convert individual images to video
ffmpeg  -r 60  -i ~/tempdir/scan_%04d.png   -vf fps=60 -pix_fmt yuv420p -s 128x128 ~/tempdir/data_mat.y4m

#overlay bar codes to
ffmpeg -y  -i ~/tempdir/interview.y4m   -i ~/tempdir/data_mat.y4m  -filter_complex "[0:v][1:v]overlay=enable=gte(t\,0):shortest=1[out]" -pix_fmt yuv420p -map [out]  ~/tempdir/overlaied.y4m

####### VMAF score calculation
## ffmpeg   -s 1280x720  -pix_fmt rgb24  -i  ~/tempdir/degraded_file.rgb  -s 1280x720  -pix_fmt rgb24   -i ~/tempdir/vmaf_ref_file.rgb     -lavfi libvmaf="psnr=1:phone_model=1:log_path=VMAF.txt:model_path=/usr/local/bin/vmaf_float_v0.6.1.pkl" -report -f null -
######3

##### reference file generation 

#./dmtxRGBread  -w 1280 -h 720 -d ~/tempdir/zoom_capture_1280x720_rgb24.rgb    -o ~/tempdir/vidyo_1280_720_60fps_overlaied_256x256.rgb  -V ~/tempdir/zoom_reference_1280x720_rgb24.rgb

