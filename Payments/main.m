//
//  main.m
//  Payments
//
//  Created by Alejandro Zielinsky on 2018-04-12.
//  Copyright © 2018 Alejandro Zielinsky. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "InputHandler.h"
#import "PaymentGateway.h"
#import "PaypalPaymentService.h"
#import "AmazonPaymentService.h"
#import "StripePaymentService.h"
#import "ApplePaymentService.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        int totalAmount = arc4random_uniform(901) + 100;
        NSLog(@"Thank you for shopping at Acme.com Your total today is $%d Please select your payment method: 1: Paypal, 2: Stripe, 3: Amazon,4: ApplePay",totalAmount);
        
        NSString* userInput = [InputHandler getUserInput];
        
        int userInputNum = [userInput intValue];
        
        PaymentGateway *payGate = [[PaymentGateway alloc] init];
//        PaypalPaymentService *paypalPayment = [[PaypalPaymentService alloc] init];
//        StripePaymentService *stripePayment = [[StripePaymentService alloc] init];
//        AmazonPaymentService *amazonPayment = [[AmazonPaymentService alloc] init];
//        ApplePaymentService *applePayment = [[ApplePaymentService alloc] init];
        
        
        switch (userInputNum)
        {
            case 1:
            {
             PaypalPaymentService *paypalPayment = [[PaypalPaymentService alloc] init];
            payGate.paymentDelegate = paypalPayment;
            }
                break;
            case 2:
            {
                StripePaymentService *stripePayment = [[StripePaymentService alloc] init];
                payGate.paymentDelegate = stripePayment;
            }
                break;
            case 3:
            {
                AmazonPaymentService *amazonPayment = [[AmazonPaymentService alloc] init];
                payGate.paymentDelegate = amazonPayment;
            }
                break;
            case 4:
            {
                ApplePaymentService *applePayment = [[ApplePaymentService alloc] init];
                payGate.paymentDelegate = applePayment;
            }
                break;
            default:
                break;
        }
        
        [payGate processPaymentAmount:userInputNum];
        
    }
    return 0;
}
