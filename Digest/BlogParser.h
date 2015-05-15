//
//  BlogParser.h
//  Digest
//
//  Created by Justin Oakes on 5/15/15.
//  Copyright (c) 2015 Oklasoft. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface BlogParser : NSObject <NSXMLParserDelegate>

@property (strong, nonatomic, readonly) NSXMLParser *parser;

@property(readonly, copy) NSError *parserError;


+ (instancetype) sharedInstance;

-(BOOL)beginParseWithURL:(NSURL *)url;

@end
