//
//  Rectange.h
//  NSDataDemo
//
//  Created by 文正光 on 14-3-18.
//  Copyright (c) 2014年 文正光. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Rectange : NSObject<NSCoding>
@property (nonatomic) int width;
@property (nonatomic) int height;

-(id)initWithWidth:(int)width andHeight:(int)height;
@end
