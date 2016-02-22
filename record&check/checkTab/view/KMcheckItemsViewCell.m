//
//  KMcheckItemsViewCell.m
//  record&check
//
//  Created by MJM on 2/22/16.
//  Copyright © 2016 mjm. All rights reserved.
//

#import "KMcheckItemsViewCell.h"

@implementation KMcheckItemsViewCell

- (instancetype)initWithFrame:(CGRect)frame{
    self = [super initWithFrame:frame];
    if (self) {
        _titleLabel = [[UILabel alloc]init];
        [self.contentView addSubview:_titleLabel];
        [_titleLabel autoPinEdgesToSuperviewMargins];
    }
    return self;
}

@end
