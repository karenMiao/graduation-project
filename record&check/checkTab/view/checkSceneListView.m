//
//  checkSceneListView.m
//  record&check
//
//  Created by MJM on 2/16/16.
//  Copyright © 2016 mjm. All rights reserved.
//

#import "checkSceneListView.h"
#import "PureLayout.h"

const NSInteger visibleItemsCount = 4;

@interface checkSceneListView(){
    checkScenesModel *_scenesModel;
}
@end

@implementation checkSceneListView

- (instancetype)initWithFrame:(CGRect)frame checkScenesModel:(checkScenesModel *)model{
    self = [super initWithFrame:frame];
    if (self) {
        _scenesModel = model;
        if ([model.scenesTitleArray count]>=visibleItemsCount) {
            [self setupSubviews];
        }
    }
    return self;
}
- (void)setupSubviews{
    for (NSInteger index = 0; index<visibleItemsCount; index++) {
        UIButton *sceneBtn = [UIButton buttonWithType:UIButtonTypeCustom];
        [sceneBtn setBackgroundColor:[UIColor grayColor]];
        sceneBtn.layer.borderColor = [UIColor blackColor].CGColor;
        sceneBtn.layer.borderWidth = 0.5;
        [sceneBtn setTitle:_scenesModel.scenesTitleArray[index] forState:UIControlStateNormal];
        [sceneBtn addTarget:self action:@selector(clickScenesBtn:) forControlEvents:UIControlEventTouchUpInside];
        
        [self addSubview:sceneBtn];
        CGFloat buttonWidth = self.frame.size.width/visibleItemsCount;
        CGFloat height = self.frame.size.height;
        [sceneBtn autoPinEdgeToSuperviewEdge:ALEdgeBottom];
        [sceneBtn autoPinEdgeToSuperviewEdge:ALEdgeLeft withInset:index*buttonWidth];
        [sceneBtn autoSetDimension:ALDimensionWidth toSize:buttonWidth];
        [sceneBtn autoSetDimension:ALDimensionHeight toSize:height/2];
    }
}

- (void)selectedAtIndex:(NSInteger)index{
    
}
#pragma mark - action methods
- (void)clickScenesBtn:(UIButton *)sender{
    sender.selected = YES;

}
@end
