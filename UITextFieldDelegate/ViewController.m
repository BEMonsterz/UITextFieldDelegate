//
//  ViewController.m
//  UITextFieldDelegate
//
//  Created by Bryan Ayllon on 6/20/16.
//  Copyright © 2016 Bryan Ayllon. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (nonatomic,weak) IBOutlet UISwitch *beginediting;
@property(nonatomic,weak) IBOutlet UISwitch  *endediting;
@property(nonatomic,weak) IBOutlet UISwitch *changecharacter;
@property(nonatomic,weak) IBOutlet UISwitch *shouldclear;
@property(nonatomic,weak) IBOutlet UISwitch *shouldreturn;
@property(nonatomic,weak) IBOutlet UITextField *textfield;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (BOOL)textFieldShouldBeginEditing:(UITextField *)textField{
    if(self.beginediting.isOn){
        NSLog(@"Begin Editing");
    }
    return YES;
}

- (BOOL)textFieldShouldEndEditing:(UITextField *)textField{
    if(self.endediting.isOn){
        NSLog(@"End Editing");
    }
    return YES;
}

- (BOOL)textField:(UITextField *)textField
shouldChangeCharactersInRange:(NSRange)range
replacementString:(NSString *)string{
    if(self.changecharacter.isOn){
        NSLog(@"Change Character in Range");
    }
    return YES;
}

- (BOOL)textFieldShouldClear:(UITextField *)textField{
    if(self.shouldclear.isOn){
        NSLog(@"Should Clear");
    }
    return YES;
}


- (BOOL)textFieldShouldReturn:(UITextField *)textField{
    if(self.shouldreturn.isOn){
        NSLog(@"Should return?");
    }
    
    [textField resignFirstResponder];
    return YES;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
