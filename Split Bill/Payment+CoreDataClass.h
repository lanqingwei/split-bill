//
//  Payment+CoreDataClass.h
//  Split Bill
//
//  Created by Qingwei Lan on 1/6/17.
//  Copyright © 2017 Qingwei Lan. All rights reserved.
//  This file was automatically generated and should not be edited.
//

#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>

@class Expense, Person;

NS_ASSUME_NONNULL_BEGIN

@interface Payment : NSManagedObject

+ (Payment *)paymentWithAmount:(int64_t)amount
                        person:(Person *)person
                       expense:(Expense *)expense
        inManagedObjectContext:(NSManagedObjectContext *)context;


@end

NS_ASSUME_NONNULL_END

#import "Payment+CoreDataProperties.h"
