
#import <UIKit/UIKit.h>

@interface SelfSizedTableView : UITableView

@property double maxHeight;
-(void)reloadData;
-(CGSize)invalidateIntrinsicContentSize;
//-(void)layoutSubviews;

@end
