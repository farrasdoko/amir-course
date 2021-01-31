#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSString* stringOne = @"Hello";
        NSString* stringTwo = @"World";
        
        // Doing the process right on the log
        NSLog(@"First method %@ %@", stringOne, stringTwo);
        
        // Doing the process by using pointer
        NSString* thirdString = [NSString stringWithFormat:@"%@ %@", stringOne, stringTwo];
        NSLog(@"2nd Method %@", thirdString);
        
        //Doing the process by append function
        NSString* fourthString = [stringOne stringByAppendingString:@" "];
        fourthString = [fourthString stringByAppendingString:stringTwo];
        NSLog(@"3rd method %@", fourthString);
        
        // using mutable string
        NSMutableString* mutableString = [NSMutableString string];
        [mutableString appendFormat:@"%@ %@", stringOne, stringTwo];
        NSLog(@"Mutable String - 4 - %@", mutableString);

    }
    return 0;
}
