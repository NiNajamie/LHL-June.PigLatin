//
//  NSString+PigLatinization.m
//  LHL-June.PigLatin
//
//  Created by Asuka Nakagawa on 2016-07-01.
//  Copyright © 2016 Asuka Nakagawa. All rights reserved.
//

#import "NSString+PigLatinization.h"

@implementation NSString (PigLatinization)


- (NSString *)stringByPigLatinization {
    
    NSMutableArray *outputArray = [NSMutableArray new];
    
    
    NSString *userInput = @"air universe";

//    NSCharacterSet *vowels = @"a";
    
    
    if (NSString *vowel in userInput) {
        
    }
    
    
    // NSCharacterSet
    // NSRangeMake(location, length)
    
//    if ([userInput rangeOfString:vowels].location != NSNotFound) {
//        
//    }
    
    
    // PigLatinized words objects in array join with "_".
//    return [array = [outputArray componentsJoinedByString:@" "]];
}

@end
