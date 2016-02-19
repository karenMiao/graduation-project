//
//  checkSceneListView.h
//  record&check
//
//  Created by MJM on 2/16/16.
//  Copyright © 2016 mjm. All rights reserved.
//

#import <UIKit/UIKit.h>
//models
#import "checkScenesModel.h"

@class checkSceneListView;
@protocol YYOnlinePopViewDelegate <NSObject>

@optional

- (void)KMcheckSceneListView:(checkSceneListView *)checkSceneListView didSelectItemAtIndex:(NSInteger)index;

@end

@interface checkSceneListView : UIView

/*检查场景的数据模型*/
@property (nonatomic,strong)checkScenesModel *scenesModel;

/*初始化函数*/
- (instancetype)initWithFrame:(CGRect)frame checkScenesModel:(checkScenesModel *)Model;
/*指定项为选中状态*/
- (void)selectedAtIndex:(NSInteger)index;

@end
