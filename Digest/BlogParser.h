//
//  BlogParser.h
//  Digest
//
//  Created by Justin Oakes on 5/15/15.
//  Copyright (c) 2015 Oklasoft. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface BlogParser : NSObject

@property (strong, nonatomic) NSXMLParser *parser;


+ (instancetype) sharedInstance;

@end
