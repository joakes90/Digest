//
//  Post.h
//  Digest
//
//  Created by Justin Oakes on 5/15/15.
//  Copyright (c) 2015 Oklasoft. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Publisher.h"

@interface Post : NSObject

@property (assign, nonatomic) float Score;

@property (strong, nonatomic) Publisher *Publisher;

@property (strong, nonatomic) NSString *Title;

@property (strong, nonatomic) NSString *BodyHTML;

@property (strong, nonatomic) NSDate *PublishDate;

@property (assign, nonatomic) BOOL isFavorited;

//+(instancetype) initFromDictionary;


@end
