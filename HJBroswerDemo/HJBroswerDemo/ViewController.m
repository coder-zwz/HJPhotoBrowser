//
//  ViewController.m
//  HJBroswerDemo
//
//  Created by zuweizhong on 2016/12/29.
//  Copyright © 2016年 zuweizhong. All rights reserved.
//

//
//  HJCollectionViewController.m
//  HJPhotoBrowser
//
//  Created by gHJ on 16/1/21.
//  Copyright © 2016年 GHJ. All rights reserved.
//

#import "ViewController.h"

#import "HJCollectionViewDemoCell.h"

#import "HJPhotoBrowser.h"

@interface ViewController () <HJPhotoBrowserDelegate>

@property (nonatomic, strong) NSArray *modelsArray;

@end

@implementation ViewController

static NSString * const reuseIdentifier = @"Cell";

+ (instancetype)demoCollectionViewController
{
    CGFloat margin = 20;
    int perRowItemCount = 3;
    CGFloat w = ([UIScreen mainScreen].bounds.size.width - (perRowItemCount - 1) * margin) / perRowItemCount;
    UICollectionViewFlowLayout *layout = [[UICollectionViewFlowLayout alloc] init];
    layout.itemSize = CGSizeMake(w, 100);
    layout.minimumInteritemSpacing = 10;
    return [[ViewController alloc] initWithCollectionViewLayout:layout];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.title = @"图片浏览(GHJ)";
    
    self.collectionView.backgroundColor = [UIColor whiteColor];
    
    [self.collectionView registerClass:[HJCollectionViewDemoCell class] forCellWithReuseIdentifier:reuseIdentifier];
    
    NSArray *srcStringArray = @[@"http://ww2.sinaimg.cn/thumbnail/904c2a35jw1emu3ec7kf8j20c10epjsn.jpg",
                                @"http://ww2.sinaimg.cn/thumbnail/98719e4agw1e5j49zmf21j20c80c8mxi.jpg",
                                @"http://ww2.sinaimg.cn/thumbnail/67307b53jw1epqq3bmwr6j20c80axmy5.jpg",
                                @"http://ww2.sinaimg.cn/thumbnail/9ecab84ejw1emgd5nd6eaj20c80c8q4a.jpg",
                                @"http://ww2.sinaimg.cn/thumbnail/642beb18gw1ep3629gfm0g206o050b2a.gif",
                                @"http://ww1.sinaimg.cn/thumbnail/9be2329dgw1etlyb1yu49j20c82p6qc1.jpg"
                                ];
    NSMutableArray *temp = [NSMutableArray new];
    for (int i = 0; i < 30; i++) {
        int index = arc4random_uniform((int)srcStringArray.count);
        HJPhotoItem *item = [HJPhotoItem new];
        item.thumbnail_pic = srcStringArray[index];
        [temp addObject:item];
    }
    
    self.modelsArray = [temp copy];
    
}



#pragma mark <UICollectionViewDataSource>


- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {
    return self.modelsArray.count;
}

- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath {
    HJCollectionViewDemoCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:reuseIdentifier forIndexPath:indexPath];
    cell.item = self.modelsArray[indexPath.item];
    return cell;
}

#pragma mark <UICollectionViewDelegate>

- (void)collectionView:(UICollectionView *)collectionView didSelectItemAtIndexPath:(NSIndexPath *)indexPath
{
    HJPhotoBrowser *photoBrowser = [HJPhotoBrowser new];
    photoBrowser.delegate = self;
    photoBrowser.currentImageIndex = indexPath.item;
    photoBrowser.imageCount = self.modelsArray.count;
    photoBrowser.sourceImagesContainerView = self.collectionView;
    
    [photoBrowser show];
}


#pragma mark  HJPhotoBrowserDelegate

// 返回临时占位图片（即原来的小图）
- (UIImage *)photoBrowser:(HJPhotoBrowser *)browser placeholderImageForIndex:(NSInteger)index
{
    // 不建议用此种方式获取小图，这里只是为了简单实现展示而已
    HJCollectionViewDemoCell *cell = (HJCollectionViewDemoCell *)[self collectionView:self.collectionView cellForItemAtIndexPath:[NSIndexPath indexPathForItem:index inSection:0]];
    return cell.imageView.image;
    
}


// 返回高质量图片的url
- (NSURL *)photoBrowser:(HJPhotoBrowser *)browser highQualityImageURLForIndex:(NSInteger)index
{
    NSString *urlStr = [[self.modelsArray[index] thumbnail_pic] stringByReplacingOccurrencesOfString:@"thumbnail" withString:@"bmiddle"];
    return [NSURL URLWithString:urlStr];
}


@end

