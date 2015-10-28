//
//  ViewController.m
//  AutoLayoutDemo
//
//  Created by hw on 15/10/28.
//  Copyright © 2015年 hongw. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    UIView *myView = [[UIView alloc] init];
    myView.backgroundColor = [UIColor redColor];
    [self.view addSubview:myView];
    myView.translatesAutoresizingMaskIntoConstraints = NO;
    
    
    UIView *myView0 = [[UIView alloc] init];
    myView0.backgroundColor = [[UIColor greenColor] colorWithAlphaComponent:0.3];
    [self.view addSubview:myView0];
    
    /**由于苹果在iOS 6当中引入了自动布局的新概念，但在那时仍然有很多旧的代码使用autoresizingMask与setFrame:的方式构建界面。试想，如果将一个已经设置好frame并使用autoresizingMask的视图添加到一个使用自动布局的视图中时，运行时需要隐式地将前者的frame和autoresizingMask转化为自动布局约束（这些隐式转换的约束的类型为NSAutoresizingMaskLayoutConstraint），这样才能明确其位置与尺寸而不会导致约束的缺失。这个隐式转换的过程，是由UIView的translatesAutoresizingMaskIntoConstraints属性的值决定的。默认情况下，该值为YES，表示需要运行时自动进行隐式转换。这对于兼容旧的代码当然是好的，然而当我们明确为视图添加了约束后，我们就不希望再进行autoresizingMask的隐式转换了，否则就会引起约束的冲突。因此，需要特别注意的是，当我们使用代码创建视图时，需要将translatesAutoresizingMaskIntoConstraints属性的值设置为NO
     */
    myView0.translatesAutoresizingMaskIntoConstraints = NO;
    
    [self.view addConstraint:[NSLayoutConstraint constraintWithItem:myView
                                                         attribute:NSLayoutAttributeLeading
                                                         relatedBy:NSLayoutRelationEqual
                                                            toItem:self.view
                                                         attribute:NSLayoutAttributeLeading
                                                        multiplier:1
                                                          constant:20]];
    
    [self.view addConstraint:[NSLayoutConstraint constraintWithItem:myView
                                                          attribute:NSLayoutAttributeTop
                                                          relatedBy:NSLayoutRelationEqual
                                                             toItem:self.view
                                                          attribute:NSLayoutAttributeTop
                                                         multiplier:1
                                                           constant:20]];
    
    [myView addConstraint:[NSLayoutConstraint constraintWithItem:myView
                                                          attribute:NSLayoutAttributeHeight
                                                          relatedBy:NSLayoutRelationEqual
                                                             toItem:nil
                                                          attribute:NSLayoutAttributeNotAnAttribute
                                                         multiplier:1
                                                           constant:200]];
    
    
    
    [self.view addConstraint:[NSLayoutConstraint constraintWithItem:myView0
                                                          attribute:NSLayoutAttributeRight
                                                          relatedBy:NSLayoutRelationEqual
                                                             toItem:self.view
                                                          attribute:NSLayoutAttributeRight
                                                         multiplier:1
                                                           constant:-20]];
    
    [self.view addConstraint:[NSLayoutConstraint constraintWithItem:myView0
                                                          attribute:NSLayoutAttributeTop
                                                          relatedBy:NSLayoutRelationEqual
                                                             toItem:myView
                                                          attribute:NSLayoutAttributeTop
                                                         multiplier:1
                                                           constant:0]];
    
    [self.view addConstraint:[NSLayoutConstraint constraintWithItem:myView0
                                                          attribute:NSLayoutAttributeWidth
                                                          relatedBy:NSLayoutRelationEqual
                                                             toItem:myView
                                                          attribute:NSLayoutAttributeWidth
                                                         multiplier:1
                                                           constant:0]];
    
    
    [self.view addConstraint:[NSLayoutConstraint constraintWithItem:myView0
                                                          attribute:NSLayoutAttributeHeight
                                                          relatedBy:NSLayoutRelationEqual
                                                             toItem:myView
                                                          attribute:NSLayoutAttributeHeight
                                                         multiplier:1
                                                           constant:0]];
    
    [self.view addConstraint:[NSLayoutConstraint constraintWithItem:myView
                                                          attribute:NSLayoutAttributeTrailing
                                                          relatedBy:NSLayoutRelationEqual
                                                             toItem:myView0
                                                          attribute:NSLayoutAttributeLeading
                                                         multiplier:1
                                                           constant:-20]];
    
    
    
    
}

@end
