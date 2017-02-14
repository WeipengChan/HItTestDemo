//
//  HitTestView.m
//  ResponderChain
//
//  Created by Robin on 30/10/15.
//  Copyright © 2015年 Yate. All rights reserved.
//

#import "HitTestView.h"

@implementation HitTestView

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

-(id)init
{
    if(self == [super init])
    {
        self.userInteractionEnabled = NO;//这个东西是在responder chain 之上的。
    }
    return self;
}

/** 先接收hit test */
-(UIView*)hitTest:(CGPoint)point withEvent:(UIEvent *)event
{
    //NSAssert(self ==  [super hitTest:point withEvent:event], @"");
   return [super hitTest:point withEvent:event];
    
}

/** pointInside:(CGPoint)point withEvent:(UIEvent *)event */
-(BOOL)pointInside:(CGPoint)point withEvent:(UIEvent *)event
{
    return true;
}

-(void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
{
    NSLog(@"view  receives touch event");

}


-(void)touchesEnded:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
{

}


-(void)touchesMoved:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
{

}

@end
