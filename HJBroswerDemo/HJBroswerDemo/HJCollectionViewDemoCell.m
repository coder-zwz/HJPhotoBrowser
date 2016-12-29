//
//  HJCollectionViewDemoCell.m
//  HJPhotoBrowser
//
//  Created by gHJ on 16/1/21.
//  Copyright © 2016年 GHJ. All rights reserved.
//

#import "HJCollectionViewDemoCell.h"
#import "UIImageView+WebCache.h"

@implementation HJCollectionViewDemoCell

- (instancetype)initWithFrame:(CGRect)frame
{
    if (self = [super initWithFrame:frame]) {
        [self setupView];
    }
    return self;
}

- (void)setupView
{
    UIImageView *imageView = [UIImageView new];
    [self.contentView addSubview:imageView];
    self.imageView = imageView;
    
    self.backgroundColor = [UIColor orangeColor];
}

- (void)setItem:(HJPhotoItem *)item
{
    _item = item;
    
    [self.imageView sd_setImageWithURL:[NSURL URLWithString:item.thumbnail_pic]];
}

- (void)layoutSubviews
{
    [super layoutSubviews];
    
    self.imageView.frame = self.bounds;
}

@end
