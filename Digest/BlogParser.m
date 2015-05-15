//
//  BlogParser.m
//  Digest
//
//  Created by Justin Oakes on 5/15/15.
//  Copyright (c) 2015 Oklasoft. All rights reserved.
//

#import "BlogParser.h"

@implementation BlogParser


+ (instancetype) sharedInstance {
    static BlogParser *sharedInstance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        sharedInstance = [[BlogParser alloc] init];
        sharedInstance.parser = [[NSXMLParser alloc] init];
    });
    return sharedInstance;
}


@end
