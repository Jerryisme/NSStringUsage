//
//  NSString+TransformToPinYin.m
//  DetailedNSString
//
// github地址:https://github.com/Jerryisme/UIButtonEdgeInsets
// 简书地址:https://www.jianshu.com/p/772b981bc6dd
// 简书个人主页:https://www.jianshu.com/u/281c41cc90bc

#import "NSString+TransformToPinYin.h"


@implementation NSString (TransformToPinYin)

#pragma mark - 获取汉字转成拼音字符串  通讯录模糊搜索 支持拼音检索 首字母 全拼 汉字 搜索
+ (NSString *)transformToPinyin:(NSString *)aString{
    
    //转成了可变字符串
    NSMutableString *str = [NSMutableString stringWithString:aString];
    CFStringTransform((CFMutableStringRef)str,NULL, kCFStringTransformMandarinLatin,NO);
    //再转换为不带声调的拼音
    CFStringTransform((CFMutableStringRef)str,NULL, kCFStringTransformStripDiacritics,NO);
    NSArray *pinyinArray = [str componentsSeparatedByString:@" "];
    NSMutableString *allString = [NSMutableString new];
    
    int count = 0;
    
    for (int  i = 0; i < pinyinArray.count; i++)
    {
        
        for(int i = 0; i < pinyinArray.count;i++)
        {
            if (i == count) {
                [allString appendString:@"#"];//区分第几个字母
            }
            [allString appendFormat:@"%@",pinyinArray[i]];
            
        }
        [allString appendString:@","];
        count ++;
        
    }
    
    NSMutableString *initialStr = [NSMutableString new];//拼音首字母
    
    for (NSString *s in pinyinArray)
    {
        if (s.length > 0)
        {
            
            [initialStr appendString:  [s substringToIndex:1]];
        }
    }
    
    [allString appendFormat:@"#%@",initialStr];
    [allString appendFormat:@",#%@",aString];
    
    return allString;
}

#pragma mark - 汉字转拼音
+ (NSString *)chineseTransformToPinyin:(NSString *)chineseString;{
    
    NSMutableString *pinyin = [chineseString mutableCopy];
    
    CFStringTransform((__bridge CFMutableStringRef)pinyin, NULL, kCFStringTransformMandarinLatin, NO);
    
    CFStringTransform((__bridge CFMutableStringRef)pinyin, NULL, kCFStringTransformStripCombiningMarks, NO);
    
    NSString *pinyinStr = [pinyin stringByReplacingOccurrencesOfString:@" " withString:@""];
    
    return pinyinStr;
}



#pragma mark - 获取文本内容的长度
- (CGFloat)getWidthWithFont:(CGFloat)textFont {
    
    //如果没有设置vc的title，设置抛异常
    if ([self isKindOfClass:[NSNull class]]) {
        NSException *exception = [NSException exceptionWithName:@"NSString+AttributeException" reason:@"未设置对应的title属性" userInfo:nil];
        [exception raise];
    }
    
    CGRect titleBounds = [self boundingRectWithSize:CGSizeMake(MAXFLOAT, 0) options:NSStringDrawingUsesLineFragmentOrigin attributes:@{NSFontAttributeName:[UIFont systemFontOfSize:textFont]} context:nil];
    
    return titleBounds.size.width;
}



@end
