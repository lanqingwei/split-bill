//
//  SBPerson.m
//  Split Bill
//
//  Created by Qingwei Lan on 1/4/17.
//  Copyright © 2017 Qingwei Lan. All rights reserved.
//

#import "SBPerson.h"
#import "Person+CoreDataClass.h"

@interface SBPerson ()

@property (nonatomic, strong, readwrite) NSString *name;
@property (nonatomic, readwrite) NSInteger weight;

@end

@implementation SBPerson

+ (SBPerson *)personWithName:(NSString *)name andWeight:(NSInteger)weight
{
    SBPerson *person = [[SBPerson alloc] init];
    person.name = name;
    person.weight = weight;
    return person;
}

+ (SBPerson *)personFromCDPerson:(Person *)person
{
    return [SBPerson personWithName:person.name andWeight:person.weight];
}

#pragma mark - DEBUG

- (NSString *)description
{
    return [NSString stringWithFormat:@"%@ (%ld)", self.name, self.weight];
}

@end
