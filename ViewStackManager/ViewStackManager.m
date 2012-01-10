//
//  ViewStackManager.m
//  ViewStackManager
//
//  Created by Kay Klein on 10.01.12.
//  Copyright (c) 2012 Akademie. All rights reserved.
//

#import "ViewStackManager.h"
#import "AppDelegate.h"
#import "ViewController.h"

@implementation ViewStackManager
@synthesize rootView;


static ViewStackManager* instance = nil;
+(id)instance{
    @synchronized(self){
    if(instance)
        return instance;
    else
        instance =  
        [[self alloc] initWithRootView:((AppDelegate*)[UIApplication sharedApplication].delegate).viewController.view];
    
    return instance;
    }
}


-(id)initWithRootView:(UIView*)rv{

    self = [super init];
    if(self){
    
        self.rootView = rv;
        viewStack = [[NSMutableArray alloc] init]; 

    }
    
    return self;
}


-(void)pushViewController:(Class )vcClass{

    UIViewController* vc = [[vcClass alloc] initWithFrame:CGRectMake(0, 0, 768, 1024)];
    [viewStack addObject:vc ];
    [self.rootView addSubview:vc.view ];
    
}


-(void)popViewController{
    
    UIViewController* vc = [viewStack lastObject];
    [vc.view removeFromSuperview ];
    [viewStack removeLastObject];
    
}


@end
