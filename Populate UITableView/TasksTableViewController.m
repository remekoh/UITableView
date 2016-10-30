//
//  TasksTableViewController.m
//  Populate UITableView
//
//  Created by rem{e}koh on 10/5/16.
//  Copyright © 2016 rem{e}koh. All rights reserved.
//

#import "TasksTableViewController.h"
#import "Task.h"

@interface TasksTableViewController ()

@end

@implementation TasksTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
//    myTasks = [NSMutableArray arrayWithObjects:@"Pray",@"Run",@"Workout",@"Shower",@"Eat",@"Drive", nil];

    myTasks = [[NSMutableArray alloc] init];
    
    Task *Pray = [[Task alloc] init];
    Pray.title = @"Pray";
    Pray.numberOfHours = 1;
    [myTasks addObject:Pray];
    
    Task *Run = [[Task alloc] init];
    Run.title = @"Run";
    Run.numberOfHours = 0.3;
    [myTasks addObject:Run];
    
    Task *Workout = [[Task alloc] init];
    Workout.title = @"Workout";
    Workout.numberOfHours = 1.3;
    [myTasks addObject:Workout];
    
    Task *Shower = [[Task alloc] init];
    Shower.title = @"Shower";
    Shower.numberOfHours = 0.15;
    [myTasks addObject:Shower];
    
    Task *Eat = [[Task alloc] init];
    Eat.title = @"Eat";
    Eat.numberOfHours = 0.30;
    [myTasks addObject:Eat];
    
    Task *Drive = [[Task alloc] init];
    Drive.title = @"Drive";
    Drive.numberOfHours = 0.30;
    [myTasks addObject:Drive];
    
//    Task *task1 = [[Task alloc] init];
//    task1.title = @"Pray";
//    [myTasks addObject:task1];
//    
//    Task *task2 = [[Task alloc] init];
//    task2.title = @"Run";
//    [myTasks addObject:task2];
//    
//    Task *task3 = [[Task alloc] init];
//    task3.title = @"Workout";
//    [myTasks addObject:task3];
//    
//    Task *task4 = [[Task alloc] init];
//    task4.title = @"Shower";
//    [myTasks addObject:task4];
//    
//    Task *task5 = [[Task alloc] init];
//    task5.title = @"Eat";
//    [myTasks addObject:task5];
//    
//    Task *task6 = [[Task alloc] init];
//    task6.title = @"Drive";
//    [myTasks addObject:task6];

    
    
     // assigning the delegates and datasource
    self.myTasksView.delegate = self;
    self.myTasksView.dataSource = self;
    
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return [myTasks count];
    
}
    
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"MainCell" forIndexPath:indexPath];
    
    
    Task *task = [[Task alloc]init];
    task = myTasks[indexPath.row];
    
    cell.textLabel.text = task.title;
    cell.detailTextLabel.text = [NSString stringWithFormat:@"No of Hours: %.2f", task.numberOfHours];
    
//    cell.textLabel.text = myTasks[indexPath.row];

//    Task *task = [self.tasks myTasks:indexPath.row];
//    cell.textLabel.text= myTasks.title;
    
    
//    Task *task = (Task *) myTasks[indexPath.row];
//    
//    [cell.textLabel setText: task.title];
    
    return cell;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
