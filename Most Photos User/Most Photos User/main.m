
#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{
    @autoreleasepool
    {
        NSString* nameKey = @"nameKey";
        NSString* photoKey = @"photosKey";
        
        NSMutableArray* usersArr = [NSMutableArray new];
        NSArray *userPhotos = [[NSArray alloc] initWithObjects:
                               @"Photo1", @"Photo2", @"Photo3",
                               @"Photo4", @"Photo5", @"Photo6",
                               @"Photo7", @"Photo8", @"Photo9", @"Photo10", nil];
        NSMutableDictionary *userDict = [NSMutableDictionary dictionaryWithObjectsAndKeys:
                                         @"Steve", @"nameKey",
                                         userPhotos, @"photosKey", nil];
        [usersArr addObject: userDict];
        
        userPhotos = [[NSArray alloc] initWithObjects:
                      @"Photo1", @"Photo2", @"Photo3",
                      @"Photo4", @"Photo5", @"Photo6",
                      @"Photo4", @"Photo5", @"Photo6",
                      @"Photo7", @"Photo8", @"Photo9", @"Photo10", nil];
        userDict = [NSMutableDictionary dictionaryWithObjectsAndKeys:
                    @"Adam", @"nameKey",
                    userPhotos, @"photosKey", nil];
        [usersArr addObject: userDict];
        
        
        userPhotos = [[NSArray alloc] initWithObjects:
                      @"Photo1", @"Photo2", @"Photo3",
                      @"Photo4", @"Photo5", @"Photo7",
                      @"Photo8", @"Photo9", @"Photo10", nil];
        userDict = [NSMutableDictionary dictionaryWithObjectsAndKeys:
                    @"Sarah", @"nameKey",
                    userPhotos, @"photosKey", nil];
        [usersArr addObject: userDict];
        
        
        userPhotos = [[NSArray alloc] initWithObjects:
                      @"Photo1", @"Photo2", @"Photo3",
                      @"Photo4", @"Photo5", @"Photo7",
                      @"Photo4", @"Photo5", @"Photo7",
                      @"Photo4", @"Photo5", @"Photo7",
                      @"Photo8", @"Photo9", @"Photo10", nil];
        userDict = [NSMutableDictionary dictionaryWithObjectsAndKeys:
                    @"David", @"nameKey",
                    userPhotos, @"photosKey", nil];
        [usersArr addObject: userDict];
        
        NSNumber* maxPhoto = [NSNumber numberWithInt:0];
        NSString* maxUserPhoto = @"";
        for (NSMutableDictionary* user in usersArr) {
            NSArray* photos = (NSArray*)[user valueForKey:photoKey];
            NSNumber* photoCapacity = [NSNumber numberWithUnsignedLong:photos.count];
            
            NSString* users = (NSString*)[user valueForKey:nameKey];
            NSLog(@"photos %@ \n user %@", photos, users);
            NSLog(@"maxPhoto %@ ... photoCapacity %@", maxPhoto, photoCapacity);
            
            if ([maxPhoto compare:photoCapacity] == NSOrderedAscending) {
                maxPhoto = photoCapacity;
                maxUserPhoto = users;
            }
        }
        NSLog(@"user that have most photo is %@ with %@ total photos", maxUserPhoto, maxPhoto);
    }
    return 0;
}
