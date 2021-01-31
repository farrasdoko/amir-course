#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{
    @autoreleasepool
    {
        NSArray *citiesArr = [[NSArray alloc] initWithObjects:
                              @"Vancouver", @"Vancouver", @"New York",
                              @"New Delhi", @"Delta", @"Vancouver",
                              @"Burnabu", @"Paris", @"Dubai",
                              @"Vancouver", @"Vancouver", @"Tehran",
                              @"Toronto", @"Shanghai", @"Sao Paolo",
                              @"Taipei", @"Warsaw", @"Vancouver",
                              @"Rio De Janeiro", @"Vancouver",
                              @"Vancouver", @"Shanghai",
                              @"New Delhi", @"Delta", @"Vancouver",
                              @"Burnabu", @"Paris", @"Dubai",
                              @"Vancouver", @"Vancouver", @"Tehran",
                              @"Toronto", @"Shanghai", @"Sao Paolo",
                              @"Taipei", @"Warsaw", @"Vancouver",
                              @"Rio De Janeiro", @"Vancouver",
                              @"Vancouver", @"Shanghai", nil];
        
        NSSet* citiesSet = [[NSSet alloc] initWithArray:citiesArr];
        NSMutableDictionary* cityCount = [[NSMutableDictionary alloc] init];
        
        for (NSString* citySet in citiesSet) {
            int count = 0;
            
            for (NSString* cityArray in citiesArr) {
                if ([cityArray isEqualToString: citySet]) {
                    count += 1;
                }
            }
            [cityCount setValue:[NSNumber numberWithInt:count] forKey:citySet];
        }
        
        NSLog(@"%@", cityCount);
        
        NSArray* countedCityArr = cityCount.allValues;
        NSNumber* maxNumber = [countedCityArr valueForKeyPath:@"@max.self"];
        NSArray* mostCity = [cityCount allKeysForObject:maxNumber];
        NSLog(@"city that repeated the most is: %@", mostCity);
    }
    return 0;
}
