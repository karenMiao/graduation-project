//
//  checkViewController.m
//  record&check
//
//  Created by MJM on 2/16/16.
//  Copyright © 2016 mjm. All rights reserved.
//

#import "checkViewController.h"
#import "checkSceneListView.h"
#import "KMCheckItemsListView.h"
#import "checkScenesModel.h"


const CGFloat scenesHeight = 150;

@interface checkViewController ()
@property (nonatomic,strong)checkScenesModel * scenesModel;
@property (nonatomic,strong) checkSceneListView * scenesView;
@property (nonatomic,strong)KMCheckItemsListView *checkItemsListView;

@end

@implementation checkViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
   
    [self.view addSubview:self.scenesView];
    [self.view addSubview:self.checkItemsListView];
}
- (void) viewWillLayoutSubviews{
    [_scenesView autoPinEdgeToSuperviewEdge:ALEdgeBottom];
    [_scenesView autoPinEdgeToSuperviewEdge:ALEdgeLeft];
}

#pragma mark - getter
- (checkScenesModel *)scenesModel{
    if (!_scenesModel) {
        _scenesModel = [[checkScenesModel alloc]init];
        _scenesModel.scenesTitleArray = [[NSMutableArray alloc]initWithObjects:@"测试1",@"测试2",@"测试3",@"测试4",@"测试5", nil];
    }
    return _scenesModel;
}
- (checkSceneListView *)scenesView{
    if (!_scenesView) {
        _scenesView = [[checkSceneListView alloc]initWithFrame:CGRectMake(0, 0,KM_DEVICE_WIDTH, scenesHeight) checkScenesModel:self.scenesModel];
    }
    return _scenesView;
}
- (KMCheckItemsListView *)checkItemsListView{
    if (!_checkItemsListView) {
        _checkItemsListView = [[KMCheckItemsListView alloc]initWithFrame:CGRectMake(0, KM_STATUSBAR_HEIGHT,KM_DEVICE_WIDTH,KM_DEVICE_HEIGHT- scenesHeight-KM_STATUSBAR_HEIGHT)];
    }
    return _checkItemsListView;
}
@end
