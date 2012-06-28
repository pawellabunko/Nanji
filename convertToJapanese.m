//
//  convertToJapanese.m
//  Naji
//
//  Created by Pablo on 10-11-06.
//  Copyright 2010 Pinobeans Solutions. All rights reserved.
//

#import "convertToJapanese.h"


@implementation convertToJapanese

@synthesize window, string, dateLabel, formattingStyle, formattingStyleHH, nonMilitaryTime;



#pragma mark -
#pragma mark Application lifecycle


- (void)fetchCalendarEventsForToday:(id)sender{
	
}


-(IBAction)currentTime:(id)sender{
	
	
	NSString *militaryTime = [[NSString alloc] init];
	militaryTime = @"0";
	
	if (militaryTime == @"1") {
		formattingStyle = @"HH:mm";
	}
	else {
		formattingStyle = @"hh:mm";
		
	}
	
	// get full time with displaying nonmilitary or military time
	NSDate* date = [NSDate date];
	NSDateFormatter *formatter = [[NSDateFormatter alloc] init];
	[formatter setDateFormat:formattingStyle];
	
	[formatter setTimeZone:[NSTimeZone timeZoneWithName:@"Europe/Warsaw"]];
	NSString *stringFromDate = [formatter stringFromDate:date];
	
	// get hours
	NSDateFormatter *formattedDateHH = [[NSDateFormatter alloc] init];
	[formattedDateHH setDateFormat:@"HH"];
	NSString* dateHH = [formattedDateHH stringFromDate:date];
	
	//get minutes
	NSDateFormatter *formattedDateMM = [[NSDateFormatter alloc] init];
	[formattedDateMM setDateFormat:@"mm"];
	NSString* dateMM = [formattedDateMM stringFromDate:date];
	
	
#pragma mark -
#pragma mark Hours conversion to Japanese sentence
	
	if ([dateHH isEqualToString:@"00"]) {
		dateHH = @"十二時";
		nonMilitaryTime =@"午前";
	}
    else if([dateHH isEqualToString:@"01"]) {
		dateHH = @"一時";
		nonMilitaryTime =@"午前";
		
	}
	else if([dateHH isEqualToString:@"02"]) {
		dateHH = @"二時";
		nonMilitaryTime =@"午前";
		
	}
	else if([dateHH isEqualToString:@"03"]) {
		dateHH = @"三時";
		nonMilitaryTime = @"午前";
	}
	else if([dateHH isEqualToString:@"04"]) {
		dateHH = @"四時";
		nonMilitaryTime =@"午前";
		
	}
	else if([dateHH isEqualToString:@"05"]) {
		dateHH = @"伍時";
		nonMilitaryTime =@"午前";
		
	}
	else if([dateHH isEqualToString:@"06"]) {
		dateHH = @"六時";
		nonMilitaryTime =@"午前";
		
	}
	else if([dateHH isEqualToString:@"07"]) {
		dateHH = @"七時";
		nonMilitaryTime =@"午前";
		
	}
	else if([dateHH isEqualToString:@"08"]) {
		dateHH = @"八時";
		nonMilitaryTime =@"午前";
		
	}
	else if([dateHH isEqualToString:@"09"]) {
		dateHH = @"九時";
		nonMilitaryTime =@"午前";
		
	}
	else if([dateHH isEqualToString:@"10"]) {
		dateHH = @"十時";
		nonMilitaryTime =@"午前";
		
	}
	else if([dateHH isEqualToString:@"11"]) {
		dateHH = @"十一時";
		nonMilitaryTime =@"午前";
		
	}
	else if([dateHH isEqualToString:@"12"]) {
		dateHH = @"午後十二時";
		nonMilitaryTime =@"午後";
		
	}
	else if([dateHH isEqualToString:@"13"]) {
		dateHH = @"午後一時";
		nonMilitaryTime =@"午後";
		
	}
	else if([dateHH isEqualToString:@"14"]) {
		dateHH = @"午後二時";
		nonMilitaryTime = @"午後";
		
	}
	else if([dateHH isEqualToString:@"15"]) {
		dateHH = @"午後三時";
		nonMilitaryTime = @"午後";
		
	}
	else if([dateHH isEqualToString:@"16"]) {
		dateHH = @"午後四時";
		nonMilitaryTime = @"午後";
		
	}
	else if([dateHH isEqualToString:@"17"]) {
		dateHH = @"午後伍時";
		nonMilitaryTime =@"午後";
		
	}
	else if([dateHH isEqualToString:@"18"]) {
		dateHH = @"午後六時";
		nonMilitaryTime =@"午後";
		
	}
	else if([dateHH isEqualToString:@"19"]) {
		dateHH = @"午後七時";
		nonMilitaryTime =@"午後";
		
	}
	else if([dateHH isEqualToString:@"20"]) {
		dateHH = @"午後八時";
		nonMilitaryTime =@"午後";
		
	}
	else if([dateHH isEqualToString:@"21"]) {
		dateHH = @"午後九時";
		nonMilitaryTime =@"午後";
		
	}
	else if([dateHH isEqualToString:@"22"]) {
		dateHH = @"午後十時";
		nonMilitaryTime =@"午後";
		
	}
	else if([dateHH isEqualToString:@"23"]) {
		dateHH = @"午後十一時";
		nonMilitaryTime =@"午後";
		
	}
	
#pragma mark -
#pragma mark Minutes conversion to Japanese sentence
	
	NSString *dateM_ = [dateMM substringWithRange:NSMakeRange(0, 1)];
	NSString *date_M = [dateMM substringWithRange:NSMakeRange(1, 1)];
	
	//NSLog(dateM_);
	//NSLog(date_M);
	
	
	if ([dateM_ isEqualToString:@"1"]) {
		dateM_ = @"十";
	}
	else if ([dateM_ isEqualToString:@"2"]){
		dateM_ = @"二十";
	}
	else if ([dateM_ isEqualToString:@"3"]){
		dateM_ = @"三十";
	}
	else if ([dateM_ isEqualToString:@"4"]){
		dateM_ = @"四十";
	}
	else if ([dateM_ isEqualToString:@"5"]){
		dateM_ = @"五十";
	}
	else if ([dateM_ isEqualToString:@"0"]){
		dateM_ = @"";
	}
	
	if ([date_M isEqualToString:@"1"]) {
		date_M = @"一分";
	}
	else if ([date_M isEqualToString:@"2"]){
		date_M = @"二分";
	}
	else if ([date_M isEqualToString:@"3"]){
		date_M = @"三分";
	}
	else if ([date_M isEqualToString:@"4"]){
		date_M = @"四分";
	}
	else if ([date_M isEqualToString:@"5"]){
		date_M = @"伍分";
	}
	else if ([date_M isEqualToString:@"6"]){
		date_M = @"六分";
	}
	else if ([date_M isEqualToString:@"7"]){
		date_M = @"七分";
	}
	else if ([date_M isEqualToString:@"8"]){
		date_M = @"八分";
	}
	else if ([date_M isEqualToString:@"9"]){
		date_M = @"九分";
	}
	else if ([date_M isEqualToString:@"0"]){
		date_M = @"分";
	}
	
	stringFromDate = [@"今、" stringByAppendingString:dateHH];
	stringFromDate = [stringFromDate stringByAppendingString:dateM_];
	stringFromDate = [stringFromDate stringByAppendingString:date_M];
	stringFromDate = [stringFromDate stringByAppendingString:@"にです。"];
	
	[dateLabel setText:stringFromDate];	
	
	
}






@end
