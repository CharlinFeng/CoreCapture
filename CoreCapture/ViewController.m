//
//  ViewController.m
//  CoreCapture
//
//  Created by 冯成林 on 2017/6/16.
//  Copyright © 2017年 冯成林. All rights reserved.
//


#import "ViewController.h"
#import "RCMediaViewController.h"
#import "RCMediaViewController+Handle.h"

@interface ViewController ()<RCMediaViewControllerDelegate>

@property (weak, nonatomic) IBOutlet UIImageView *imgV;



@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
}

- (IBAction)btnAction:(id)sender {
    
    RCMediaViewController *rvc = [[RCMediaViewController alloc] init];
    rvc.mediaDelegate = self;
    [self.navigationController pushViewController:rvc animated:YES];
}

-(void)rc_mediaController:(RCMediaViewController *)media didFinishPickingMediaWithInfo:(NSDictionary *)info {

//    NSString *video_url = info[RCMediaVideoInfo];
//    UIImage *image = info[RCMediaImageInfo];
//    self.imgV.image = image;
//    NSLog(@"%@,%@",video_url,image);
    
    NSString *video_url = info[RCMediaVideoInfo];
    UIImage *image = [RCMediaViewController getCoverImage:video_url];
    self.imgV.image = image;
    NSLog(@"%@,%@",video_url,image);
}

@end
