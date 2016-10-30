//
//  TasksTableViewController.h
//  Populate UITableView
//
//  Created by rem{e}koh on 10/5/16.
//  Copyright © 2016 rem{e}koh. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface TasksTableViewController : UIViewController <UITableViewDelegate, UITableViewDataSource>

// Task Array
{
    NSMutableArray *myTasks;
}

@property (nonatomic,weak) IBOutlet UITableView *myTasksView;

@end
