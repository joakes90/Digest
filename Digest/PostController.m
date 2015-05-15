//
//  PostController.m
//  Digest
//
//  Created by Justin Oakes on 5/15/15.
//  Copyright (c) 2015 Oklasoft. All rights reserved.
//

#import "PostController.h"

@implementation PostController

+ (instancetype) sharedInstance {
    static PostController *sharedInstance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        sharedInstance = [[PostController alloc] init];
    });
    return sharedInstance;
}


@end
