//
//  Fibonacci.m
//  CallingObjectiveC
//
//  Created by Dan Beaulieu on 12/11/15.
//  Copyright © 2015 Dan Beaulieu. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Fibonacci : NSObject



- (int)fib:(int)i;
@end

@implementation Fibonacci

- (id)init
{
    self = [super init];
    NSLog(@"initializing");

    return self;
}

- (int)fib:(int)i {
    static NSMutableDictionary *fibCache = nil;
    if (!fibCache) {
        fibCache = [NSMutableDictionary new];
    }
    if (fibCache[@(i)]) {
        return [fibCache[@(i)] intValue];
    }
    int val = (i == 0) ? 0 : ((i < 3) ? 1 : ([self fib:i-1] + [self fib:i-2]));
    fibCache[@(i)] = @(val);
    return val;
}


@end
