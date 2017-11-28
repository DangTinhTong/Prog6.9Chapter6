//
//  main.m
//  Prog6.9
//
//  Created by admin on 11/28/17.
//  Copyright © 2017 admin. All rights reserved.
//
// Program to evaluate simple expressions of the form value operator value

#import <Foundation/Foundation.h>

// interface section
@interface Calculator : NSObject
{
    double accumulator;
}
-(void) setAccumulator: (double) value  ;
-(void) clear;
-(double) accumulator;

-(void) add: (double) value;
-(void) subtract: (double) value;
-(void) multiply: (double) value;
-(void) divide: (double) value;
@end

@implementation Calculator

-(void) setAccumulator:(double)value
{
    accumulator = value;
    
}
-(void) clear
{
    accumulator =0  ;
}

-(double) accumulator
{
    return accumulator;
}
-(void) add:(double)value
{
    accumulator+=value;
}

-(void) subtract:(double)value
{
    accumulator-=value;
}
-(void) multiply:(double)value
{
    accumulator*=value;
}
-(void) divide:(double)value
{
    accumulator/=value;
}
@end

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        //NSLog(@"Hello, World!");
        
        double value1, value2;
        char operator;
        Calculator *myCalculator = [[Calculator alloc] init];
        NSLog(@"Type in your number.");
        scanf("%lf,%c,%lf",&value1,&operator,&value2);
        [myCalculator setAccumulator:value1];
        
        switch (operator)
        {
                case '+':
                [myCalculator add:value2];
                break;
                case '-':
                [myCalculator subtract:value2];
                break;
                case '*' :
                [myCalculator multiply:value2];
                break;
                case '/':
            {
                if (value2==0)
                    NSLog(@"Division by zero.");
                    else
                        [myCalculator divide:value2];
                break;
            }
                default:
                NSLog(@"Unknow operator");
                break;
                
        }
        NSLog(@"%0.2f",[myCalculator accumulator]);
    }
    return 0;
}
