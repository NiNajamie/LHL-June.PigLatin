//
//  main.m
//  LHL-June.PigLatin
//
//  Created by Asuka Nakagawa on 2016-07-01.
//  Copyright © 2016 Asuka Nakagawa. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "NSString+PigLatinization.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        char userCommands[200];
        printf("Enter some words (PigLatinization): ");
        fgets(userCommands, 200, stdin);
//        printf("User input was: %s", userCommands);
        
        NSString *commandString = [[[NSString stringWithUTF8String:userCommands] lowercaseString] stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];
        
//        NSLog(@"lowercase of input was: %@", commandString);
        
        [commandString stringByPigLatinization];
    }
    return 0;
}
