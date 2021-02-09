# Text Field Delegation Objc

Create number only text field though the keyboard input not numerical.

The Idea is using `textField shouldChangeCaractersInRange`. This idea is useful when you create program that limit character in textField. Usually game doesn't allow us to create username with symbols like \*, $, % but underscore (_) is allowed.

## Idea
```objectivec
// characters allowed
NSString *numeric = @"0123456789_";

// define all character that's not listed above
NSCharacterSet *charToRemove = [NSCharacterSet characterSetWithCharactersInString:numeric].invertedSet;

// remove characters contained `characterToRemove` by `separated` function
NSString *removedChar = [string componentsSeparatedByCharactersInSet:chartoRemove].firstObject;

// when its true, add it to textField
return (string == removedChar);
```