//  FISAppDelegate.m

#import "FISAppDelegate.h"

@implementation FISAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    // Override point for customization after application launch.
    return YES;
}

- (NSString *)stringWithDeliLine: (NSArray *)deliLine {
    
    NSString *newLine = @"";
    
    if ([deliLine count] == 0) {
        newLine = [NSString stringWithFormat: @"The line is currently empty."];
    }
    
    else
        newLine = [newLine stringByAppendingString:@"The line is:"];
    
        for (NSUInteger i = 0; i < [deliLine count]; i++) {
            NSUInteger p = i + 1;
            NSString *names = [NSString stringWithFormat:@"\n%lu. %@", (unsigned long)p, deliLine[i]];
            newLine = [newLine stringByAppendingString:names];
        }
    
    return newLine;
}


- (void)addName:(NSString *)name toDeliLine:(NSMutableArray *)deliLine {
        [deliLine addObject:name];
    }



- (NSString *)serveNextCustomerInDeliLine: (NSMutableArray *)deliLine {
    
    NSString *firstname = [deliLine objectAtIndex:0];
    [deliLine removeObjectAtIndex:0];
    
    return firstname;
}

@end