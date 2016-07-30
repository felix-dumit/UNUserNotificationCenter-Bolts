# UNNotificationCenter-Bolts
Bolts wrapper for UNNotificationCenter

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
