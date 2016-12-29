//
//  HJPhotoBrowserConfig.h
//  HJPhotoBrowser
//
//  Created by zuweizhong on 16-2-9.
//  Copyright (c) 2015年 zuweizhong. All rights reserved.
//


typedef enum {
    HJWaitingViewModeLoopDiagram, // 环形
    HJWaitingViewModePieDiagram // 饼型
} HJWaitingViewMode;

// 图片保存成功提示文字
#define HJPhotoBrowserSaveImageSuccessText @" 保存成功 ";

// 图片保存失败提示文字
#define HJPhotoBrowserSaveImageFailText @" 保存失败 ";

// browser背景颜色
#define HJPhotoBrowserBackgrounColor [UIColor colorWithRed:0 green:0 blue:0 alpha:0.95]

// browser中图片间的margin
#define HJPhotoBrowserImageViewMargin 10

// browser中显示图片动画时长
#define HJPhotoBrowserShowImageAnimationDuration 0.25f

// browser中隐藏图片动画时长
#define HJPhotoBrowserHideImageAnimationDuration 0.25f

// 图片下载进度指示进度显示样式（HJWaitingViewModeLoopDiagram 环形，HJWaitingViewModePieDiagram 饼型）
#define HJWaitingViewProgressMode HJWaitingViewModeLoopDiagram

// 图片下载进度指示器背景色
#define HJWaitingViewBackgroundColor [UIColor colorWithRed:0 green:0 blue:0 alpha:0.7]

// 图片下载进度指示器内部控件间的间距
#define HJWaitingViewItemMargin 10

// 图片下载进度指示器环形圆圈的宽度
#define HJWaitingViewCircleLineWidth 10

