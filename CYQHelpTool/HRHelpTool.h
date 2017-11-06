//
//  HRHelpTool.h
//  HRSDK-SourceCode
//
//  Created by nsky on 16/9/21.
//  Copyright © 2016年 HR. All rights reserved.
//


#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface HRHelpTool : NSObject
//工厂类 UILabel
+(UILabel *)factoryWithUilabel:(UIView *)view frame:(CGRect)frame text:(NSString *)text fontSize:(CGFloat)fontSize textAlignment:(NSTextAlignment)textAlignment textColor:(UIColor *)color userInteractionEnabled:(BOOL)isUserEnable;
// UIButton
+(UIButton *)factoryWithUIButton:(UIView *)view frame:(CGRect)frame text:(NSString *)text tag:(NSInteger)tag addTarget:(id)target action:(SEL)action;
//UitextFiled
+(UITextField *)factoryWithUItextFiled:(UIView *)view frame:(CGRect)frame placeHolder:(NSString *)placeHolder fontSize:(CGFloat)fontSize textAlignment:(NSTextAlignment)textAlignment tag:(NSInteger)tag addTarget:(id)target action:(SEL)action;
//UIView
+(UIView *)factoryWithUIview:(UIView *)view frame:(CGRect)frame backGround:(UIColor *)color tag:(NSString *)tag;

@end
