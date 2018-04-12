//
//  AmazonPaymentService.m
//  Payments
//
//  Created by Alejandro Zielinsky on 2018-04-12.
//  Copyright © 2018 Alejandro Zielinsky. All rights reserved.
//

#import "AmazonPaymentService.h"

@implementation AmazonPaymentService

-(void)processPaymentAmount:(NSInteger*)amount
{
      NSLog(@"Processing Amazon Payment");
}

-(bool)canProcessPayment
{
    return arc4random_uniform(2) == 1 ? YES : NO;
}
@end
