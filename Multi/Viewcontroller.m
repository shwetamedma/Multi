//
//  Viewcontroller.m
//  multiligual
//
//  Created by Medma macmini on 26/09/14.
//  Copyright (c) 2014 Medma. All rights reserved.
//

#import "Viewcontroller.h"
#import "ViewController2.h"
@interface Viewcontroller ()

@end

@implementation Viewcontroller

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

-(BOOL)webView:(UIWebView*)webView shouldStartLoadWithRequest:(NSURLRequest*)request navigationType:(UIWebViewNavigationType)navigationType {
    
    NSURL *url = request.URL;
    NSString *urlString = url.absoluteString;
    
    //Check if special link
    if ( [ urlString isEqualToString: @"MYLocation://GoThere" ] ) {
        //Here present the new view controller
        ViewController2 *controller = [[ViewController2 alloc] initWithNibName:@"ViewController2" bundle:nil];
        [self.navigationController pushViewController:controller animated:YES];
        
        return NO;
    }
    
    return YES;
    
}


-(IBAction)Btn_Google_open:(id)sender{

    web_view.hidden=NO;
    NSURL *url = [[NSURL alloc] initWithString:@"www.google.com"];
    NSURLRequest *request = [NSURLRequest requestWithURL:url];
    [web_view loadRequest:request];
}
- (void)viewDidLoad
{
    [super viewDidLoad];
    
    web_view.hidden=YES;
    
    Lbl_Hello.text=NSLocalizedString(@"Hello", nil);
    Lbl_String2.text=NSLocalizedString(@"String for testing", nil);
   
    NSLog(@"text===>%@",NSLocalizedString(@"Hello", nil));
    // Do any additional setup after loading the view from its nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
