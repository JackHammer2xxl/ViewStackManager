//
//  ViewController.m
//  ViewStackManager
//
//  Created by Kay Klein on 10.01.12.
//  Copyright (c) 2012 Akademie. All rights reserved.
//

#import "ViewController.h"
#import "ViewStackManager.h"
#import "FirstViewController.h"

@implementation ViewController

- (void)didReceiveMemoryWarning{
    [super didReceiveMemoryWarning];
    // Release any cached data, images, etc that aren't in use.
}

#pragma mark - View lifecycle

- (void)viewDidLoad{
    [super viewDidLoad];

    btnFirst = [UIButton buttonWithType:UIButtonTypeCustom];
    [btnFirst setFrame:CGRectMake(10, 10, 100, 65 ) ];
    [btnFirst  setBackgroundColor:[UIColor blackColor]];
    [btnFirst setTitle:@"First" forState:UIControlStateNormal ];
    [btnFirst setTitleColor:[UIColor redColor] forState:UIControlStateNormal ];
    [btnFirst addTarget:self action:@selector(actionFirst:) forControlEvents:UIControlEventTouchUpInside ];
    [self.view addSubview:btnFirst ];
    
    
}


-(void)actionFirst:(id)sender{
    NSLog(@"Invoke first");
    
    [[ViewStackManager instance] pushViewController:[FirstViewController class]]; 
    
}


- (void)viewDidUnload{
    [super viewDidUnload];
}

- (void)viewWillAppear:(BOOL)animated{
    [super viewWillAppear:animated];
}

- (void)viewDidAppear:(BOOL)animated{
    [super viewDidAppear:animated];
}

- (void)viewWillDisappear:(BOOL)animated{
	[super viewWillDisappear:animated];
}

- (void)viewDidDisappear:(BOOL)animated{
	[super viewDidDisappear:animated];
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation{
    // Return YES for supported orientations
    return YES;
}

@end
