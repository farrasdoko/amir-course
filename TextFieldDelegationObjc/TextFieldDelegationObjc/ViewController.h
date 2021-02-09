//
//  ViewController.h
//  TextFieldDelegationObjc
//
//  Created by Farras Doko on 09/02/21.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController <UITextFieldDelegate>

@property (weak, nonatomic) IBOutlet UITextField *textField;

@end

