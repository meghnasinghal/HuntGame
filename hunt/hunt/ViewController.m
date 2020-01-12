//
//  ViewController.m
//  hunt
//
//  Created by admin on 16/06/15.
//  Copyright (c) 2015 meghna. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController
{
    NSArray *p;
    NSString *r;
    int count;
 
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    p=[NSArray arrayWithObjects:@"1.jpg",@"2.jpg",@"3.jpg",@"4.jpg",@"5.jpg",@"6.jpg",@"7.jpg",@"8.jpg",@"9.jpg", nil];
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)playbutton:(id)sender {
    [self.b1 setTitle:@"?" forState:UIControlStateNormal];
    [self.b2 setTitle:@"?" forState:UIControlStateNormal];
    [self.b3 setTitle:@"?" forState:UIControlStateNormal];
    [self.b4 setTitle:@"?" forState:UIControlStateNormal];
    [self.b5 setTitle:@"?" forState:UIControlStateNormal];
    [self.b6 setTitle:@"?" forState:UIControlStateNormal];
    [self.b7 setTitle:@"?" forState:UIControlStateNormal];
    [self.b8 setTitle:@"?" forState:UIControlStateNormal];
    [self.b9 setTitle:@"?" forState:UIControlStateNormal];

}

-(void)check
{
    
    NSString *w=@"9.jpg";
  if ( [w compare:r]==NSOrderedSame)
  {
      UIAlertView *pp=[[UIAlertView alloc]initWithTitle:@"well played" message:@"you won" delegate:nil cancelButtonTitle:@"cancel" otherButtonTitles:@"ok", nil];
      [pp show];
}
    count++;
    self.label1.text=[NSString stringWithFormat: @"%i",count];
}

- (IBAction)play:(id)sender {
    
        NSInteger i=arc4random()%9;
     r=[p objectAtIndex:i];
    switch ([sender tag]) {
        case 0:
            [self.b1 setBackgroundImage:[UIImage imageNamed:r] forState:UIControlStateNormal];
            [self check];
            break;
        case 1:
            [self.b2 setBackgroundImage:[UIImage imageNamed:r] forState:UIControlStateNormal];
            [self check];

            break;
        case 2:
            [self.b3 setBackgroundImage:[UIImage imageNamed:r] forState:UIControlStateNormal];
            [self check];

            break;
        case 3:
            [self.b4 setBackgroundImage:[UIImage imageNamed:r] forState:UIControlStateNormal];
            [self check];

            break;
        case 4:
            [self.b5 setBackgroundImage:[UIImage imageNamed:r] forState:UIControlStateNormal];
            [self check];

            break;
        case 5:
            [self.b6 setBackgroundImage:[UIImage imageNamed:r] forState:UIControlStateNormal];
            [self check];

            break;
        case 6:
            [self.b7 setBackgroundImage:[UIImage imageNamed:r] forState:UIControlStateNormal];
            [self check];

            break;
        case 7:
            [self.b8 setBackgroundImage:[UIImage imageNamed:r] forState:UIControlStateNormal];
            [self check];

            break;
        case 8:
            [self.b9 setBackgroundImage:[UIImage imageNamed:r] forState:UIControlStateNormal];
            [self check];

            break;

        default:
            break;
    }
    
   
}





@end
