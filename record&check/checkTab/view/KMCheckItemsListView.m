//
//  KMCheckItemsListView.m
//  record&check
//
//  Created by MJM on 2/22/16.
//  Copyright © 2016 mjm. All rights reserved.
//

#import "KMCheckItemsListView.h"
#import "KMcheckItemsViewCell.h"
#import "checkListModel.h"
#import "XLPlainFlowLayout.h"

static NSString *cellID = @"cellID";
static NSString *headerID = @"headerID";

@interface KMCheckItemsListView()

@property (nonatomic,strong)checkListModel * checkItemsModel;
@property (nonatomic,strong)UICollectionView * collectionView;
@end

@implementation KMCheckItemsListView

- (instancetype)initWithFrame:(CGRect)frame{
    self = [super initWithFrame:frame];
    if (self) {
        [self addSubview:self.collectionView];
    }
    return self;
}

#pragma mark - collectionViewDelegate

- (NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView
{
    return 3;
}

- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section
{
    if (section ==0) {
        return [self.checkItemsModel.itemsTextLabel count];
    }else{
        return 9;
    }
}

-(KMcheckItemsViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath
{
    KMcheckItemsViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:cellID forIndexPath:indexPath];
    cell.backgroundColor = indexPath.section%2?[UIColor redColor]:[UIColor cyanColor];
        cell.titleLabel.text = self.checkItemsModel.itemsTextLabel[indexPath.row];
    return cell;
}

- (void)collectionView:(UICollectionView *)collectionView didSelectItemAtIndexPath:(NSIndexPath *)indexPath {
    
}

- (UICollectionReusableView *)collectionView:(UICollectionView *)collectionView viewForSupplementaryElementOfKind:(NSString *)kind atIndexPath:(NSIndexPath *)indexPath {
    
    if (indexPath.section >=0) {
        UICollectionReusableView *header = [collectionView  dequeueReusableSupplementaryViewOfKind:UICollectionElementKindSectionHeader withReuseIdentifier:headerID forIndexPath:indexPath];
        header.backgroundColor = indexPath.section%2?[[UIColor blackColor] colorWithAlphaComponent:0.5] : [[UIColor blueColor] colorWithAlphaComponent:0.5];
        UIButton *headerText = [UIButton buttonWithType:UIButtonTypeCustom];
        [headerText setTitle:[NSString stringWithFormat:@"第%ld个分区的header",(long)indexPath.section] forState:UIControlStateNormal];
        [header addSubview:headerText];
        [headerText autoPinEdgesToSuperviewMargins];
        return header;
    }
    return nil;
}

- (CGSize)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout*)collectionViewLayout referenceSizeForHeaderInSection:(NSInteger)section
{
    if (section>=0) {
        return CGSizeMake(0, 44);
    }
    return CGSizeZero;
}

-(BOOL)prefersStatusBarHidden
{
    return YES;
}

#pragma mark - getter

- (UICollectionView *)collectionView{
    if (!_collectionView) {
        XLPlainFlowLayout *layout = [XLPlainFlowLayout new];
        layout.itemSize = CGSizeMake(100, 100);
        CGRect  collectionFrame = CGRectMake(0, 0, self.frame.size.width, self.frame.size.height);
        _collectionView = [[UICollectionView alloc] initWithFrame:collectionFrame collectionViewLayout:layout];
        _collectionView.delegate = self;
        _collectionView.dataSource = self;
        _collectionView.backgroundColor = [UIColor whiteColor];
        [_collectionView registerClass:[KMcheckItemsViewCell class] forCellWithReuseIdentifier:cellID];
        [_collectionView registerClass:[UICollectionReusableView class] forSupplementaryViewOfKind:UICollectionElementKindSectionHeader  withReuseIdentifier:headerID];

    }
    return  _collectionView;
}

- (checkListModel *)checkItemsModel{
    if (!_checkItemsModel) {
        _checkItemsModel = [[checkListModel alloc]init];
        _checkItemsModel.scene = @"";
        _checkItemsModel.itemsTextLabel = [[NSMutableArray alloc]initWithObjects:@"测试1",@"测试2",@"测试3",@"测试4",@"测试5",@"测试4",@"测试5",@"测试4",@"测试5", nil];
    }
    return _checkItemsModel;
}
@end
