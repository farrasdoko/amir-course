//
//  ViewController.m
//  TextFieldDelegationObjc
//
//  Created by Farras Doko on 09/02/21.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    _textField.delegate = self;
}

- (BOOL)textField:(UITextField *)textField shouldChangeCharactersInRange:(NSRange)range replacementString:(NSString *)string {
    
    NSString* numeric = @"0123456789";
    NSCharacterSet* charToRemove = [NSCharacterSet characterSetWithCharactersInString:numeric].invertedSet;
    NSString *removedChar = [string componentsSeparatedByCharactersInSet:charToRemove].firstObject;
    
    return (string == removedChar);
}

@end
