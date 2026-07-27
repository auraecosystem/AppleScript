#import <Foundation/Foundation.h>

@interface Greeter : NSObject
- (void)sayHello;
@end

@implementation Greeter
- (void)sayHello {
    NSLog(@"Hello, world!");
}
@end

int main() {
    Greeter *greeter = [[Greeter alloc] init];
    [greeter sayHello];
    return 0;
}
