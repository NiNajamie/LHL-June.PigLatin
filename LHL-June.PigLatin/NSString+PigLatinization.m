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
    
    
    
                          // 0    , 1   ,    2    , 3
//    NSString *userInput = [@"ChIps KAle OfFSpring SumMer" lowercaseString];
    
    // Get userInput from main.m
    NSArray *userInputArray = [self componentsSeparatedByString:@" "];
    
    // chips
//    NSString *firstWord = [[[userInput componentsSeparatedByString:@" "] objectAtIndex:0] lowercaseString];
//    NSLog(@"firstWord-- %@", firstWord);
    
    
    NSString *vowels = @"aeiou";
    // cut vowels string into piece 'a','e'...
    // vowel = @["a", "e", "i", "o", "u"]; // unsorted
    NSCharacterSet *vowel = [NSCharacterSet characterSetWithCharactersInString:vowels];
    
    // in the userinput, separate each word
    for (NSString *word in userInputArray) {
        NSRange range = [word rangeOfCharacterFromSet:vowel];
        
        if (range.location != NSNotFound) {
            
            // substringFromIndex = create rightSide
            NSMutableString *rightWord = [[word substringFromIndex:range.location] mutableCopy];
            NSLog(@"rightWord---%@", rightWord);
            
            // Adding leftSide(substringToIndex) to rightSide
            [rightWord appendString:[word substringToIndex:range.location]];
            NSString *convertedWord = [[NSString stringWithFormat:@"%@ay", rightWord] capitalizedString];
            NSLog(@"ConvertedWord--%@", convertedWord);
            
            
            [convertedArray addObject:convertedWord];

        }
    }
//    NSRange range = [firstWord rangeOfCharacterFromSet:vowel];
//
//    if (range.location != NSNotFound) {
//        
//        // substringFromIndex = create rightSide
//        NSMutableString *convertedWord = [[firstWord substringFromIndex:range.location] mutableCopy];
//        
//        // Adding leftSide(substringToIndex) to rightSide
//        [convertedWord appendString:[firstWord substringToIndex:range.location]];
//        NSLog(@"converted FirstWord--%@ay", convertedWord);
//    }
    
    // if you find a vowel in firstWord, remove all characters before the vowel
//    NSArray *beggining = [firstWord componentsSeparatedByCharactersInSet:vowel];
//    NSLog(@"The characters of beggining are-- %@", beggining[0]);
    
    
//    NSString *ending = [[firstWord stringByReplacingOccurrencesOfString:beggining[0] withString:@""] capitalizedString];
    
//    NSString *convertedWord = [NSString stringWithFormat:@"%@%@ay", ending, beggining[0]];
//    [convertedArray addObject:[convertedWord stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]]];
//
//    NSLog(@"array--%@",[convertedArray componentsJoinedByString:@" "]);
    
    
    // PigLatinized words objects in array join with "_".
    return [convertedArray componentsJoinedByString:@" "];
}

@end
