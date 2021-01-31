//
//  main.m
//  Dice Excercise
//
//  Created by Farras Doko on 27/01/21.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        int counters[6] = {0, 0, 0, 0, 0, 0};
        
        for (int i=0;i<100;i++) {
            int dice = (arc4random() % 6) + 1;
            counters[dice-1] ++;
        }
        
        for (int i=0; i<6; i++) {
            NSLog(@"%i happens %i times", i+1, counters[i]);
        }
    }
    return 0;
}
