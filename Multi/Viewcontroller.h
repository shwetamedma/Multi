//
//  Viewcontroller.h
//  multiligual
//
//  Created by Medma macmini on 26/09/14.
//  Copyright (c) 2014 Medma. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface Viewcontroller : UIViewController
{
    IBOutlet UILabel *Lbl_Hello;
    IBOutlet UILabel *Lbl_String2;
    IBOutlet UIWebView *web_view;
}
-(IBAction)Btn_Google_open:(id)sender;

@end
