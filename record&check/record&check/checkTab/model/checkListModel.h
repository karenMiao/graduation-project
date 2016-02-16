//
//  checkListModel.h
//  record&check
//
//  Created by MJM on 2/16/16.
//  Copyright © 2016 mjm. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface checkListModel : NSObject
/*检查场景*/
@property(nonatomic,copy)NSString * scene;
/*items个数*/
@property(nonatomic,assign)NSInteger itemsCount;
/*items文本数组*/
@property(nonatomic,copy)NSMutableArray *itemsTextLabel;
/*items图标数组*/
@property(nonatomic,copy)NSMutableArray *itemsIconLabel;

@end
