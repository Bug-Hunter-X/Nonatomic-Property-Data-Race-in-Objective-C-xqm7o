The solution is to declare the property as `atomic` or use proper synchronization mechanisms. Declaring the property as `atomic` ensures that access to the property is synchronized, preventing data races.  Alternatively, you can add explicit synchronization (e.g. using `@synchronized` or locks) to protect the access to the property.  

```objectivec
// BugSolution.m
#import "BugSolution.h"

@interface BugSolution ()
@property (atomic) NSInteger counter;
@end

@implementation BugSolution
- (void)incrementCounter {
    _counter++;
}

- (NSInteger)getCounter {
    return _counter;
}
@end
```