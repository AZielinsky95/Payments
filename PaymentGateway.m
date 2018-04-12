//
//  PaymentGateway.m
//  Payments
//
//  Created by Alejandro Zielinsky on 2018-04-12.
//  Copyright © 2018 Alejandro Zielinsky. All rights reserved.
//

#import "PaymentGateway.h"

@implementation PaymentGateway

-(void)processPaymentAmount:(NSInteger*)amount
{
    if(self.paymentDelegate.canProcessPayment)
    {
        [self.paymentDelegate processPaymentAmount:amount];
    }
    else
    {
          NSLog(@"Failed to Proccess Payment");
    }
}

@end
