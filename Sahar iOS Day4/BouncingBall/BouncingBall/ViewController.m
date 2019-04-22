//
//  ViewController.m
//  BouncingBall
//
//  Created by JETS Mobile Lab on 4/22/19.
//  Copyright © 2019 ITI. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UIView *ball;
@end

@implementation ViewController
{
    
}
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    _animator=[[UIDynamicAnimator alloc]initWithReferenceView:self.view];
    _ball.layer.cornerRadius=25.0;
    _ball.layer.borderColor=[UIColor blackColor].CGColor;
    _ball.layer.borderWidth = 1;
    [self animation];
}

-(void) animation{
    UIGravityBehavior * gravity = [[UIGravityBehavior alloc]initWithItems:@[_ball]];
    [_animator addBehavior:gravity];
    UICollisionBehavior * collision = [[UICollisionBehavior alloc]initWithItems:@[_ball]];
    [collision setTranslatesReferenceBoundsIntoBoundary:YES];
    collision.collisionDelegate=self;
    [_animator addBehavior:collision];
    UIDynamicItemBehavior *item = [[UIDynamicItemBehavior alloc]initWithItems:@[_ball]];
    item.elasticity =0.75;
    [_animator addBehavior:item];
    
}


- (void)collisionBehavior:(UICollisionBehavior *)behavior endedContactForItem:(id<UIDynamicItem>)item1 withBoundaryIdentifier:(nullable id<NSCopying>)identifier{
    
}

@end
