//
//  checkScenesModel.h
//  record&check
//
//  Created by MJM on 2/16/16.
//  Copyright © 2016 mjm. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface checkScenesModel : NSObject
//
///*检查的场景个数*/
//@property (nonatomic,assign)NSInteger sceneCount;
/*场景标题数组*/
@property (nonatomic,copy)NSMutableArray *scenesTitleArray;
/*场景图标数组*/
@property (nonatomic,copy)NSMutableArray *scenesIconArray;

@end
