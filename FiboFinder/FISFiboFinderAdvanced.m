//
//  FISFiboFinderAdvanced.m
//  FiboFinder
//
//  Created by Mason Macias on 6/5/15.
//  Copyright (c) 2015 FIS. All rights reserved.
//

#import "FISFiboFinderAdvanced.h"

@implementation FISFiboFinderAdvanced


- (NSInteger)fibonacciNumberAtIndex:(NSInteger)index
{
    
    NSMutableArray *fibonacciNumbers = [@[@0, @1]mutableCopy];
    
    
    if (index == 0) {
        return 0;
    }
    
    if (index == 1) {
        return 1;
    }
    
    for (NSInteger i = 0; i < index - 1; i++) {
        NSNumber *mostRecentNumber = fibonacciNumbers[fibonacciNumbers.count -1];
        
        NSNumber *secondMostRecentFiboNumber = fibonacciNumbers[fibonacciNumbers.count -2];
        
        NSUInteger thisFiboNumber = mostRecentNumber.unsignedIntegerValue + secondMostRecentFiboNumber.unsignedIntegerValue;
        
        NSNumber *theFiboNumber = @(thisFiboNumber);
        
        [fibonacciNumbers addObject:theFiboNumber];
    }
    
    NSNumber *theNextFiboNumber = fibonacciNumbers.lastObject;
    return theNextFiboNumber.unsignedIntegerValue;
    
}








@end
