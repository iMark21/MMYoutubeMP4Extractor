//
//  MMViewController.m
//  MMYoutubeMP4Extractor
//
//  Created by Juan Miguel Marques Morilla on 05/13/2016.
//  Copyright (c) 2016 Juan Miguel Marques Morilla. All rights reserved.
//

#import "MMViewController.h"
#import "MMYoutubeMP4Extractor.h"

@interface MMViewController ()

@end

@implementation MMViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    UIAlertView *alertView = [[UIAlertView alloc] initWithTitle:@"Vídeo URL" message:@"Introduce una url de YouTube:" delegate:self cancelButtonTitle:@"Cancel" otherButtonTitles:@"Ok", nil];
    
    alertView.alertViewStyle = UIAlertViewStylePlainTextInput;
    
    [alertView show];
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)alertView:(UIAlertView *)alertView clickedButtonAtIndex:(NSInteger)buttonIndex
{
    
    UITextField *urlTextField = [alertView textFieldAtIndex:0];
    
    if (buttonIndex == 1) {
        
        [[MMYoutubeMP4Extractor sharedInstance] mp4FromYoutubeURL:urlTextField.text completionBlock:^(NSURL *mp4Url, NSError *error) {
            
            UIAlertView *alertView = [[UIAlertView alloc] initWithTitle:@"MP4 URL" message:[mp4Url absoluteString] delegate:nil cancelButtonTitle:@"OK" otherButtonTitles:nil];
            
            [alertView show];
            
        }];
        
        
    }
    
    [urlTextField resignFirstResponder];
    
}

@end
