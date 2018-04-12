//
//  ApplePaymentService.m
//  Payments
//
//  Created by Alejandro Zielinsky on 2018-04-12.
//  Copyright © 2018 Alejandro Zielinsky. All rights reserved.
//

#import "ApplePaymentService.h"

@implementation ApplePaymentService

-(void)processPaymentAmount:(NSInteger*)amount
{
    NSLog(@"Processing ApplePay Payment");
}

-(bool)canProcessPayment
{
    return arc4random_uniform(2) == 1 ? YES : NO;
}

@end
