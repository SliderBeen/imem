//
//  AXTypeCommandHandlerBase.m
//  imem
//
//  Created by Zheng Shao on 3/4/14.
//  Copyright (c) 2014 axot.org. All rights reserved.
//

#import "AXTypeCommandHandlerBase.h"

@implementation AXTypeCommandHandlerBase

- (BOOL)handlerCommand:(NSString*)command withParameters:(NSArray*)params withSuperHelper:(AXHandlerHelp *)help
{
    if (command == nil)  command = @"";
    if (params == nil)  params = @[];
    
    if ([command isEqualToString:@"t"] ||
        [command isEqualToString:@"type"])
    {
        if (params.count == 1)
        {
            [[AXMemoryCore sharedInstance] setTypeLength:[params[0] intValue]];
            return YES;
        }
        else
        {
            printf("%s\n", self.handlerDescription.UTF8String);
            return YES;
        }
    }
    return NO;
}

- (NSString*)handlerDescription
{
    return @"[t | type] length\n"
    "\t\tset length for data type\n\n";
}

@end
