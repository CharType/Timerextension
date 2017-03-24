//
//  BFSTimerextension.m
//  BFSports
//
//  Created by 程倩 on 2017/3/22.
//  Copyright © 2017年 BaoFeng. All rights reserved.
//

#import "BFSTimerextension.h"

@interface BFSTimerextension()
  @property (nonatomic, strong) NSTimer                   *timer;
@end

@implementation BFSTimerextension

-(void)dealloc
{
    NSLog(@"被释放");
}
-(void)startTimer:(NSTimeInterval)timeInterval repeats:(BOOL)repeats
{
   if(!_timer)
   {
       _timer = [NSTimer scheduledTimerWithTimeInterval:timeInterval target:self selector:@selector(timerSelectCall) userInfo:nil repeats:repeats];
   }
}

-(void)timerSelectCall
{
   if(self.delegate && [self.delegate respondsToSelector:@selector(timerfucntionCall)])
   {
       [self.delegate timerfucntionCall];
   }else{
       [self.timer invalidate];
       self.timer = nil;
   }
}

-(void)stopTimer
{
   if(self.timer)
   {
       [self.timer invalidate];
       self.timer = nil;
   }
}
@end
