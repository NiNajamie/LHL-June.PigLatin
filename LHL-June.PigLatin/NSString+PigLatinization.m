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
    
    
    
    
    NSString *userInput = @"Chips KAlE";
    // chips
    NSString *firstWord = [[[userInput componentsSeparatedByString:@" "] objectAtIndex:0] lowercaseString];

    
    NSString *vowels = @"aeiou";
    
    // cut vowels string into piece 'a','e'...
    // vowel = @["a", "e", "i", "o", "u"]; // unsorted
    NSCharacterSet *vowel = [NSCharacterSet characterSetWithCharactersInString:vowels];
    
    
    // if you find a vowel in firstWord, remove all characters before the vowel
    NSArray *beggining = [firstWord componentsSeparatedByCharactersInSet:vowel];
    NSLog(@"The characters of beggining are-- %@", beggining[0]);
    
    NSString *ending = [[firstWord stringByReplacingOccurrencesOfString:beggining[0] withString:@""] capitalizedString];
        
    
    NSLog(@"%@%@ay", ending, beggining[0]);
    
    
    
    
    
    
    
    
    
    //        NSRange *location = location;
//        NSRange *length = length;
//
//        NSString *beggining = [NSMakeRange:(location, length)];
        
    
//    if (NSString *vowel in userInput) {
//        
//    }
    
    
    // NSCharacterSet
    // NSRangeMake(location, length)
    
    
    // PigLatinized words objects in array join with "_".
    return [convertedArray componentsJoinedByString:@" "];
}

@end
