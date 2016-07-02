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
    
    NSMutableArray *convertedArray = [NSMutableArray new];
    
    
    NSString *userInput = @"user input";
    
    NSString *vowel = @"aeiou";
    NSCharacterSet *vowels = [NSCharacterSet characterSetWithCharactersInString:vowel];
    if (vowel in userInput) {
        
        NSRange *location = location;
        NSRange *length = length;

        NSString *beggining = [NSMakeRange:(location, length)];
        
    }
    
    
    
//    if (NSString *vowel in userInput) {
//        
//    }
    
    
    // NSCharacterSet
    // NSRangeMake(location, length)
    
//    if ([userInput rangeOfString:vowels].location != NSNotFound) {
//        
//    }
    
    
    // PigLatinized words objects in array join with "_".
    return [convertedArray componentsJoinedByString:@" "];
}

@end
