//
//  ViewStackManager.h
//  ViewStackManager
//
//  Created by Kay Klein on 10.01.12.
//  Copyright (c) 2012 Akademie. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface ViewStackManager : NSObject {

    @private
    NSMutableArray *viewStack;

    UIView *rootView;
    
}

@property(strong, nonatomic ) UIView* rootView;

+(id)instance;
-(id)initWithRootView:(UIView*)rv;

-(void)pushViewController:(Class)vc;
-(void)popViewController;




@end
