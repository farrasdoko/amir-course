//
//  ViewController.h
//  Find Image Assignment
//
//  Created by Farras Doko on 28/01/21.
//

#import <UIKit/UIKit.h>
//#import "SelfSizedTableView.h"

@interface ViewController : UIViewController<UISearchBarDelegate, UITableViewDelegate, UITableViewDataSource>

@property (weak, nonatomic) IBOutlet UIImageView *imgView;
@property (weak, nonatomic) IBOutlet UISearchBar *searchBar;
@property (weak, nonatomic) IBOutlet UITableView *tableView;

@end
