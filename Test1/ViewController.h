//
//  ViewController.h
//  Test1
//
//  Created by qingjie on 9/30/15.
//  Copyright © 2015 qingjie. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController <UITableViewDataSource, UITableViewDelegate>

@property (weak, nonatomic) IBOutlet UITableView *tbView;

@end

