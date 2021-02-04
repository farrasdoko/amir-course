//
//  SelfSizedTableView.m
//  Find Image Assignment
//
//  Created by Farras Doko on 30/01/21.
//

#import "SelfSizedTableView.h"

@implementation SelfSizedTableView

-(void)reloadData {
    [super reloadData];
    [self invalidateIntrinsicContentSize];
    [self layoutIfNeeded];
}

-(CGSize)invalidateIntrinsicContentSize {
    double height = fmin(self.contentSize.height, _maxHeight);
//    NSLog(@"content Size %d", height);
//    double height = _maxHeight;
    NSLog(@"height %f", height);
    return CGSizeMake(self.contentSize.width, height);
}

//-(void)layoutSubviews {
//    [super layoutSubviews];
//    [self invalidateIntrinsicContentSize];
//}

@end
