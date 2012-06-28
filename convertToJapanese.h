//
//  convertToJapanese.h
//  Naji
//
//  Created by Pablo on 10-11-06.
//  Copyright 2010 Pinobeans Solutions. All rights reserved.
//

#import <Foundation/Foundation.h>


@interface convertToJapanese : NSObject {
	
	UIWindow *window;
	NSString *string;
	NSString *formattingStyle;
	NSString *formattingStyleHH;
	NSString *formattingStyleDayofTheWeek;
	NSString *formattingStyleDate;
	NSString *nonMilitaryTime;
	
	IBOutlet UILabel *dateLabel;
	
}



@property (nonatomic, retain) IBOutlet UIWindow *window;
@property (nonatomic, retain) NSString *string;
@property (nonatomic, retain) IBOutlet UILabel *dateLabel;
@property (nonatomic, retain) NSString *formattingStyle; 
@property (nonatomic, retain) NSString *nonMilitaryTime;
@property (nonatomic, retain) NSString *formattingStyleHH;


- (NSString *)applicationDocumentsDirectory;
- (void)saveContext;
- (IBAction)currentTime:(id)sender;
- (void) fetchCalendarEventsForToday:(id)sender;

@end