//
//  ViewController.m
//  AOCWK_3
//
//  Created by Joel Johnson on 11/4/12.
//  Copyright (c) 2012 Joel Johnson. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    // 4. Call the Append function with two NSStrings. Capture the result and display a UIAlertView with the appended string using displayAlertWithString.
    NSString *appended = [[NSString alloc]init];
    appended = [self Append:@"This is my first String." secondString:@"This is my second String"];
    //NSLog(@"%@", appended);
    [self DisplayAlertWithString:appended];

    
// 6. Call the Add function passing in two integer values. Capture the return of this function into a variable.
    int num1 = 10;
    int num2 = 20;
    // capturing the value in variable name sum
    int sum = [self Add:num1 thisNumber:num2];
    
// 7. Bundle the returned integer into an NSNumber and then convert it to a NSString and pass it to the DisplayAlertWithString function.
// 8. Give it some text for the title. The message will read, "The number is 00". Replace the 00 with the integer passed into the function.

    NSNumber *sumNumber = [[NSNumber alloc] initWithInt:sum];
    NSString *theSum = [sumNumber stringValue];
    NSString *theSumMessage1 = @"the number is ";
    NSString *theSumMessage = [theSumMessage1 stringByAppendingString:theSum];
    
    [self DisplayAlertWithString:theSumMessage];

// 9. Call the Compare function with two integer values. If Compare returns YES, display an UIAlertView both with the input values and the result using the DisplayAlertWithString function
    //Two integers 
    int compareValue1 = 112;
    int compareValue2 = 112;
    //convert the ints to Strings to use later.
    NSString *cv1 = [NSString stringWithFormat:@"%d",compareValue1];
    NSString *cv2 = [NSString stringWithFormat:@"%d",compareValue2];

    BOOL comparedAnswer = [self Compare:compareValue1 numberDeuce:compareValue2];
    
    if (comparedAnswer)
    {
        
        //setup my message to send to the DisplayUIAlert
        
        NSString *returned = @"\n compare function returned YES";
        NSString *comparedfirst = @"The first Number is: ";
        NSString *comparedsecond = @"\n The second Number is: ";
        NSString *compareAddfirst = [comparedfirst stringByAppendingString:cv1];
        NSString *compareAddsecond = [compareAddfirst stringByAppendingString:comparedsecond];
        NSString *compareAddSecondVal = [compareAddsecond stringByAppendingString:cv2];
        NSString *finalMessage = [compareAddSecondVal stringByAppendingString:returned];
        [self DisplayAlertWithString:finalMessage];
        
        
    }
    else
    {
        [self DisplayAlertWithString:@"The numbers are not equal. Move along."];
    }

    
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


// 1. Create a function called Add. This function will take two NSInteger or int types and return the result of an addition between these two.
-(int)Add:(NSInteger)numberOne thisNumber:(NSInteger)numberTwo
{
    int sum_of_both = numberOne + numberTwo;
    return sum_of_both;
}
// 2. Create a BOOL function called Compare that takes two NSInteger values. Return YES or NO based on whether the values are equal.
-(BOOL)Compare:(NSInteger)number1 numberDeuce:(NSInteger)number2
{
    if (number1 == number2){
        return YES;
    } else {
        return NO;
    }

} 

// 3. Create a function called Append. This function will take two NSStrings and return a new NSString containing the appended strings using an NSMutableString and the Append method.

-(NSString*)Append:(NSString*)string1 secondString:(NSString*)string2
{
    NSMutableString *appendedString = [[NSMutableString alloc] initWithCapacity:2];
    // if there were more than two values here I suppose a loop would be more prudent.
    [appendedString appendString:string1];
    [appendedString appendString:string2];
    //NSLog(@"(IN THE FUNCTION) %@", appendedString);
    return appendedString;
}

// 5. Create a function called DisplayAlertWithString. This function will take as a parameter an NSString.
// - DisplayAlertWithString Function
// 1. Take the passed in NSString and display it in the alert view
// 2. Create an UIAlertView

-(void)DisplayAlertWithString:(NSString*)theString
{

    UIAlertView *myAlert = [[UIAlertView alloc]initWithTitle:@"My Test Alert" message:theString delegate:nil cancelButtonTitle:@"Next" otherButtonTitles:nil];
        if (myAlert != nil)
        {
            [myAlert show];
        }
}

@end
