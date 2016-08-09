# UNUserNotificationCenter-Bolts
[![Version](https://img.shields.io/cocoapods/v/UNUserNotificationCenter+Bolts.svg?style=flat)](http://cocoadocs.org/docsets/UNUserNotificationCenter+Bolts)
[![License](https://img.shields.io/cocoapods/l/UNUserNotificationCenter+Bolts.svg?style=flat)](http://cocoadocs.org/docsets/UNUserNotificationCenter+Bolts)
[![Platform](https://img.shields.io/cocoapods/p/UNUserNotificationCenter+Bolts.svg?style=flat)](http://cocoadocs.org/docsets/UNUserNotificationCenter+Bolts)

Bolts wrapper for UNUserNotificationCenter


```objc
#import <UserNotifications/UserNotifications.h>

@interface UNUserNotificationCenter (Bolts)

-(BFTask <NSNumber*> *)addNotificationRequest:(UNNotificationRequest*)request;

-(BFTask <UNNotificationSettings*> *)getNotificationSettings;

-(BFTask<NSSet<UNNotificationCategory *> *> *)getNotificationCategories;

-(BFTask<NSArray<UNNotificationRequest *> *> *)getPendingNotificationRequests;

-(BFTask<NSArray<UNNotification *> *> *)getDeliveredNotifications;

-(BFTask <NSNumber*> *)requestAuthoriationWithOptions:(UNAuthorizationOptions)options;

@end
```
