#include <ros/ros.h>
#include <iostream>
#include <pcl/io/pcd_io.h>
#include <sensor_msgs/PointCloud2.h>
#include <pcl_conversions/pcl_conversions.h>
#include <pcl/ros/conversions.h>
#include <pcl/point_cloud.h>
#include <pcl/point_types.h>
#include <pcl/filters/passthrough.h>
#include <pcl/sample_consensus/model_types.h>
#include <pcl/sample_consensus/method_types.h>
#include <pcl/segmentation/sac_segmentation.h>
#include <pcl/filters/extract_indices.h>
#include <pcl/filters/statistical_outlier_removal.h>

ros::Publisher pub;

void cloud_cb (const sensor_msgs::PointCloud2::ConstPtr& input)
{
    // 将点云格式为sensor_msgs/PointCloud2 格式转为 pcl/PointCloud
    pcl::PointCloud<pcl::PointXYZ> cloud;
    pcl::PointCloud<pcl::PointXYZ> cloud_filtered;
    sensor_msgs::PointCloud2 cloud_filtered_output;
    pcl::fromROSMsg (*input, cloud);

    pcl::PassThrough<pcl::PointXYZ> pass;
    pass.setInputCloud(cloud.makeShared());
    pass.setFilterFieldName("z");
    pass.setFilterLimits(0.0, 1.5);
    pass.filter(cloud_filtered);

    pcl::ModelCoefficients::Ptr coefficients(new pcl::ModelCoefficients);
    pcl::PointIndices::Ptr inliers(new pcl::PointIndices);
    pcl::SACSegmentation<pcl::PointXYZ> seg;
    seg.setOptimizeCoefficients (true);
    seg.setModelType (pcl::SACMODEL_PLANE);
    seg.setMethodType (pcl::SAC_RANSAC);
    seg.setDistanceThreshold (0.01);
    seg.setMaxIterations(100);
    seg.setInputCloud (cloud_filtered.makeShared());
    seg.segment (*inliers, *coefficients);
    pcl::ExtractIndices<pcl::PointXYZ> extract;
    extract.setInputCloud(cloud_filtered.makeShared());
    extract.setIndices(inliers);
    extract.setNegative(true);
    extract.filter(cloud_filtered);

    // pcl::StatisticalOutlierRemoval<pcl::PointXYZ> sor;
    // sor.setInputCloud (cloud_filtered.makeShared());
    // sor.setMeanK (50);
    // sor.setStddevMulThresh (1.0);
    // sor.filter (cloud_filtered);
    pcl::toROSMsg(cloud_filtered,cloud_filtered_output);
    pub.publish(cloud_filtered_output);
}

int main (int argc, char** argv)
{
    ros::init (argc, argv, "my_pcl_tutorial");
    ros::NodeHandle nh;
    ros::Subscriber sub = nh.subscribe ("/camera/depth/color/points", 1, cloud_cb);
    pub = nh.advertise<sensor_msgs::PointCloud2> ("cloud_filtered_without", 1);
    ros::spin ();
}