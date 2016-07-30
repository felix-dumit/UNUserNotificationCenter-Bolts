//
//  UNUserNotificationCenter+BFTask.m
//  Umwho
//
//  Created by Felix Dumit on 7/30/16.
//  Copyright © 2016 Felix Dumit. All rights reserved.
//

#import "UNUserNotificationCenter+Bolts.h"

@implementation UNUserNotificationCenter (Bolts)

-(BFTask <NSNumber*> *)addNotificationRequest:(UNNotificationRequest*)request {
    BFTaskCompletionSource* tsk = [BFTaskCompletionSource taskCompletionSource];

    [self addNotificationRequest:request withCompletionHandler:^(NSError * _Nullable error) {
        if(error){
            [tsk trySetError:error];
        } else {
            [tsk trySetResult:@YES];
        }
    }];

    return tsk.task;
}

-(BFTask <UNNotificationSettings*> *)getNotificationSettings {
    BFTaskCompletionSource* tsk = [BFTaskCompletionSource taskCompletionSource];

    [self getNotificationSettingsWithCompletionHandler:^(UNNotificationSettings * _Nonnull settings) {
        [tsk trySetResult:settings];
    }];

    return tsk.task;
}

-(BFTask<NSSet<UNNotificationCategory *> *> *)getNotificationCategories {
    BFTaskCompletionSource* tsk = [BFTaskCompletionSource taskCompletionSource];

    [self getNotificationCategoriesWithCompletionHandler:^(NSSet<UNNotificationCategory *> * _Nonnull categories) {
        [tsk trySetResult:categories];
    }];

    return tsk.task;
}

-(BFTask<NSArray<UNNotificationRequest *> *> *)getPendingNotificationRequests {
    BFTaskCompletionSource* tsk = [BFTaskCompletionSource taskCompletionSource];

    [self getPendingNotificationRequestsWithCompletionHandler:^(NSArray<UNNotificationRequest *> * _Nonnull requests) {
        [tsk trySetResult:requests];
    }];

    return tsk.task;
}


-(BFTask<NSArray<UNNotification *> *> *)getDeliveredNotifications {
    BFTaskCompletionSource* tsk = [BFTaskCompletionSource taskCompletionSource];

    [self getDeliveredNotificationsWithCompletionHandler:^(NSArray<UNNotification *> * _Nonnull notifications) {
        [tsk trySetResult:notifications];
    }];

    return tsk.task;
}

-(BFTask <NSNumber*> *)requestAuthoriationWithOptions:(UNAuthorizationOptions)options {
    BFTaskCompletionSource* tsk = [BFTaskCompletionSource taskCompletionSource];

    [self requestAuthorizationWithOptions:options completionHandler:^(BOOL granted, NSError * _Nullable error) {
        if(error){
            [tsk trySetError:error];
        } else {
            [tsk trySetResult:@(granted)];
        }
    }];

    return tsk.task;
}

@end
