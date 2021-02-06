//
//  main.m
//  Array Of Users
//
//  Created by Farras Doko on 06/02/21.
//

#import <Foundation/Foundation.h>
#import "Model/User.h"


int main(int argc, const char * argv[]) {
    @autoreleasepool {
        User* user = [[User alloc] init];
        NSArray* users = [[User alloc] getUsers];
        
        NSString* name = @"Bennett";
        float height = [user searchHeight:users withName:name];
        
        NSLog(@"Height of %@ is %f", name, height);
    }
    return 0;
}
