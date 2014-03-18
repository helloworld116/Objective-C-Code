//
//  main.m
//  NSDataDemo
//
//  Created by 文正光 on 14-3-18.
//  Copyright (c) 2014年 文正光. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Rectange.h"

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        // insert code here...
//        NSArray *array = @[@"Job",@"Steven",@56];
//        NSData *data = [NSKeyedArchiver archivedDataWithRootObject:array];
//        [data writeToFile:@"coredata.txt" atomically:YES];
//        
//        NSData *dataFromFile = [NSData dataWithContentsOfFile:@"coredata.txt"];
//        NSArray *arrayFromFile = [NSKeyedUnarchiver unarchiveObjectWithData:dataFromFile];
//        NSLog(@"array from file is %@:",arrayFromFile);
        
        Rectange *rect1 = [[Rectange alloc] initWithWidth:45 andHeight:56];
        Rectange *rect2 = [[Rectange alloc] initWithWidth:67 andHeight:78];
        NSArray *array = @[rect1,rect2];
        NSData *data = [NSKeyedArchiver archivedDataWithRootObject:array];
        [data writeToFile:@"coredata.data" atomically:YES];
        
        NSData *dataFromFile = [NSData dataWithContentsOfFile:@"coredata.data"];
        NSArray *arrayFromFile  = [NSKeyedUnarchiver unarchiveObjectWithData:dataFromFile];
        NSLog(@"%@",arrayFromFile);
    }
    return 0;
}

