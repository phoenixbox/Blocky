//
//  BNRExecutor.m
//  Blocky
//
//  Created by Shane Rogers on 12/4/13.
//  Copyright (c) 2013 Shane Rogers. All rights reserved.
//

#import "BNRExecutor.h"

@implementation BNRExecutor
@synthesize equation;

-(void)setEquation:(int (^)(int, int))block
{
    // assign the instance available to the block reference
    equation = block;
}
-(int)computeWithValue:(int)value1 andValue:(int)value2
{
    // return 0 if there is not block reference to avoid a crash
    if(!equation){
        return 0;
    }
    // return the block with 2 values
    return equation(value1, value2);
}
@end
