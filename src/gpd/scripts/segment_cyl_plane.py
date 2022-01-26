#!/usr/bin/env python
# -*- coding: utf-8 -*-
# port of
# http://pointclouds.org/documentation/tutorials/cylinder_segmentation.php
# you need to download
# http://svn.pointclouds.org/data/tutorials/table_scene_mug_stereo_textured.pcd

import pcl
import numpy as np 

def main():
    cloud = pcl.load(
        './table_scene_mug_stereo_textured.pcd')

    print(cloud.size)

    fil = cloud.make_passthrough_filter()
    fil.set_filter_field_name("z")
    fil.set_filter_limits(0, 1.5)
    cloud_filtered = fil.filter()

    print(cloud_filtered.size)

    seg = cloud_filtered.make_segmenter_normals(ksearch=50)
    seg.set_optimize_coefficients(True)
    seg.set_model_type(pcl.SACMODEL_NORMAL_PLANE)
    seg.set_normal_distance_weight(0.1)
    seg.set_method_type(pcl.SAC_RANSAC)
    seg.set_max_iterations(100)
    seg.set_distance_threshold(0.05)
    indices, model = seg.segment()

    print(model)

    cloud_plane = cloud_filtered.extract(indices, negative=True)
    # NG : const char* not str
    # cloud_plane.to_file('table_scene_mug_stereo_textured_plane.pcd')

    fil = cloud_plane.make_statistical_outlier_filter()
    fil.set_mean_k(50)
    fil.set_std_dev_mul_thresh(1.0)
    cloud_plane_inlier = fil.filter()

    pcl.save(cloud_plane_inlier, 'table_scene_mug_stereo_textured_plane_inlier.pcd')




if __name__ == "__main__":
    # import cProfile
    # cProfile.run('main()', sort='time')
    main()