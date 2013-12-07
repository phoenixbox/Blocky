//
//  BNRExecutor.h
//  Blocky
//
//  Created by Shane Rogers on 12/4/13.
//  Copyright (c) 2013 Shane Rogers. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface BNRExecutor : NSObject
//{
//    int(^equation)(int, int);
//}
@property (nonatomic, copy)int (^equation)(int,int);
-(void)setEquation:(int(^)(int, int))block;
-(int)computeWithValue:(int)value1 andValue:(int)value2;

@end
