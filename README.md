# HJPhotoBrowser
一款iOS高性能图片浏览器，依赖SDWebImage，支持浏览本地图片及网络图片，支持CocoaPods安装
## Installation

### CocoaPods

HJPhotoBrowser is available on [CocoaPods](https://cocoapods.org/). Just add the following to your project Podfile:

```ruby
pod 'HJPhotoBrowser' # Podfile
```
###主要功能:
![Image text](https://raw.githubusercontent.com/coder-zwz/HJPhotoBrowser/master/HJBroswerDemo/screenshots/Simulator1.png)
###图片浏览:
![Image text](https://raw.githubusercontent.com/coder-zwz/HJPhotoBrowser/master/HJBroswerDemo/screenshots/Simulator2.png)
####代码示例
```java  
  
 - (void)collectionView:(UICollectionView *)collectionView didSelectItemAtIndexPath:(NSIndexPath *)indexPath
      {
            NSInteger count = _dailyModel.picArray.count;
            HJPhotoBrowser *browser = [[HJPhotoBrowser alloc] init];
            browser.sourceImagesContainerView = collectionView;
            browser.imageCount = count;
            browser.currentImageIndex = indexPath.row;
            browser.delegate = self;
            [browser show];
      }
      #pragma 占位图
      -(UIImage *)photoBrowser:(HJPhotoBrowser *)browser placeholderImageForIndex:(NSInteger)index
      {
            HJCollectionViewDemoCell *cell = (HJCollectionViewDemoCell *)[self collectionView:self.collectionView                                                                                                                                                                                                                                                                                                                                                                                                                                                                    
            cellForItemAtIndexPath:[NSIndexPath indexPathForItem:index inSection:0]];
            
            return cell.imageView.image;
      }
      #pragma 图片的地址
      -(NSURL *)photoBrowser:(HJPhotoBrowser *)browser highQualityImageURLForIndex:(NSInteger)index
      {
            return [NSURL URLWithString:_dailyModel.picArray[index]];
      }
  
```


      - (void)collectionView:(UICollectionView *)collectionView didSelectItemAtIndexPath:(NSIndexPath *)indexPath
      {
            NSInteger count = _dailyModel.picArray.count;
            HJPhotoBrowser *browser = [[HJPhotoBrowser alloc] init];
            browser.sourceImagesContainerView = collectionView;
            browser.imageCount = count;
            browser.currentImageIndex = indexPath.row;
            browser.delegate = self;
            [browser show];
      }
      #pragma 占位图
      -(UIImage *)photoBrowser:(HJPhotoBrowser *)browser placeholderImageForIndex:(NSInteger)index
      {
            HJCollectionViewDemoCell *cell = (HJCollectionViewDemoCell *)[self collectionView:self.collectionView                                                                                                                                                                                                                                                                                                                                                                                                                                                                    
            cellForItemAtIndexPath:[NSIndexPath indexPathForItem:index inSection:0]];
            
            return cell.imageView.image;
      }
      #pragma 图片的地址
      -(NSURL *)photoBrowser:(HJPhotoBrowser *)browser highQualityImageURLForIndex:(NSInteger)index
      {
            return [NSURL URLWithString:_dailyModel.picArray[index]];
      }

