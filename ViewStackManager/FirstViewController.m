//
//  FirstViewController.m
//  ViewStackManager
//
//  Created by Kay Klein on 10.01.12.
//  Copyright (c) 2012 Akademie. All rights reserved.
//

#import "FirstViewController.h"
#import "ViewStackManager.h"

@implementation FirstViewController


-(id)initWithFrame:(CGRect)frame{

    self = [super initWithNibName:nil bundle:nil];
    
    if (self) {
        
    }
    return self;
    
}



- (void)didReceiveMemoryWarning{
    [super didReceiveMemoryWarning];
}

#pragma mark - View lifecycle

/*
// Implement loadView to create a view hierarchy programmatically, without using a nib.
- (void)loadView{
}
*/

-(void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event{

    NSLog(@"touches began");
    [[ViewStackManager instance] popViewController];
    
    
}

// Implement viewDidLoad to do additional setup after loading the view, typically from a nib.
- (void)viewDidLoad{
    [super viewDidLoad];
    [self.view setBackgroundColor:[UIColor blackColor]];
}


- (void)viewDidUnload{
    [super viewDidUnload];
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation{
	return YES;
}

-(void)dealloc{
    NSLog(@"DEALLOC FirstViewController" );
    
}

@end
