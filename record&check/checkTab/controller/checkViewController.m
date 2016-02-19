//
//  checkViewController.m
//  record&check
//
//  Created by MJM on 2/16/16.
//  Copyright © 2016 mjm. All rights reserved.
//

#import "checkViewController.h"
#import "checkSceneListView.h"
#import "checkScenesModel.h"
#import "PureLayout.h"

@interface checkViewController ()
@property (nonatomic,strong)checkScenesModel * scenesModel;
@property (nonatomic,strong) checkSceneListView * scenesView;
@end

@implementation checkViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
   
    [self.view addSubview:self.scenesView];
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
        _scenesView = [[checkSceneListView alloc]initWithFrame:CGRectMake(0, 0,300, 100) checkScenesModel:self.scenesModel];
    }
    return _scenesView;
}

@end
