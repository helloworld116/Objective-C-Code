//
//  Rectange.m
//  NSDataDemo
//
//  Created by 文正光 on 14-3-18.
//  Copyright (c) 2014年 文正光. All rights reserved.
//

#import "Rectange.h"

@implementation Rectange

-(id)initWithWidth:(int)width andHeight:(int)height{
    self = [super init];
    if (self) {
        self.width = width;
        self.height = height;
    }
    return self;
}


-(id)initWithCoder:(NSCoder *)aDecoder{
    self = [super init];
    if (self) {
        self.width = [aDecoder decodeIntForKey:@"width"];
        self.height = [aDecoder decodeIntForKey:@"height"];
    }
    return self;
}

-(void)encodeWithCoder:(NSCoder *)aCoder{
    [aCoder encodeInt:self.width forKey:@"width"];
    [aCoder encodeInt:self.height forKey:@"height"];
}

-(NSString *)description{
    NSString *str = [NSString stringWithFormat:@"the rectenge width is %d and height is %d",self.width,self.height];
    return str;
}
@end
