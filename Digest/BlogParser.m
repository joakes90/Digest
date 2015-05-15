//
//  BlogParser.m
//  Digest
//
//  Created by Justin Oakes on 5/15/15.
//  Copyright (c) 2015 Oklasoft. All rights reserved.
//

#import "BlogParser.h"

@interface BlogParser ()

@property (strong, nonatomic)NSXMLParser *parser;
@end

@implementation BlogParser


+ (instancetype) sharedInstance {
    static BlogParser *sharedInstance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        sharedInstance = [[BlogParser alloc] init];
    });
    return sharedInstance;
}


-(void)parser:(NSXMLParser *)parser didStartElement:(NSString *)elementName namespaceURI:(NSString *)namespaceURI qualifiedName:(NSString *)qName attributes:(NSDictionary *)attributeDict {
    
}

-(void)parser:(NSXMLParser *)parser foundCharacters:(NSString *)string {
    
}

-(void)parser:(NSXMLParser *)parser didEndElement:(NSString *)elementName namespaceURI:(NSString *)namespaceURI qualifiedName:(NSString *)qName {
    
}


-(BOOL)beginParseWithURL:(NSURL *)url {
    NSLog(@"im running");
    _parser = [[NSXMLParser alloc] initWithContentsOfURL:url];
    _parser.delegate = self;
    
    return [_parser parse];
}


@end
