//
//  ViewController.m
//  XZCATransform3DDemo
//
//  Created by 徐章 on 16/6/2.
//  Copyright © 2016年 徐章. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UIView *transformView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
//    self.transformView.layer.anchorPoint = CGPointMake(1, 0.5);
    
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)transformBtn_Pressed:(id)sender {
    
    //Scale
    //CATransform3D transform = CATransform3DMakeScale(2, 2, 0);
    //CATransform3D transform = CATransform3DScale(self.transformView.layer.transform, 1.1, 1.1, 0);
    
    //Translation
    //CATransform3D transform = CATransform3DMakeTranslation(1000, 100, 0);
    //CATransform3D transform = CATransform3DTranslate(self.transformView.layer.transform, 100, 100, 0);
    
    //Rotate
    //CATransform3D transform = CATransform3DMakeRotation(M_PI_4, 1, 0, 0);
    //CATransform3D transform = CATransform3DRotate(self.transformView.layer.transform, M_PI, 0, 1, 0);
    //transform.m34 = -1/500.0f;
    
    //Concat
    //CATransform3D transform1 = CATransform3DMakeRotation(M_PI_4, 1, 0, 0);
    //CATransform3D transform2 = CATransform3DMakeTranslation(100, 100, 0);
    //CATransform3D transform  = CATransform3DConcat(transform1, transform2);
    
    //Invert
    CATransform3D transform = CATransform3DMakeTranslation(100, 100, 0);
    transform = CATransform3DInvert(transform);
    
    [UIView animateWithDuration:2 animations:^{
        
       self.transformView.layer.transform = transform;
    } completion:^(BOOL finished) {
        
        NSLog(@"%@",NSStringFromCGRect(self.transformView.frame));
    }];
    
    
}

@end
