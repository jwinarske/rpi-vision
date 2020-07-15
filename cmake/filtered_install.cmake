
#
# Filtered Installation of External Projects
#

install(FILES

    ${EXT_CMAKE_STAGING_PREFIX}/bin/vxPop
    ${EXT_CMAKE_STAGING_PREFIX}/bin/cannyEdgeDetector
    ${EXT_CMAKE_STAGING_PREFIX}/bin/skinToneDetector

    ${EXT_CMAKE_STAGING_PREFIX}/bin/opencv_annotation
    ${EXT_CMAKE_STAGING_PREFIX}/bin/opencv_interactive-calibration
    ${EXT_CMAKE_STAGING_PREFIX}/bin/opencv_version
    ${EXT_CMAKE_STAGING_PREFIX}/bin/opencv_visualisation
    ${EXT_CMAKE_STAGING_PREFIX}/bin/pgm2hdr
    #${EXT_CMAKE_STAGING_PREFIX}/bin/setup_vars_opencv4.sh
    ${EXT_CMAKE_STAGING_PREFIX}/bin/vx_bug13510
    ${EXT_CMAKE_STAGING_PREFIX}/bin/vx_bug13517
    ${EXT_CMAKE_STAGING_PREFIX}/bin/vx_bug13518
    ${EXT_CMAKE_STAGING_PREFIX}/bin/vx_example
    ${EXT_CMAKE_STAGING_PREFIX}/bin/vx_query
    ${EXT_CMAKE_STAGING_PREFIX}/bin/vx_test

    PERMISSIONS PERMISSIONS OWNER_READ OWNER_WRITE OWNER_EXECUTE GROUP_READ GROUP_EXECUTE WORLD_READ WORLD_EXECUTE

    DESTINATION bin
)

install(FILES

    ${EXT_CMAKE_STAGING_PREFIX}/lib/libvx_pop.so

    ${EXT_CMAKE_STAGING_PREFIX}/bin/libopenvx-c_model.so
    ${EXT_CMAKE_STAGING_PREFIX}/bin/libopenvx-debug.so
    ${EXT_CMAKE_STAGING_PREFIX}/bin/libopenvx-extras.so
    ${EXT_CMAKE_STAGING_PREFIX}/bin/libopenvx.so
    ${EXT_CMAKE_STAGING_PREFIX}/bin/libopenvx-venum.so
    ${EXT_CMAKE_STAGING_PREFIX}/bin/libvxu.so
    
    ${EXT_CMAKE_STAGING_PREFIX}/bin/libxyz.so

    ${EXT_CMAKE_STAGING_PREFIX}/lib/libopencv_calib3d.so
    ${EXT_CMAKE_STAGING_PREFIX}/lib/libopencv_calib3d.so.4.3
    ${EXT_CMAKE_STAGING_PREFIX}/lib/libopencv_calib3d.so.4.3.0
    ${EXT_CMAKE_STAGING_PREFIX}/lib/libopencv_core.so
    ${EXT_CMAKE_STAGING_PREFIX}/lib/libopencv_core.so.4.3
    ${EXT_CMAKE_STAGING_PREFIX}/lib/libopencv_core.so.4.3.0
    ${EXT_CMAKE_STAGING_PREFIX}/lib/libopencv_dnn.so
    ${EXT_CMAKE_STAGING_PREFIX}/lib/libopencv_dnn.so.4.3
    ${EXT_CMAKE_STAGING_PREFIX}/lib/libopencv_dnn.so.4.3.0
    ${EXT_CMAKE_STAGING_PREFIX}/lib/libopencv_features2d.so
    ${EXT_CMAKE_STAGING_PREFIX}/lib/libopencv_features2d.so.4.3
    ${EXT_CMAKE_STAGING_PREFIX}/lib/libopencv_features2d.so.4.3.0
    ${EXT_CMAKE_STAGING_PREFIX}/lib/libopencv_flann.so
    ${EXT_CMAKE_STAGING_PREFIX}/lib/libopencv_flann.so.4.3
    ${EXT_CMAKE_STAGING_PREFIX}/lib/libopencv_flann.so.4.3.0
    ${EXT_CMAKE_STAGING_PREFIX}/lib/libopencv_gapi.so
    ${EXT_CMAKE_STAGING_PREFIX}/lib/libopencv_gapi.so.4.3
    ${EXT_CMAKE_STAGING_PREFIX}/lib/libopencv_gapi.so.4.3.0
    ${EXT_CMAKE_STAGING_PREFIX}/lib/libopencv_highgui.so
    ${EXT_CMAKE_STAGING_PREFIX}/lib/libopencv_highgui.so.4.3
    ${EXT_CMAKE_STAGING_PREFIX}/lib/libopencv_highgui.so.4.3.0
    ${EXT_CMAKE_STAGING_PREFIX}/lib/libopencv_imgcodecs.so
    ${EXT_CMAKE_STAGING_PREFIX}/lib/libopencv_imgcodecs.so.4.3
    ${EXT_CMAKE_STAGING_PREFIX}/lib/libopencv_imgcodecs.so.4.3.0
    ${EXT_CMAKE_STAGING_PREFIX}/lib/libopencv_imgproc.so
    ${EXT_CMAKE_STAGING_PREFIX}/lib/libopencv_imgproc.so.4.3
    ${EXT_CMAKE_STAGING_PREFIX}/lib/libopencv_imgproc.so.4.3.0
    ${EXT_CMAKE_STAGING_PREFIX}/lib/libopencv_ml.so
    ${EXT_CMAKE_STAGING_PREFIX}/lib/libopencv_ml.so.4.3
    ${EXT_CMAKE_STAGING_PREFIX}/lib/libopencv_ml.so.4.3.0
    ${EXT_CMAKE_STAGING_PREFIX}/lib/libopencv_objdetect.so
    ${EXT_CMAKE_STAGING_PREFIX}/lib/libopencv_objdetect.so.4.3
    ${EXT_CMAKE_STAGING_PREFIX}/lib/libopencv_objdetect.so.4.3.0
    ${EXT_CMAKE_STAGING_PREFIX}/lib/libopencv_photo.so
    ${EXT_CMAKE_STAGING_PREFIX}/lib/libopencv_photo.so.4.3
    ${EXT_CMAKE_STAGING_PREFIX}/lib/libopencv_photo.so.4.3.0
    ${EXT_CMAKE_STAGING_PREFIX}/lib/libopencv_stitching.so
    ${EXT_CMAKE_STAGING_PREFIX}/lib/libopencv_stitching.so.4.3
    ${EXT_CMAKE_STAGING_PREFIX}/lib/libopencv_stitching.so.4.3.0
    ${EXT_CMAKE_STAGING_PREFIX}/lib/libopencv_video.so
    ${EXT_CMAKE_STAGING_PREFIX}/lib/libopencv_video.so.4.3
    ${EXT_CMAKE_STAGING_PREFIX}/lib/libopencv_video.so.4.3.0
    ${EXT_CMAKE_STAGING_PREFIX}/lib/libopencv_videoio.so
    ${EXT_CMAKE_STAGING_PREFIX}/lib/libopencv_videoio.so.4.3
    ${EXT_CMAKE_STAGING_PREFIX}/lib/libopencv_videoio.so.4.3.0

    #${EXT_CMAKE_STAGING_PREFIX}/lib/cmake/opencv4/OpenCVConfig.cmake
    #${EXT_CMAKE_STAGING_PREFIX}/lib/cmake/opencv4/OpenCVConfig-version.cmake
    #${EXT_CMAKE_STAGING_PREFIX}/lib/cmake/opencv4/OpenCVModules.cmake
    #${EXT_CMAKE_STAGING_PREFIX}/lib/cmake/opencv4/OpenCVModules-release.cmake

    DESTINATION lib${INSTALL_LIB_SUFFIX}
)

if(FALSE)

    install(FILES

        ${EXT_CMAKE_STAGING_PREFIX}/share/opencv4/valgrind_3rdparty.supp
        ${EXT_CMAKE_STAGING_PREFIX}/share/opencv4/valgrind.supp

        DESTINATION share/opencv4
    )

endif()

install(FILES

    ${EXT_CMAKE_STAGING_PREFIX}/share/licenses/opencv4/ade-LICENSE
    ${EXT_CMAKE_STAGING_PREFIX}/share/licenses/opencv4/ittnotify-LICENSE.BSD
    ${EXT_CMAKE_STAGING_PREFIX}/share/licenses/opencv4/ittnotify-LICENSE.GPL
    ${EXT_CMAKE_STAGING_PREFIX}/share/licenses/opencv4/jasper-copyright
    ${EXT_CMAKE_STAGING_PREFIX}/share/licenses/opencv4/jasper-LICENSE
    ${EXT_CMAKE_STAGING_PREFIX}/share/licenses/opencv4/jasper-README
    ${EXT_CMAKE_STAGING_PREFIX}/share/licenses/opencv4/libjpeg-turbo-LICENSE.md
    ${EXT_CMAKE_STAGING_PREFIX}/share/licenses/opencv4/libjpeg-turbo-README.ijg
    ${EXT_CMAKE_STAGING_PREFIX}/share/licenses/opencv4/libjpeg-turbo-README.md
    ${EXT_CMAKE_STAGING_PREFIX}/share/licenses/opencv4/libtiff-COPYRIGHT
    ${EXT_CMAKE_STAGING_PREFIX}/share/licenses/opencv4/opencl-headers-LICENSE.txt
#    ${EXT_CMAKE_STAGING_PREFIX}/share/licenses/opencv4/openexr-AUTHORS.ilmbase
#    ${EXT_CMAKE_STAGING_PREFIX}/share/licenses/opencv4/openexr-AUTHORS.openexr
#    ${EXT_CMAKE_STAGING_PREFIX}/share/licenses/opencv4/openexr-LICENSE
    ${EXT_CMAKE_STAGING_PREFIX}/share/licenses/opencv4/protobuf-LICENSE
    ${EXT_CMAKE_STAGING_PREFIX}/share/licenses/opencv4/protobuf-README.md
    ${EXT_CMAKE_STAGING_PREFIX}/share/licenses/opencv4/quirc-LICENSE
    ${EXT_CMAKE_STAGING_PREFIX}/share/licenses/opencv4/SoftFloat-COPYING.txt

    DESTINATION share/licenses/opencv4
)

install(FILES

    ${EXT_CMAKE_STAGING_PREFIX}/share/opencv4/haarcascades/haarcascade_eye_tree_eyeglasses.xml
    ${EXT_CMAKE_STAGING_PREFIX}/share/opencv4/haarcascades/haarcascade_eye.xml
    ${EXT_CMAKE_STAGING_PREFIX}/share/opencv4/haarcascades/haarcascade_frontalcatface_extended.xml
    ${EXT_CMAKE_STAGING_PREFIX}/share/opencv4/haarcascades/haarcascade_frontalcatface.xml
    ${EXT_CMAKE_STAGING_PREFIX}/share/opencv4/haarcascades/haarcascade_frontalface_alt2.xml
    ${EXT_CMAKE_STAGING_PREFIX}/share/opencv4/haarcascades/haarcascade_frontalface_alt_tree.xml
    ${EXT_CMAKE_STAGING_PREFIX}/share/opencv4/haarcascades/haarcascade_frontalface_alt.xml
    ${EXT_CMAKE_STAGING_PREFIX}/share/opencv4/haarcascades/haarcascade_frontalface_default.xml
    ${EXT_CMAKE_STAGING_PREFIX}/share/opencv4/haarcascades/haarcascade_fullbody.xml
    ${EXT_CMAKE_STAGING_PREFIX}/share/opencv4/haarcascades/haarcascade_lefteye_2splits.xml
    ${EXT_CMAKE_STAGING_PREFIX}/share/opencv4/haarcascades/haarcascade_licence_plate_rus_16stages.xml
    ${EXT_CMAKE_STAGING_PREFIX}/share/opencv4/haarcascades/haarcascade_lowerbody.xml
    ${EXT_CMAKE_STAGING_PREFIX}/share/opencv4/haarcascades/haarcascade_profileface.xml
    ${EXT_CMAKE_STAGING_PREFIX}/share/opencv4/haarcascades/haarcascade_righteye_2splits.xml
    ${EXT_CMAKE_STAGING_PREFIX}/share/opencv4/haarcascades/haarcascade_russian_plate_number.xml
    ${EXT_CMAKE_STAGING_PREFIX}/share/opencv4/haarcascades/haarcascade_smile.xml
    ${EXT_CMAKE_STAGING_PREFIX}/share/opencv4/haarcascades/haarcascade_upperbody.xml

    DESTINATION share/opencv4/haarcascades
)

install(FILES

    ${EXT_CMAKE_STAGING_PREFIX}/share/opencv4/lbpcascades/lbpcascade_frontalcatface.xml
    ${EXT_CMAKE_STAGING_PREFIX}/share/opencv4/lbpcascades/lbpcascade_frontalface_improved.xml
    ${EXT_CMAKE_STAGING_PREFIX}/share/opencv4/lbpcascades/lbpcascade_frontalface.xml
    ${EXT_CMAKE_STAGING_PREFIX}/share/opencv4/lbpcascades/lbpcascade_profileface.xml
    ${EXT_CMAKE_STAGING_PREFIX}/share/opencv4/lbpcascades/lbpcascade_silverware.xml

    DESTINATION share/opencv4/lbpcascades
)
