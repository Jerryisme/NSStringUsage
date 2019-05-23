//
//  NSString+TransformToPinYin.h
//  DetailedNSString
//
// github地址:https://github.com/Jerryisme/UIButtonEdgeInsets
// 简书地址:https://www.jianshu.com/p/772b981bc6dd
// 简书个人主页:https://www.jianshu.com/u/281c41cc90bc

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface NSString (TransformToPinYin)

//获取汉字转成拼音字符串（适用于模糊搜索）
+ (NSString *)transformToPinyin:(NSString *)aString;

//汉字转拼音
+ (NSString *)chineseTransformToPinyin:(NSString *)chineseString;


// 获取文本内容的长度
- (CGFloat)getWidthWithFont:(CGFloat)textFont;

@end

NS_ASSUME_NONNULL_END
