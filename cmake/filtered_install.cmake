
#
# Filtered Installation of External Projects
#

install(PROGRAMS

    ${EXT_CMAKE_STAGING_PREFIX}/bin/vxPop
    ${EXT_CMAKE_STAGING_PREFIX}/bin/cannyEdgeDetector
    ${EXT_CMAKE_STAGING_PREFIX}/bin/skinToneDetector

    ${EXT_CMAKE_STAGING_PREFIX}/bin/opencv_annotation
    ${EXT_CMAKE_STAGING_PREFIX}/bin/opencv_interactive-calibration
    ${EXT_CMAKE_STAGING_PREFIX}/bin/opencv_version
    ${EXT_CMAKE_STAGING_PREFIX}/bin/opencv_visualisation

    #${EXT_CMAKE_STAGING_PREFIX}/bin/pgm2hdr

    DESTINATION bin
)

install(PROGRAMS

    #${EXT_CMAKE_STAGING_PREFIX}/bin/vx_bug13510
    #${EXT_CMAKE_STAGING_PREFIX}/bin/vx_bug13517
    #${EXT_CMAKE_STAGING_PREFIX}/bin/vx_bug13518
    ${EXT_CMAKE_STAGING_PREFIX}/bin/vx_example
    ${EXT_CMAKE_STAGING_PREFIX}/bin/vx_query
    ${EXT_CMAKE_STAGING_PREFIX}/bin/vx_test

    ${CMAKE_BINARY_DIR}/openvx-cts-prefix/src/openvx-cts-build/bin/vx_test_conformance

    DESTINATION bin

    COMPONENT test
)

install(FILES

    ${EXT_CMAKE_STAGING_PREFIX}/bin/libopenvx.so
    ${EXT_CMAKE_STAGING_PREFIX}/bin/libvxu.so
    ${EXT_CMAKE_STAGING_PREFIX}/bin/libopenvx-c_model.so
    ${EXT_CMAKE_STAGING_PREFIX}/bin/libopenvx-debug.so
    ${EXT_CMAKE_STAGING_PREFIX}/bin/libopenvx-extras.so
    ${EXT_CMAKE_STAGING_PREFIX}/bin/libopenvx-venum.so
    ${EXT_CMAKE_STAGING_PREFIX}/bin/libxyz.so

    ${EXT_CMAKE_STAGING_PREFIX}/bin/libtest-testmodule.so

    DESTINATION bin${INSTALL_TRIPLE_SUFFIX}
)

install(FILES

    ${EXT_CMAKE_STAGING_PREFIX}/bin/libxyz.so

    ${EXT_CMAKE_STAGING_PREFIX}/bin/libtest-testmodule.so

    DESTINATION bin${INSTALL_TRIPLE_SUFFIX}

    COMPONENT test
)

install(FILES

    ${EXT_CMAKE_STAGING_PREFIX}/lib/libvx_pop.so

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

    ${EXT_CMAKE_STAGING_PREFIX}/lib/libvxa.so

    DESTINATION lib${INSTALL_TRIPLE_SUFFIX}
)

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

if(BUILD_OPENCV_WITH_PYTHON_EXAMPLES)

    install(FILES

        ${EXT_CMAKE_STAGING_PREFIX}/share/opencv4/samples/python/_coverage.py
        ${EXT_CMAKE_STAGING_PREFIX}/share/opencv4/samples/python/_doc.py
        ${EXT_CMAKE_STAGING_PREFIX}/share/opencv4/samples/python/asift.py
        ${EXT_CMAKE_STAGING_PREFIX}/share/opencv4/samples/python/browse.py
        ${EXT_CMAKE_STAGING_PREFIX}/share/opencv4/samples/python/calibrate.py
        ${EXT_CMAKE_STAGING_PREFIX}/share/opencv4/samples/python/camera_calibration_show_extrinsics.py
        ${EXT_CMAKE_STAGING_PREFIX}/share/opencv4/samples/python/camshift.py
        ${EXT_CMAKE_STAGING_PREFIX}/share/opencv4/samples/python/coherence.py
        ${EXT_CMAKE_STAGING_PREFIX}/share/opencv4/samples/python/color_histogram.py
        ${EXT_CMAKE_STAGING_PREFIX}/share/opencv4/samples/python/common.py
        ${EXT_CMAKE_STAGING_PREFIX}/share/opencv4/samples/python/contours.py
        ${EXT_CMAKE_STAGING_PREFIX}/share/opencv4/samples/python/deconvolution.py
        ${EXT_CMAKE_STAGING_PREFIX}/share/opencv4/samples/python/demo.py
        ${EXT_CMAKE_STAGING_PREFIX}/share/opencv4/samples/python/dft.py
        ${EXT_CMAKE_STAGING_PREFIX}/share/opencv4/samples/python/digits.py
        ${EXT_CMAKE_STAGING_PREFIX}/share/opencv4/samples/python/digits_adjust.py
        ${EXT_CMAKE_STAGING_PREFIX}/share/opencv4/samples/python/digits_video.py
        ${EXT_CMAKE_STAGING_PREFIX}/share/opencv4/samples/python/dis_opt_flow.py
        ${EXT_CMAKE_STAGING_PREFIX}/share/opencv4/samples/python/distrans.py
        ${EXT_CMAKE_STAGING_PREFIX}/share/opencv4/samples/python/drawing.py
        ${EXT_CMAKE_STAGING_PREFIX}/share/opencv4/samples/python/edge.py
        ${EXT_CMAKE_STAGING_PREFIX}/share/opencv4/samples/python/facedetect.py
        ${EXT_CMAKE_STAGING_PREFIX}/share/opencv4/samples/python/feature_homography.py
        ${EXT_CMAKE_STAGING_PREFIX}/share/opencv4/samples/python/find_obj.py
        ${EXT_CMAKE_STAGING_PREFIX}/share/opencv4/samples/python/fitline.py
        ${EXT_CMAKE_STAGING_PREFIX}/share/opencv4/samples/python/floodfill.py
        ${EXT_CMAKE_STAGING_PREFIX}/share/opencv4/samples/python/gabor_threads.py
        ${EXT_CMAKE_STAGING_PREFIX}/share/opencv4/samples/python/gaussian_mix.py
        ${EXT_CMAKE_STAGING_PREFIX}/share/opencv4/samples/python/grabcut.py
        ${EXT_CMAKE_STAGING_PREFIX}/share/opencv4/samples/python/hist.py
        ${EXT_CMAKE_STAGING_PREFIX}/share/opencv4/samples/python/houghcircles.py
        ${EXT_CMAKE_STAGING_PREFIX}/share/opencv4/samples/python/houghlines.py
        ${EXT_CMAKE_STAGING_PREFIX}/share/opencv4/samples/python/inpaint.py
        ${EXT_CMAKE_STAGING_PREFIX}/share/opencv4/samples/python/kalman.py
        ${EXT_CMAKE_STAGING_PREFIX}/share/opencv4/samples/python/kmeans.py
        ${EXT_CMAKE_STAGING_PREFIX}/share/opencv4/samples/python/laplace.py
        ${EXT_CMAKE_STAGING_PREFIX}/share/opencv4/samples/python/lappyr.py
        ${EXT_CMAKE_STAGING_PREFIX}/share/opencv4/samples/python/letter_recog.py
        ${EXT_CMAKE_STAGING_PREFIX}/share/opencv4/samples/python/lk_homography.py
        ${EXT_CMAKE_STAGING_PREFIX}/share/opencv4/samples/python/lk_track.py
        ${EXT_CMAKE_STAGING_PREFIX}/share/opencv4/samples/python/logpolar.py
        ${EXT_CMAKE_STAGING_PREFIX}/share/opencv4/samples/python/morphology.py
        ${EXT_CMAKE_STAGING_PREFIX}/share/opencv4/samples/python/mosse.py
        ${EXT_CMAKE_STAGING_PREFIX}/share/opencv4/samples/python/mouse_and_match.py
        ${EXT_CMAKE_STAGING_PREFIX}/share/opencv4/samples/python/mser.py
        ${EXT_CMAKE_STAGING_PREFIX}/share/opencv4/samples/python/opencv_version.py
        ${EXT_CMAKE_STAGING_PREFIX}/share/opencv4/samples/python/opt_flow.py
        ${EXT_CMAKE_STAGING_PREFIX}/share/opencv4/samples/python/peopledetect.py
        ${EXT_CMAKE_STAGING_PREFIX}/share/opencv4/samples/python/plane_ar.py
        ${EXT_CMAKE_STAGING_PREFIX}/share/opencv4/samples/python/plane_tracker.py
        ${EXT_CMAKE_STAGING_PREFIX}/share/opencv4/samples/python/squares.py
        ${EXT_CMAKE_STAGING_PREFIX}/share/opencv4/samples/python/stereo_match.py
        ${EXT_CMAKE_STAGING_PREFIX}/share/opencv4/samples/python/stitching.py
        ${EXT_CMAKE_STAGING_PREFIX}/share/opencv4/samples/python/stitching_detailed.py
        ${EXT_CMAKE_STAGING_PREFIX}/share/opencv4/samples/python/text_skewness_correction.py
        ${EXT_CMAKE_STAGING_PREFIX}/share/opencv4/samples/python/texture_flow.py
        ${EXT_CMAKE_STAGING_PREFIX}/share/opencv4/samples/python/tst_scene_render.py
        ${EXT_CMAKE_STAGING_PREFIX}/share/opencv4/samples/python/turing.py
        ${EXT_CMAKE_STAGING_PREFIX}/share/opencv4/samples/python/video.py
        ${EXT_CMAKE_STAGING_PREFIX}/share/opencv4/samples/python/video_threaded.py
        ${EXT_CMAKE_STAGING_PREFIX}/share/opencv4/samples/python/video_v4l2.py
        ${EXT_CMAKE_STAGING_PREFIX}/share/opencv4/samples/python/watershed.py

        DESTINATION share/opencv4/samples/python

        COMPONENT example
    )

endif()

if(BUILD_OPENCV_WITH_TESTS)

    install(PROGRAMS

        ${CMAKE_BINARY_DIR}/opencv-prefix/src/opencv-build/bin/opencv_perf_calib3d
        ${CMAKE_BINARY_DIR}/opencv-prefix/src/opencv-build/bin/opencv_perf_core
        ${CMAKE_BINARY_DIR}/opencv-prefix/src/opencv-build/bin/opencv_perf_dnn
        ${CMAKE_BINARY_DIR}/opencv-prefix/src/opencv-build/bin/opencv_perf_features2d
        ${CMAKE_BINARY_DIR}/opencv-prefix/src/opencv-build/bin/opencv_perf_gapi
        ${CMAKE_BINARY_DIR}/opencv-prefix/src/opencv-build/bin/opencv_perf_imgcodecs
        ${CMAKE_BINARY_DIR}/opencv-prefix/src/opencv-build/bin/opencv_perf_imgproc
        ${CMAKE_BINARY_DIR}/opencv-prefix/src/opencv-build/bin/opencv_perf_objdetect
        ${CMAKE_BINARY_DIR}/opencv-prefix/src/opencv-build/bin/opencv_perf_photo
        ${CMAKE_BINARY_DIR}/opencv-prefix/src/opencv-build/bin/opencv_perf_stitching
        ${CMAKE_BINARY_DIR}/opencv-prefix/src/opencv-build/bin/opencv_perf_video
        ${CMAKE_BINARY_DIR}/opencv-prefix/src/opencv-build/bin/opencv_perf_videoio

        DESTINATION bin

        COMPONENT test
    )
    
endif()

if(BUILD_OPENCV_WITH_EXAMPLES)

    install(PROGRAMS

        ${CMAKE_BINARY_DIR}/opencv-prefix/src/opencv-build/bin/example_cpp_3calibration
        ${CMAKE_BINARY_DIR}/opencv-prefix/src/opencv-build/bin/example_cpp_application_trace
        ${CMAKE_BINARY_DIR}/opencv-prefix/src/opencv-build/bin/example_cpp_bgfg_segm
        ${CMAKE_BINARY_DIR}/opencv-prefix/src/opencv-build/bin/example_cpp_calibration
        ${CMAKE_BINARY_DIR}/opencv-prefix/src/opencv-build/bin/example_cpp_camshiftdemo
        ${CMAKE_BINARY_DIR}/opencv-prefix/src/opencv-build/bin/example_cpp_cloning_demo
        ${CMAKE_BINARY_DIR}/opencv-prefix/src/opencv-build/bin/example_cpp_cloning_gui
        ${CMAKE_BINARY_DIR}/opencv-prefix/src/opencv-build/bin/example_cpp_connected_components
        ${CMAKE_BINARY_DIR}/opencv-prefix/src/opencv-build/bin/example_cpp_contours2
        ${CMAKE_BINARY_DIR}/opencv-prefix/src/opencv-build/bin/example_cpp_convexhull
        ${CMAKE_BINARY_DIR}/opencv-prefix/src/opencv-build/bin/example_cpp_cout_mat
        ${CMAKE_BINARY_DIR}/opencv-prefix/src/opencv-build/bin/example_cpp_create_mask
        ${CMAKE_BINARY_DIR}/opencv-prefix/src/opencv-build/bin/example_cpp_dbt_face_detection
        ${CMAKE_BINARY_DIR}/opencv-prefix/src/opencv-build/bin/example_cpp_delaunay2
        ${CMAKE_BINARY_DIR}/opencv-prefix/src/opencv-build/bin/example_cpp_demhist
        ${CMAKE_BINARY_DIR}/opencv-prefix/src/opencv-build/bin/example_cpp_detect_blob
        ${CMAKE_BINARY_DIR}/opencv-prefix/src/opencv-build/bin/example_cpp_detect_mser
        ${CMAKE_BINARY_DIR}/opencv-prefix/src/opencv-build/bin/example_cpp_dft
        ${CMAKE_BINARY_DIR}/opencv-prefix/src/opencv-build/bin/example_cpp_digits
        ${CMAKE_BINARY_DIR}/opencv-prefix/src/opencv-build/bin/example_cpp_dis_opticalflow
        ${CMAKE_BINARY_DIR}/opencv-prefix/src/opencv-build/bin/example_cpp_distrans
        ${CMAKE_BINARY_DIR}/opencv-prefix/src/opencv-build/bin/example_cpp_drawing
        ${CMAKE_BINARY_DIR}/opencv-prefix/src/opencv-build/bin/example_cpp_edge
        ${CMAKE_BINARY_DIR}/opencv-prefix/src/opencv-build/bin/example_cpp_ela
        ${CMAKE_BINARY_DIR}/opencv-prefix/src/opencv-build/bin/example_cpp_em
        ${CMAKE_BINARY_DIR}/opencv-prefix/src/opencv-build/bin/example_cpp_example
        ${CMAKE_BINARY_DIR}/opencv-prefix/src/opencv-build/bin/example_cpp_facedetect
        ${CMAKE_BINARY_DIR}/opencv-prefix/src/opencv-build/bin/example_cpp_facial_features
        ${CMAKE_BINARY_DIR}/opencv-prefix/src/opencv-build/bin/example_cpp_falsecolor
        ${CMAKE_BINARY_DIR}/opencv-prefix/src/opencv-build/bin/example_cpp_fback
        ${CMAKE_BINARY_DIR}/opencv-prefix/src/opencv-build/bin/example_cpp_ffilldemo
        ${CMAKE_BINARY_DIR}/opencv-prefix/src/opencv-build/bin/example_cpp_filestorage
        ${CMAKE_BINARY_DIR}/opencv-prefix/src/opencv-build/bin/example_cpp_fitellipse
        ${CMAKE_BINARY_DIR}/opencv-prefix/src/opencv-build/bin/example_cpp_grabcut
        ${CMAKE_BINARY_DIR}/opencv-prefix/src/opencv-build/bin/example_cpp_image_alignment
        ${CMAKE_BINARY_DIR}/opencv-prefix/src/opencv-build/bin/example_cpp_imagelist_creator
        ${CMAKE_BINARY_DIR}/opencv-prefix/src/opencv-build/bin/example_cpp_imagelist_reader
        ${CMAKE_BINARY_DIR}/opencv-prefix/src/opencv-build/bin/example_cpp_inpaint
        ${CMAKE_BINARY_DIR}/opencv-prefix/src/opencv-build/bin/example_cpp_intelligent_scissors
        ${CMAKE_BINARY_DIR}/opencv-prefix/src/opencv-build/bin/example_cpp_intersectExample
        ${CMAKE_BINARY_DIR}/opencv-prefix/src/opencv-build/bin/example_cpp_kalman
        ${CMAKE_BINARY_DIR}/opencv-prefix/src/opencv-build/bin/example_cpp_kmeans
        ${CMAKE_BINARY_DIR}/opencv-prefix/src/opencv-build/bin/example_cpp_laplace
        ${CMAKE_BINARY_DIR}/opencv-prefix/src/opencv-build/bin/example_cpp_letter_recog
        ${CMAKE_BINARY_DIR}/opencv-prefix/src/opencv-build/bin/example_cpp_lkdemo
        ${CMAKE_BINARY_DIR}/opencv-prefix/src/opencv-build/bin/example_cpp_logistic_regression
        ${CMAKE_BINARY_DIR}/opencv-prefix/src/opencv-build/bin/example_cpp_mask_tmpl
        ${CMAKE_BINARY_DIR}/opencv-prefix/src/opencv-build/bin/example_cpp_matchmethod_orb_akaze_brisk
        ${CMAKE_BINARY_DIR}/opencv-prefix/src/opencv-build/bin/example_cpp_minarea
        ${CMAKE_BINARY_DIR}/opencv-prefix/src/opencv-build/bin/example_cpp_morphology2
        ${CMAKE_BINARY_DIR}/opencv-prefix/src/opencv-build/bin/example_cpp_neural_network
        ${CMAKE_BINARY_DIR}/opencv-prefix/src/opencv-build/bin/example_cpp_npr_demo
        ${CMAKE_BINARY_DIR}/opencv-prefix/src/opencv-build/bin/example_cpp_opencv_version
        ${CMAKE_BINARY_DIR}/opencv-prefix/src/opencv-build/bin/example_cpp_pca
        ${CMAKE_BINARY_DIR}/opencv-prefix/src/opencv-build/bin/example_cpp_peopledetect
        ${CMAKE_BINARY_DIR}/opencv-prefix/src/opencv-build/bin/example_cpp_phase_corr
        ${CMAKE_BINARY_DIR}/opencv-prefix/src/opencv-build/bin/example_cpp_points_classifier
        ${CMAKE_BINARY_DIR}/opencv-prefix/src/opencv-build/bin/example_cpp_polar_transforms
        ${CMAKE_BINARY_DIR}/opencv-prefix/src/opencv-build/bin/example_cpp_qrcode
        ${CMAKE_BINARY_DIR}/opencv-prefix/src/opencv-build/bin/example_cpp_segment_objects
        ${CMAKE_BINARY_DIR}/opencv-prefix/src/opencv-build/bin/example_cpp_select3dobj
        ${CMAKE_BINARY_DIR}/opencv-prefix/src/opencv-build/bin/example_cpp_simd_basic
        ${CMAKE_BINARY_DIR}/opencv-prefix/src/opencv-build/bin/example_cpp_smiledetect
        ${CMAKE_BINARY_DIR}/opencv-prefix/src/opencv-build/bin/example_cpp_squares
        ${CMAKE_BINARY_DIR}/opencv-prefix/src/opencv-build/bin/example_cpp_stereo_calib
        ${CMAKE_BINARY_DIR}/opencv-prefix/src/opencv-build/bin/example_cpp_stereo_match
        ${CMAKE_BINARY_DIR}/opencv-prefix/src/opencv-build/bin/example_cpp_stitching
        ${CMAKE_BINARY_DIR}/opencv-prefix/src/opencv-build/bin/example_cpp_stitching_detailed
        ${CMAKE_BINARY_DIR}/opencv-prefix/src/opencv-build/bin/example_cpp_text_skewness_correction
        ${CMAKE_BINARY_DIR}/opencv-prefix/src/opencv-build/bin/example_cpp_train_HOG
        ${CMAKE_BINARY_DIR}/opencv-prefix/src/opencv-build/bin/example_cpp_train_svmsgd
        ${CMAKE_BINARY_DIR}/opencv-prefix/src/opencv-build/bin/example_cpp_travelsalesman
        ${CMAKE_BINARY_DIR}/opencv-prefix/src/opencv-build/bin/example_cpp_tree_engine
        ${CMAKE_BINARY_DIR}/opencv-prefix/src/opencv-build/bin/example_cpp_videocapture_basic
        ${CMAKE_BINARY_DIR}/opencv-prefix/src/opencv-build/bin/example_cpp_videocapture_camera
        ${CMAKE_BINARY_DIR}/opencv-prefix/src/opencv-build/bin/example_cpp_videocapture_gphoto2_autofocus
        ${CMAKE_BINARY_DIR}/opencv-prefix/src/opencv-build/bin/example_cpp_videocapture_gstreamer_pipeline
        ${CMAKE_BINARY_DIR}/opencv-prefix/src/opencv-build/bin/example_cpp_videocapture_image_sequence
        ${CMAKE_BINARY_DIR}/opencv-prefix/src/opencv-build/bin/example_cpp_videocapture_intelperc
        ${CMAKE_BINARY_DIR}/opencv-prefix/src/opencv-build/bin/example_cpp_videocapture_openni
        ${CMAKE_BINARY_DIR}/opencv-prefix/src/opencv-build/bin/example_cpp_videocapture_starter
        ${CMAKE_BINARY_DIR}/opencv-prefix/src/opencv-build/bin/example_cpp_videowriter_basic
        ${CMAKE_BINARY_DIR}/opencv-prefix/src/opencv-build/bin/example_cpp_warpPerspective_demo
        ${CMAKE_BINARY_DIR}/opencv-prefix/src/opencv-build/bin/example_cpp_watershed
        ${CMAKE_BINARY_DIR}/opencv-prefix/src/opencv-build/bin/example_dnn_classification
        ${CMAKE_BINARY_DIR}/opencv-prefix/src/opencv-build/bin/example_dnn_colorization
        ${CMAKE_BINARY_DIR}/opencv-prefix/src/opencv-build/bin/example_dnn_object_detection
        ${CMAKE_BINARY_DIR}/opencv-prefix/src/opencv-build/bin/example_dnn_openpose
        ${CMAKE_BINARY_DIR}/opencv-prefix/src/opencv-build/bin/example_dnn_segmentation
        ${CMAKE_BINARY_DIR}/opencv-prefix/src/opencv-build/bin/example_dnn_text_detection
        ${CMAKE_BINARY_DIR}/opencv-prefix/src/opencv-build/bin/example_gapi_api_example
        ${CMAKE_BINARY_DIR}/opencv-prefix/src/opencv-build/bin/example_gapi_api_ref_snippets
        ${CMAKE_BINARY_DIR}/opencv-prefix/src/opencv-build/bin/example_gapi_draw_example
        ${CMAKE_BINARY_DIR}/opencv-prefix/src/opencv-build/bin/example_gapi_kernel_api_snippets
        ${CMAKE_BINARY_DIR}/opencv-prefix/src/opencv-build/bin/example_gapi_privacy_masking_camera
        ${CMAKE_BINARY_DIR}/opencv-prefix/src/opencv-build/bin/example_gapi_slides_sobel_cv
        ${CMAKE_BINARY_DIR}/opencv-prefix/src/opencv-build/bin/example_gapi_slides_sobel_gapi
        ${CMAKE_BINARY_DIR}/opencv-prefix/src/opencv-build/bin/example_tapi_bgfg_segm
        ${CMAKE_BINARY_DIR}/opencv-prefix/src/opencv-build/bin/example_tapi_camshift
        ${CMAKE_BINARY_DIR}/opencv-prefix/src/opencv-build/bin/example_tapi_clahe
        ${CMAKE_BINARY_DIR}/opencv-prefix/src/opencv-build/bin/example_tapi_dense_optical_flow
        ${CMAKE_BINARY_DIR}/opencv-prefix/src/opencv-build/bin/example_tapi_hog
        ${CMAKE_BINARY_DIR}/opencv-prefix/src/opencv-build/bin/example_tapi_opencl_custom_kernel
        ${CMAKE_BINARY_DIR}/opencv-prefix/src/opencv-build/bin/example_tapi_pyrlk_optical_flow
        ${CMAKE_BINARY_DIR}/opencv-prefix/src/opencv-build/bin/example_tapi_squares
        ${CMAKE_BINARY_DIR}/opencv-prefix/src/opencv-build/bin/example_tapi_ufacedetect
        ${CMAKE_BINARY_DIR}/opencv-prefix/src/opencv-build/bin/example_tutorial_AddingImages
        ${CMAKE_BINARY_DIR}/opencv-prefix/src/opencv-build/bin/example_tutorial_AddingImagesTrackbar
        ${CMAKE_BINARY_DIR}/opencv-prefix/src/opencv-build/bin/example_tutorial_age_gender_emotion_recognition
        ${CMAKE_BINARY_DIR}/opencv-prefix/src/opencv-build/bin/example_tutorial_AKAZE_match
        ${CMAKE_BINARY_DIR}/opencv-prefix/src/opencv-build/bin/example_tutorial_anisotropic_image_segmentation
        ${CMAKE_BINARY_DIR}/opencv-prefix/src/opencv-build/bin/example_tutorial_BasicLinearTransforms
        ${CMAKE_BINARY_DIR}/opencv-prefix/src/opencv-build/bin/example_tutorial_BasicLinearTransformsTrackbar
        ${CMAKE_BINARY_DIR}/opencv-prefix/src/opencv-build/bin/example_tutorial_bg_sub
        ${CMAKE_BINARY_DIR}/opencv-prefix/src/opencv-build/bin/example_tutorial_calcBackProject_Demo1
        ${CMAKE_BINARY_DIR}/opencv-prefix/src/opencv-build/bin/example_tutorial_calcBackProject_Demo2
        ${CMAKE_BINARY_DIR}/opencv-prefix/src/opencv-build/bin/example_tutorial_calcHist_Demo
        ${CMAKE_BINARY_DIR}/opencv-prefix/src/opencv-build/bin/example_tutorial_camera_calibration
        ${CMAKE_BINARY_DIR}/opencv-prefix/src/opencv-build/bin/example_tutorial_camshift
        ${CMAKE_BINARY_DIR}/opencv-prefix/src/opencv-build/bin/example_tutorial_CannyDetector_Demo
        ${CMAKE_BINARY_DIR}/opencv-prefix/src/opencv-build/bin/example_tutorial_changing_contrast_brightness_image
        ${CMAKE_BINARY_DIR}/opencv-prefix/src/opencv-build/bin/example_tutorial_cloning_demo
        ${CMAKE_BINARY_DIR}/opencv-prefix/src/opencv-build/bin/example_tutorial_cloning_gui
        ${CMAKE_BINARY_DIR}/opencv-prefix/src/opencv-build/bin/example_tutorial_compareHist_Demo
        ${CMAKE_BINARY_DIR}/opencv-prefix/src/opencv-build/bin/example_tutorial_compatibility_test
        ${CMAKE_BINARY_DIR}/opencv-prefix/src/opencv-build/bin/example_tutorial_copyMakeBorder_demo
        ${CMAKE_BINARY_DIR}/opencv-prefix/src/opencv-build/bin/example_tutorial_core_mat_checkVector
        ${CMAKE_BINARY_DIR}/opencv-prefix/src/opencv-build/bin/example_tutorial_core_merge
        ${CMAKE_BINARY_DIR}/opencv-prefix/src/opencv-build/bin/example_tutorial_core_reduce
        ${CMAKE_BINARY_DIR}/opencv-prefix/src/opencv-build/bin/example_tutorial_core_split
        ${CMAKE_BINARY_DIR}/opencv-prefix/src/opencv-build/bin/example_tutorial_core_various
        ${CMAKE_BINARY_DIR}/opencv-prefix/src/opencv-build/bin/example_tutorial_cornerDetector_Demo
        ${CMAKE_BINARY_DIR}/opencv-prefix/src/opencv-build/bin/example_tutorial_cornerHarris_Demo
        ${CMAKE_BINARY_DIR}/opencv-prefix/src/opencv-build/bin/example_tutorial_cornerSubPix_Demo
        ${CMAKE_BINARY_DIR}/opencv-prefix/src/opencv-build/bin/example_tutorial_decolor
        ${CMAKE_BINARY_DIR}/opencv-prefix/src/opencv-build/bin/example_tutorial_decompose_homography
        ${CMAKE_BINARY_DIR}/opencv-prefix/src/opencv-build/bin/example_tutorial_discrete_fourier_transform
        ${CMAKE_BINARY_DIR}/opencv-prefix/src/opencv-build/bin/example_tutorial_display_image
        ${CMAKE_BINARY_DIR}/opencv-prefix/src/opencv-build/bin/example_tutorial_documentation
        ${CMAKE_BINARY_DIR}/opencv-prefix/src/opencv-build/bin/example_tutorial_Drawing_1
        ${CMAKE_BINARY_DIR}/opencv-prefix/src/opencv-build/bin/example_tutorial_Drawing_2
        ${CMAKE_BINARY_DIR}/opencv-prefix/src/opencv-build/bin/example_tutorial_EqualizeHist_Demo
        ${CMAKE_BINARY_DIR}/opencv-prefix/src/opencv-build/bin/example_tutorial_face_beautification
        ${CMAKE_BINARY_DIR}/opencv-prefix/src/opencv-build/bin/example_tutorial_file_input_output
        ${CMAKE_BINARY_DIR}/opencv-prefix/src/opencv-build/bin/example_tutorial_filter2D_demo
        ${CMAKE_BINARY_DIR}/opencv-prefix/src/opencv-build/bin/example_tutorial_findContours_demo
        ${CMAKE_BINARY_DIR}/opencv-prefix/src/opencv-build/bin/example_tutorial_gdal-image
        ${CMAKE_BINARY_DIR}/opencv-prefix/src/opencv-build/bin/example_tutorial_generalContours_demo1
        ${CMAKE_BINARY_DIR}/opencv-prefix/src/opencv-build/bin/example_tutorial_generalContours_demo2
        ${CMAKE_BINARY_DIR}/opencv-prefix/src/opencv-build/bin/example_tutorial_Geometric_Transforms_Demo
        ${CMAKE_BINARY_DIR}/opencv-prefix/src/opencv-build/bin/example_tutorial_goodFeaturesToTrack_Demo
        ${CMAKE_BINARY_DIR}/opencv-prefix/src/opencv-build/bin/example_tutorial_hdr_imaging
        ${CMAKE_BINARY_DIR}/opencv-prefix/src/opencv-build/bin/example_tutorial_HitMiss
        ${CMAKE_BINARY_DIR}/opencv-prefix/src/opencv-build/bin/example_tutorial_homography_from_camera_displacement
        ${CMAKE_BINARY_DIR}/opencv-prefix/src/opencv-build/bin/example_tutorial_HoughCircle_Demo
        ${CMAKE_BINARY_DIR}/opencv-prefix/src/opencv-build/bin/example_tutorial_houghcircles
        ${CMAKE_BINARY_DIR}/opencv-prefix/src/opencv-build/bin/example_tutorial_houghlines
        ${CMAKE_BINARY_DIR}/opencv-prefix/src/opencv-build/bin/example_tutorial_HoughLines_Demo
        ${CMAKE_BINARY_DIR}/opencv-prefix/src/opencv-build/bin/example_tutorial_how_to_scan_images
        ${CMAKE_BINARY_DIR}/opencv-prefix/src/opencv-build/bin/example_tutorial_how_to_use_OpenCV_parallel_for_
        ${CMAKE_BINARY_DIR}/opencv-prefix/src/opencv-build/bin/example_tutorial_hull_demo
        ${CMAKE_BINARY_DIR}/opencv-prefix/src/opencv-build/bin/example_tutorial_imageSegmentation
        ${CMAKE_BINARY_DIR}/opencv-prefix/src/opencv-build/bin/example_tutorial_imgcodecs_imwrite
        ${CMAKE_BINARY_DIR}/opencv-prefix/src/opencv-build/bin/example_tutorial_imgproc_applyColorMap
        ${CMAKE_BINARY_DIR}/opencv-prefix/src/opencv-build/bin/example_tutorial_imgproc_calcHist
        ${CMAKE_BINARY_DIR}/opencv-prefix/src/opencv-build/bin/example_tutorial_imgproc_drawContours
        ${CMAKE_BINARY_DIR}/opencv-prefix/src/opencv-build/bin/example_tutorial_imgproc_HoughLinesCircles
        ${CMAKE_BINARY_DIR}/opencv-prefix/src/opencv-build/bin/example_tutorial_imgproc_HoughLinesP
        ${CMAKE_BINARY_DIR}/opencv-prefix/src/opencv-build/bin/example_tutorial_imgproc_HoughLinesPointSet
        ${CMAKE_BINARY_DIR}/opencv-prefix/src/opencv-build/bin/example_tutorial_introduction_to_pca
        ${CMAKE_BINARY_DIR}/opencv-prefix/src/opencv-build/bin/example_tutorial_introduction_to_svm
        ${CMAKE_BINARY_DIR}/opencv-prefix/src/opencv-build/bin/example_tutorial_introduction_windows_vs
        ${CMAKE_BINARY_DIR}/opencv-prefix/src/opencv-build/bin/example_tutorial_Laplace_Demo
        ${CMAKE_BINARY_DIR}/opencv-prefix/src/opencv-build/bin/example_tutorial_LATCH_match
        ${CMAKE_BINARY_DIR}/opencv-prefix/src/opencv-build/bin/example_tutorial_MatchTemplate_Demo
        ${CMAKE_BINARY_DIR}/opencv-prefix/src/opencv-build/bin/example_tutorial_mat_mask_operations
        ${CMAKE_BINARY_DIR}/opencv-prefix/src/opencv-build/bin/example_tutorial_mat_operations
        ${CMAKE_BINARY_DIR}/opencv-prefix/src/opencv-build/bin/example_tutorial_mat_the_basic_image_container
        ${CMAKE_BINARY_DIR}/opencv-prefix/src/opencv-build/bin/example_tutorial_meanshift
        ${CMAKE_BINARY_DIR}/opencv-prefix/src/opencv-build/bin/example_tutorial_moments_demo
        ${CMAKE_BINARY_DIR}/opencv-prefix/src/opencv-build/bin/example_tutorial_Morphology_1
        ${CMAKE_BINARY_DIR}/opencv-prefix/src/opencv-build/bin/example_tutorial_Morphology_2
        ${CMAKE_BINARY_DIR}/opencv-prefix/src/opencv-build/bin/example_tutorial_Morphology_3
        ${CMAKE_BINARY_DIR}/opencv-prefix/src/opencv-build/bin/example_tutorial_motion_deblur_filter
        ${CMAKE_BINARY_DIR}/opencv-prefix/src/opencv-build/bin/example_tutorial_non_linear_svms
        ${CMAKE_BINARY_DIR}/opencv-prefix/src/opencv-build/bin/example_tutorial_npr_demo
        ${CMAKE_BINARY_DIR}/opencv-prefix/src/opencv-build/bin/example_tutorial_objectDetection
        ${CMAKE_BINARY_DIR}/opencv-prefix/src/opencv-build/bin/example_tutorial_optical_flow
        ${CMAKE_BINARY_DIR}/opencv-prefix/src/opencv-build/bin/example_tutorial_optical_flow_dense
        ${CMAKE_BINARY_DIR}/opencv-prefix/src/opencv-build/bin/example_tutorial_out_of_focus_deblur_filter
        ${CMAKE_BINARY_DIR}/opencv-prefix/src/opencv-build/bin/example_tutorial_panorama_stitching_rotating_camera
        ${CMAKE_BINARY_DIR}/opencv-prefix/src/opencv-build/bin/example_tutorial_periodic_noise_removing_filter
        ${CMAKE_BINARY_DIR}/opencv-prefix/src/opencv-build/bin/example_tutorial_perspective_correction
        ${CMAKE_BINARY_DIR}/opencv-prefix/src/opencv-build/bin/example_tutorial_planar_tracking
        ${CMAKE_BINARY_DIR}/opencv-prefix/src/opencv-build/bin/example_tutorial_pnp_detection
        ${CMAKE_BINARY_DIR}/opencv-prefix/src/opencv-build/bin/example_tutorial_pnp_registration
        ${CMAKE_BINARY_DIR}/opencv-prefix/src/opencv-build/bin/example_tutorial_pointPolygonTest_demo
        ${CMAKE_BINARY_DIR}/opencv-prefix/src/opencv-build/bin/example_tutorial_porting_anisotropic_image_segmentation_gapi
        ${CMAKE_BINARY_DIR}/opencv-prefix/src/opencv-build/bin/example_tutorial_porting_anisotropic_image_segmentation_gapi_fluid
        ${CMAKE_BINARY_DIR}/opencv-prefix/src/opencv-build/bin/example_tutorial_pose_from_homography
        ${CMAKE_BINARY_DIR}/opencv-prefix/src/opencv-build/bin/example_tutorial_Pyramids
        ${CMAKE_BINARY_DIR}/opencv-prefix/src/opencv-build/bin/example_tutorial_Remap_Demo
        ${CMAKE_BINARY_DIR}/opencv-prefix/src/opencv-build/bin/example_tutorial_security_barrier_camera
        ${CMAKE_BINARY_DIR}/opencv-prefix/src/opencv-build/bin/example_tutorial_Smoothing
        ${CMAKE_BINARY_DIR}/opencv-prefix/src/opencv-build/bin/example_tutorial_Sobel_Demo
        ${CMAKE_BINARY_DIR}/opencv-prefix/src/opencv-build/bin/example_tutorial_SURF_detection_Demo
        ${CMAKE_BINARY_DIR}/opencv-prefix/src/opencv-build/bin/example_tutorial_SURF_FLANN_matching_Demo
        ${CMAKE_BINARY_DIR}/opencv-prefix/src/opencv-build/bin/example_tutorial_SURF_FLANN_matching_homography_Demo
        ${CMAKE_BINARY_DIR}/opencv-prefix/src/opencv-build/bin/example_tutorial_SURF_matching_Demo
        ${CMAKE_BINARY_DIR}/opencv-prefix/src/opencv-build/bin/example_tutorial_Threshold
        ${CMAKE_BINARY_DIR}/opencv-prefix/src/opencv-build/bin/example_tutorial_Threshold_inRange
        ${CMAKE_BINARY_DIR}/opencv-prefix/src/opencv-build/bin/example_tutorial_video-input-psnr-ssim
        ${CMAKE_BINARY_DIR}/opencv-prefix/src/opencv-build/bin/example_tutorial_video-write

        DESTINATION bin

        COMPONENT example
    )
endif()

set(OPENVX_BOOK_SAMPLES_BUILD ${CMAKE_BINARY_DIR}/openvx-book_samples-prefix/src/openvx-book_samples-build)

install(PROGRAMS

    ${OPENVX_BOOK_SAMPLES_BUILD}/example1/example1
    ${OPENVX_BOOK_SAMPLES_BUILD}/example2/example2
    ${OPENVX_BOOK_SAMPLES_BUILD}/example3/example3
    ${OPENVX_BOOK_SAMPLES_BUILD}/example4/changeImage
    ${OPENVX_BOOK_SAMPLES_BUILD}/example4/example4
    ${OPENVX_BOOK_SAMPLES_BUILD}/example4/example4a

    ${OPENVX_BOOK_SAMPLES_BUILD}/filter/filterImage
    ${OPENVX_BOOK_SAMPLES_BUILD}/filter/filterImageROI
    ${OPENVX_BOOK_SAMPLES_BUILD}/filter/filterImageROIvxu

    ${OPENVX_BOOK_SAMPLES_BUILD}/hough/hough
    ${OPENVX_BOOK_SAMPLES_BUILD}/hough/houghEx

    ${OPENVX_BOOK_SAMPLES_BUILD}/stitch/homography
    ${OPENVX_BOOK_SAMPLES_BUILD}/stitch/homography-multiband

    ${OPENVX_BOOK_SAMPLES_BUILD}/stitch/stitch
    ${OPENVX_BOOK_SAMPLES_BUILD}/stitch/stitch-debug
    ${OPENVX_BOOK_SAMPLES_BUILD}/stitch/stitch-multiband

    ${OPENVX_BOOK_SAMPLES_BUILD}/tracking/tracking_example

    ${OPENVX_BOOK_SAMPLES_BUILD}/undistort/undistort
    ${OPENVX_BOOK_SAMPLES_BUILD}/undistort/undistortOpenCV

    DESTINATION share/openvx/book
)

set(OPENVX_TUTORIAL_SAMPLES_BUILD ${CMAKE_BINARY_DIR}/openvx-tutorial_exercises-prefix/src/openvx-tutorial_exercises-build)

install(PROGRAMS

    ${OPENVX_TUTORIAL_SAMPLES_BUILD}/exercise1/exercise1
    ${OPENVX_TUTORIAL_SAMPLES_BUILD}/exercise2/exercise2
    ${OPENVX_TUTORIAL_SAMPLES_BUILD}/solution_exercise1/solution_exercise1
    ${OPENVX_TUTORIAL_SAMPLES_BUILD}/solution_exercise2/solution_exercise2

    DESTINATION share/openvx/tutorials
)
