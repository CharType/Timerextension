//
//  BFSTimerextension.h
//  BFSports
//
//  Created by 程倩 on 2017/3/22.
//  Copyright © 2017年 BaoFeng. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol BFSTimerextensionDelegate <NSObject>


/**
 定时器调用代理函数
 */
-(void)timerfucntionCall;

@end
@interface BFSTimerextension : NSObject
@property(nonatomic,weak) id<BFSTimerextensionDelegate> delegate;


/**
 启动一个定时器

 @param timeInterval 间隔时间
 @param repeats 是否重复
 */
-(void)startTimer:(NSTimeInterval)timeInterval repeats:(BOOL)repeats;


/**
 停止这个定时器
 */
-(void)stopTimer;
@end
