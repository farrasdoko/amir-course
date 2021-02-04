//
//  ViewController.m
//  Find Image Assignment
//
//  Created by Farras Doko on 28/01/21.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

// imageView: UIImageView
// searchBar: UISearchBar
// tableView: UITableView

NSMutableArray* membersArray;
NSString* nameKey = @"nameKey";
NSString* photoKey = @"photoKey";
NSMutableArray* suggestionArray;

- (void)viewDidLoad {
    [super viewDidLoad];
    
    suggestionArray = [NSMutableArray new];
    membersArray = [NSMutableArray new];
    NSMutableDictionary *thisMember = [NSMutableDictionary dictionaryWithObjectsAndKeys:
                    @"Birds", @"nameKey",
                    @"birds.jpg", @"photoKey", nil];
    [membersArray addObject: thisMember];
    
    thisMember = [NSMutableDictionary dictionaryWithObjectsAndKeys:
                    @"Cat", @"nameKey",
                    @"cat.jpg", @"photoKey", nil];
    [membersArray addObject: thisMember];
    
    thisMember = [NSMutableDictionary dictionaryWithObjectsAndKeys:
                    @"Dog", @"nameKey",
                    @"dog_img.jpg", @"photoKey", nil];
    [membersArray addObject: thisMember];
    
    
    thisMember = [NSMutableDictionary dictionaryWithObjectsAndKeys:
                    @"Lamb", @"nameKey",
                    @"happy_lamb.jpg", @"photoKey", nil];
    [membersArray addObject: thisMember];
    
    thisMember = [NSMutableDictionary dictionaryWithObjectsAndKeys:
                    @"Road", @"nameKey",
                    @"road_image.jpg", @"photoKey", nil];
    [membersArray addObject: thisMember];
    
    _searchBar.delegate = self;
    _tableView.delegate = self;
    _tableView.dataSource = self;
//    _tableView.maxHeight = self.view.frame.size.height / 2;
    
    [_imgView setHidden:true];
    [_tableView setHidden:true];
}
// TODO: searchBar
- (void)searchBar:(UISearchBar *)searchBar textDidChange:(NSString *)searchText {
    [self isSearching:true];
    [suggestionArray removeAllObjects];
    
    for (NSDictionary* member in membersArray) {
        NSString* name = [member valueForKey:nameKey];
        if ([name containsString:searchText]) {
            [suggestionArray addObject:name];
        }
    }
    NSLog(@"array length %lu", suggestionArray.count);
    NSLog(@"table Height %f", _tableView.frame.size.height);
    [_tableView reloadData];
}

- (void)searchBarSearchButtonClicked:(UISearchBar *)searchBar {
    [self searchImage:searchBar];
}

// TODO: tableView
- (nonnull UITableViewCell *)tableView:(nonnull UITableView *)tableView cellForRowAtIndexPath:(nonnull NSIndexPath *)indexPath {
    UITableViewCell* cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:nil];
    
    NSString* text = [suggestionArray objectAtIndex:indexPath.item];
    cell.textLabel.text = text;

    return cell;
}

- (NSInteger)tableView:(nonnull UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return suggestionArray.count;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    NSString* text = [suggestionArray objectAtIndex:indexPath.item];
    _searchBar.text = text;
    
    [self searchImage:_searchBar];
    [tableView deselectRowAtIndexPath:indexPath animated:false];
    
}

// TODO: anotherFunction
-(void)isSearching:(BOOL) condition {
    if (condition) {
        [_imgView setHidden:true];
        [_tableView setHidden:false];
    } else {
        [_imgView setHidden:false];
        [_tableView setHidden:true];
    }
}

-(void)searchImage:(UISearchBar*) searchBar {
    for (NSDictionary* member in membersArray) {
        NSString* name = [member valueForKey:nameKey];
        
        if ([searchBar.text.localizedLowercaseString isEqualToString: name.lowercaseString]) {
            _imgView.image = [UIImage imageNamed:[member valueForKey:photoKey]];
            break;
        }
    }
    [self isSearching:false];
    [searchBar endEditing:true];
}
//-(void)tableViewSet {
//    _tableView.delegate = self;
//    _tableView.dataSource = self;
//    
//    // auto layout
//    NSLayoutConstraint* leftAnchor = [NSLayoutConstraint constraintWithItem:_tableView attribute:NSLayoutAttributeLeading relatedBy:NSLayoutRelationEqual toItem:self.view attribute:NSLayoutAttributeLeading multiplier:1.0 constant:0.0];
//    NSLayoutConstraint* rightAnchor = [NSLayoutConstraint constraintWithItem:_tableView attribute:NSLayoutAttributeTrailing relatedBy:NSLayoutRelationEqual toItem:self.view attribute:NSLayoutAttributeTrailing multiplier:1.0 constant:0.0];
//    NSLayoutConstraint* topAnchor = [NSLayoutConstraint constraintWithItem:_tableView attribute:NSLayoutAttributeTop relatedBy:NSLayoutRelationEqual toItem:self.view attribute:NSLayoutAttributeTop multiplier:1.0 constant:0.0];
//}

@end
