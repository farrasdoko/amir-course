# Append Strings

few way to combine string and print it on Objective C.

## Content

1. Using `stringWithFormat`
```objectivec
NSString* thirdString = [NSString stringWithFormat:@"%@ %@", stringOne, stringTwo];
```
2. Using `stringByAppendingString`
```objectivec
NSString* fourthString = [stringOne stringByAppendingString:@" "];
fourthString = [fourthString stringByAppendingString:stringTwo];
```
3. Using `appendFormat` on `MutableString`
```objectivec
NSMutableString* mutableString = [NSMutableString string];
[mutableString appendFormat:@"%@ %@", stringOne, stringTwo];
```

