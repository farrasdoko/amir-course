//
//  User.m
//  Array Of Users
//
//  Created by Farras Doko on 06/02/21.
//

#import "User.h"

@implementation User

-(instancetype)initWithUser:(NSString*)name :(NSString*)lastName :(float)height :(Boolean)active {
    self = [super init];
    self.name = name;
    self.lastName = lastName;
    self.height = height;
    self.active = active;
    return self;
}
-(NSArray*)getUsers {
    User* barbara = [[User alloc] initWithUser:@"Barbara" :@"Kentaki" :160.0 :false];
    User* bennett = [[User alloc] initWithUser:@"Bennett" :@"Hiken" :188.0 :true];
    User* kurohige = [[User alloc] initWithUser:@"Black" :@"Beard" :18000.0 :true];
    User* shirohige = [[User alloc] initWithUser:@"White" :@"Beard" :666.0 :false];
    
    NSArray* users = [[NSArray alloc] initWithObjects:barbara, bennett, kurohige, shirohige, nil];
    return users;
}
-(float)searchHeight:(NSArray*)users withName:(NSString*)name {
    User* user = [[User alloc] init];
    for (User* i in users) {
        if (i.name == name) {
            user = i;
            break;
        }
    }
    
    return user.height;
}
//-(double)searchHeight:(NSArray*)users withName:(NSString*)name {
//    NSPredicate* predicate = [NSPredicate predicateWithFormat:@"%K like %@", name];
//    NSArray* filteredUsers = [users filteredArrayUsingPredicate:predicate];
//
//    User* user = filteredUsers.firstObject;
//    return user.height;
//}

@end
