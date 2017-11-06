//
//  HRHelpTool.m
//  HRSDK-SourceCode
//
//  Created by nsky on 16/9/21.
//  Copyright © 2016年 HR. All rights reserved.
//

#import "HRHelpTool.h"
#import <UIKit/UIKit.h>

@implementation HRHelpTool
#pragma mark-工厂类

//工厂类 UILabel
+(UILabel *)factoryWithUilabel:(UIView *)view frame:(CGRect)frame text:(NSString *)text fontSize:(CGFloat)fontSize textAlignment:(NSTextAlignment)textAlignment textColor:(UIColor *)color userInteractionEnabled:(BOOL)isUserEnable{
    UILabel *factoryLabel=[[UILabel alloc]initWithFrame:frame];
    factoryLabel.text=text;
    factoryLabel.userInteractionEnabled=isUserEnable;
    factoryLabel.font=[UIFont systemFontOfSize:fontSize];
    factoryLabel.textAlignment=textAlignment;
    factoryLabel.textColor=color;
    [view addSubview:factoryLabel];
    
    return factoryLabel;
    
}

// UIButton
+(UIButton *)factoryWithUIButton:(UIView *)view frame:(CGRect)frame text:(NSString *)text tag:(NSInteger)tag addTarget:(id)target action:(SEL)action{
    
    UIButton *factoryBtn=[UIButton buttonWithType:UIButtonTypeCustom];
    factoryBtn.frame=frame;
    [factoryBtn setTitle:text forState:UIControlStateNormal];
    [factoryBtn setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    [factoryBtn setTitle:text forState:UIControlStateHighlighted];
    [factoryBtn setTitleColor:[UIColor blackColor] forState:UIControlStateHighlighted];
    factoryBtn.tag=tag;
    factoryBtn.layer.borderColor=[UIColor clearColor].CGColor;
    [factoryBtn addTarget:target action:action forControlEvents:UIControlEventTouchUpInside];
    [view addSubview:factoryBtn];
    return factoryBtn;
}
//UitextFiled
+(UITextField *)factoryWithUItextFiled:(UIView *)view frame:(CGRect)frame placeHolder:(NSString *)placeHolder fontSize:(CGFloat)fontSize textAlignment:(NSTextAlignment)textAlignment tag:(NSInteger)tag addTarget:(id)target action:(SEL)action{
    
    UITextField *textFiled=[[UITextField alloc]init];
    textFiled.frame=frame;
    textFiled.tag=tag;
    // restMessageText.delegate=self;
    textFiled.placeholder=placeHolder;
    //textFiled.keyboardType=UIKeyboardTypeNumberPad;
    [textFiled addTarget:target action:action forControlEvents:UIControlEventEditingChanged];
    //[messageText becomeFirstResponder];
    textFiled.font=[UIFont systemFontOfSize:fontSize];
    [view addSubview:textFiled];
    return textFiled;
    
}
+(UIView *)factoryWithUIview:(UIView *)view frame:(CGRect)frame backGround:(UIColor *)color tag:(NSString *)tag{

    UIView *subView=[[UIView alloc]initWithFrame:frame];
    subView.backgroundColor=color;
    [view addSubview:subView];
    return subView;

}

@end
