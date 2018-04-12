//
//  PaymentGateway.h
//  Payments
//
//  Created by Alejandro Zielinsky on 2018-04-12.
//  Copyright © 2018 Alejandro Zielinsky. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol PaymentDelegate <NSObject>

-(void)processPaymentAmount:(NSInteger*)amount;
-(bool)canProcessPayment;

@end

@interface PaymentGateway : NSObject

-(void)processPaymentAmount:(NSInteger*)amount;
@property (nonatomic,strong) id<PaymentDelegate> paymentDelegate;
@end
