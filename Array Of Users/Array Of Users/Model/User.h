#import <Foundation/Foundation.h>

@interface User : NSObject

@property NSString* name;
@property NSString* lastName;
@property float height;
//@property  eyeColor
@property Boolean active;

-(instancetype)initWithUser:(NSString*)name :(NSString*)lastName :(float)height :(Boolean)active;
-(NSArray*)getUsers;
-(float)searchHeight:(NSArray*)users withName:(NSString*)name;

@end
