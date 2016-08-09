//
//  UNUserNotificationCenter+BFTask.h
//  Umwho
//
//  Created by Felix Dumit on 7/30/16.
//  Copyright © 2016 Felix Dumit. All rights reserved.
//

#import <UserNotifications/UserNotifications.h>
#import <Bolts/Bolts.h>

@interface UNUserNotificationCenter (Bolts)

-(BFTask <NSNumber *> *)addNotificationRequest:(UNNotificationRequest*)request;

-(BFTask <UNNotificationSettings* > *)getNotificationSettings;

-(BFTask <NSSet<UNNotificationCategory *> *> *)getNotificationCategories;

-(BFTask <NSArray<UNNotificationRequest *> *> *)getPendingNotificationRequests;

-(BFTask <NSArray<UNNotification *> *> *)getDeliveredNotifications;

-(BFTask <NSNumber *> *)requestAuthoriationWithOptions:(UNAuthorizationOptions)options;

@end
