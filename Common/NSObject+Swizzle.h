#import <objc/objc-class.h>

@interface NSObject(Swizzle)

+ (void)swizzleMethod:(SEL)orig_sel withMethod:(SEL)alt_sel;

@end
