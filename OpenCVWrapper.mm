//
//  OpenCVWrapper.m
//  OpenCVForNoobs
//
//  Created by Aarsh Shah on 12/21/17.
//  Copyright © 2017 Aarsh Shah. All rights reserved.
//




#import <opencv2/opencv.hpp>
#import "OpenCVWrapper.h"

#import <opencv2/opencv.hpp>
#import "opencv2/highgui/ios.h"

using namespace std;

@implementation OpenCVWrapper

- (void) isThisWorking {
    
    cout << "Hey" << endl;
}

+ (UIImage *)ConvertImage:(UIImage *)image {
    cv::Mat mat;
    UIImageToMat(image, mat);
    
    cv::Mat gray;
    cv::cvtColor(mat, gray, CV_RGB2GRAY);
    
    cv::Mat bin;
    cv::threshold(gray, bin, 0, 255, cv::THRESH_BINARY | cv::THRESH_OTSU);
    
    UIImage *binImg = MatToUIImage(bin);
    return binImg;
}

@end
