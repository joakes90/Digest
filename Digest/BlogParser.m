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
        sharedInstance.parser.delegate = sharedInstance;
    });
    return sharedInstance;
}

-(void)parser:(NSXMLParser *)parser didStartElement:(NSString *)elementName namespaceURI:(NSString *)namespaceURI qualifiedName:(NSString *)qName attributes:(NSDictionary *)attributeDict {
    
}

-(void)parser:(NSXMLParser *)parser foundCharacters:(NSString *)string {
    
}

-(void)parser:(NSXMLParser *)parser didEndElement:(NSString *)elementName namespaceURI:(NSString *)namespaceURI qualifiedName:(NSString *)qName {
    
}




@end
