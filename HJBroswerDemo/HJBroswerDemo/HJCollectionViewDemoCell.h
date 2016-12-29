//
//  HJCollectionViewDemoCell.h
//  SDPhotoBrowser
//
//  Created by gsd on 16/1/21.
//  Copyright © 2016年 GSD. All rights reserved.
//

#import <UIKit/UIKit.h>

#import "HJPhotoItem.h"

@interface HJCollectionViewDemoCell : UICollectionViewCell

@property (nonatomic, weak) UIImageView *imageView;

@property (nonatomic, strong) HJPhotoItem *item;

@end
