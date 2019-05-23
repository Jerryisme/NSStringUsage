//
//  NSStringViewController.m
//  DetailedNSString
//
// github地址:https://github.com/Jerryisme/UIButtonEdgeInsets
// 简书地址:https://www.jianshu.com/p/772b981bc6dd
// 简书个人主页:https://www.jianshu.com/u/281c41cc90bc

#import "NSStringViewController.h"
#import "NSString+TransformToPinYin.h"

@interface NSStringViewController ()

@end

@implementation NSStringViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.view.backgroundColor = [UIColor whiteColor];
    
    // 字符串操作常用方法
    NSString *str1 = @"Hello world!";
    
    // 获取字符串长度
    int a = (int)str1.length;
    NSLog(@"获取字符串长度---  %d\n", a);
    
    // 获取指定索引位置的字符（索引计数从0开始）
    char b = [str1 characterAtIndex:1];
    NSLog(@"获取指定索引位置的字符---  %c\n", b);
    
    // 判断是否包含某字符串
    [self isContainsString];
    // 改变字符串大小写
    [self changeStringCase];
    // 两个字符串比较
    [self comparerTwoString];
    // 字符串截取
    [self drawNewString];
    // 读写字符串
    [self writeAndReadString];
    // 在字符串中搜索字符串
    [self searchString];
    // 替换字符串
    [self replaceString];
    // 分隔字符串成数组
    [self componentsString];
    // 数组拼接成字符串
    [self arrayToString];
    // 可变字符串的操作
    [self NSMutableStringOperation];
    // URL中含有中文的情况
    [self urlHaveChinese];
    // 汉字转拼音
    [self transformToPinYin];
    // 获取文本内容的长度
    [self getStrWidth];
    
}
#pragma mark - 判断是否包含某字符串
- (void)isContainsString {
    NSString *str1 = @"Hello world!";
    // 字符串验证：判断是否以给定的字符串开头，是为真，不是为假
    BOOL bool1 = [str1 hasPrefix:@"He"];
    NSLog(@"判断是否以给定的字符串开头---    %d\n", bool1);
    // ⬆️⤵️注意区分大小写 \\
    // 字符串验证：判断是否以给定的字符串结尾，是为真，不是为假
    BOOL bool2 = [str1 hasSuffix:@"he"];
    NSLog(@"判断是否以给定的字符串结尾---    %d\n", bool2);
    
    // 检查字符串是否包含其他字符串
    [str1 rangeOfString:@"hello"].length > 0 ? NSLog(@"字符串是否包含其他字符串---    YES") :NSLog(@"字符串是否包含其他字符串---  NO");
}

#pragma mark - 改变字符串大小写
- (void)changeStringCase {
    NSString *str1 = @"Hello world!";
    NSString *uppercaseString = [str1 uppercaseString];
    // 把字母转换成大写字母
    NSLog(@"把字母转换成大写字母---   %@",uppercaseString);
    NSString *lowercaseString = [str1 lowercaseString];
    // 把字母转换成小写字母
    NSLog(@"把字母转换成小写字母---   %@",lowercaseString);
    NSString *capitalizedString = [str1 capitalizedString];
    // 首字母大写 其他的小写
    NSLog(@"首字母大写 其他的小写---  %@",capitalizedString);
}

#pragma mark - 两个字符串比较
- (void)comparerTwoString {
    NSString *compareStr1 = @"jerry";
    NSString *compareStr2 = @"JERRY";
    //字符串比较：比较两个字符串是否相等
    BOOL boolCompare1 = [compareStr1 isEqualToString:compareStr2];
    NSLog(@"比较两个字符串是否相等---   %d",boolCompare1);
    //字符串比较：比较两个字符串的大小
    NSComparisonResult boolCompare2 = [compareStr1 compare:compareStr2];
    switch (boolCompare2)
    {
            // 判断两对象值的大小(按字母顺序进行比较，compareStr1大于compareStr2为真)
        case NSOrderedAscending:
            NSLog(@"compareStr1大于compareStr2为真");
            break;
            // 判断两对象值的大小(按字母顺序进行比较，compareStr1小于compareStr2为真)
        case NSOrderedDescending:
            NSLog(@"compareStr1小于compareStr2为真");
            break;
            // 判断两者内容是否相同
        case NSOrderedSame:
            NSLog(@"compareStr1和compareStr2两者内容是否相同");
            break;
        default:
            break;
    }
    // 不考虑大小写比较字符串
    // 判断两对象值的大小(按字母顺序进行比较，astring02小于astring01为真
    BOOL boolCompare3 = [compareStr1 caseInsensitiveCompare:compareStr2] == NSOrderedSame;
    NSLog(@"boolCompare3--- %d",boolCompare3);
    // NSCaseInsensitiveSearch:不区分大小写比较 NSLiteralSearch:进行完全比较，区分大小写 NSNumericSearch:比较字符串的字符个数，而不是字符值
    BOOL boolCompare4 = [compareStr1 compare:compareStr2
                                     options:NSCaseInsensitiveSearch | NSNumericSearch] == NSOrderedSame;
    NSLog(@"boolCompare4--- %d",boolCompare4);
}

#pragma mark - 字符串截取
- (void)drawNewString {
    NSString *str1 = @"Hello world!";
    // 字符串截取：获取字符串开始位置到字符串指定索引位置
    NSString *str2 = [str1 substringToIndex:3];
    NSLog(@"获取字符串开始位置到字符串指定索引位置---  %@\n", str2);
    // 字符串截取：获取字符串指定索引位置到字符串结束位置
    NSString *str3 = [str1 substringFromIndex:3];
    NSLog(@"获取字符串指定索引位置到字符串结束位置---  %@\n", str3);
    // 字符串截取：获取字符串指定索引位置向后数几位
    NSString *str4 = [str1 substringWithRange:NSMakeRange(1, 3)];
    NSLog(@"获取字符串指定索引位置向后数几位--- %@\n", str4);
}

#pragma mark - 读写字符串
- (void)writeAndReadString {
    // 文件路径
    NSString *path = @"wenJianQuanLuJing";
    // 从文件读取字符串
    NSString *strW = [NSString stringWithContentsOfFile:path encoding:NSUTF8StringEncoding error:NULL];
    // 将字符串写入到文件
    [strW writeToFile:path atomically:YES encoding:NSUTF8StringEncoding error:NULL];
}

#pragma mark - 在字符串中搜索子串
-(void)searchString {
    NSString *str1 = @"This is String";
    NSString *str2 = @"is";
    NSRange range = [str1 rangeOfString:str2];
    NSLog(@"location--- %lu,length---   %lu\n",(unsigned long)range.location,(unsigned long)
          range.length);
}

#pragma mark - 替换字符串
- (void)replaceString {
    NSString *strL = @"Hello World";
    NSString *strN = [strL stringByReplacingOccurrencesOfString:@"World" withString:@"China"];
    NSLog(@"strL--- %@,strN---  %@\n",strL,strN);
}

#pragma mark - 分隔字符串成数组
- (void)componentsString {
    NSString *str = @"Hello World and I Love You";
    // 以空格分隔字符串成数组
    NSArray *arr = [str componentsSeparatedByString:@" "];
    NSLog(@"arr---  %@,arr.count--- %lu\n",arr,(unsigned long)arr.count);
}

#pragma mark - 数组拼接成字符串
- (void)arrayToString {
    NSArray *array = [NSArray arrayWithObjects:@"I", @"LOVE", @"U", nil];
    // 用空格隔开数组中的元素
    NSString *str = [array componentsJoinedByString:@" "];
    NSLog(@"str---  %@\n",str);
}

#pragma mark - 可变字符串的操作
- (void)NSMutableStringOperation
{
    // 给字符串分配容量
    NSMutableString *strM = [NSMutableString stringWithCapacity:100];
    NSLog(@"strM---     %@\n",strM);
    
    NSMutableString *strM1 = [[NSMutableString alloc] initWithString:@"This is a"];
    NSLog(@"strM1---    %@\n",strM1);
    
    // 在已有的字符串后面添加字符串
    [strM1 appendString:@"NSMutableString"];
    NSLog(@"strM1---    %@\n",strM1);
    
    // 在已有字符串中按照所给出的范围和长度删除字符
    [strM1 deleteCharactersInRange:NSMakeRange(0, 5)];
    NSLog(@"strM1---    %@\n",strM1);
    
    // 在字符串指定位置插入字符串
    [strM1 insertString:@"Hello" atIndex:0];
    NSLog(@"strM1---    %@\n",strM1);
    
    // 将已有字符串替换成其他字符串
    [strM1 setString:@"Hello World"];
    NSLog(@"strM1---    %@\n",strM1);
    
    // 按照所给出的范围,用新字符串替换原来的字符串
    [strM1 replaceCharactersInRange:NSMakeRange(0, 5) withString:@"Hi"];
    NSLog(@"strM1---    %@\n",strM1);
}

#pragma mark - URL中含有中文的情况
- (void)urlHaveChinese {
    NSString *urlStr = @"https://www.cloudsafe.com/文件夹";
    
    //编码
    //ios9之前的方法(对中文和一些特殊字符进行编码)
    NSString *urlEncode1 = [urlStr stringByAddingPercentEscapesUsingEncoding:NSUTF8StringEncoding];
    //ios9之后的方法
    NSString *urlEncode2 = [urlStr stringByAddingPercentEncodingWithAllowedCharacters:[NSCharacterSet URLQueryAllowedCharacterSet]];
    NSLog(@"ios9之前对中文进行编码---    %@\n",urlEncode1);
    NSLog(@"ios9之后对中文进行编码---    %@\n",urlEncode2);
    
    //解码
    //ios9之前的方法
    NSString* str1 = [urlStr stringByReplacingPercentEscapesUsingEncoding:NSUTF8StringEncoding];
    //ios9之后的方法
    NSString *str2 = [urlStr stringByRemovingPercentEncoding];
    NSLog(@"ios9之前对中文进行解码---    %@\n",str1);
    NSLog(@"ios9之后对中文进行解码---    %@\n",str2);
}

#pragma mark - 汉字转拼音
- (void)transformToPinYin {
    //汉字转拼音(适用于摸索搜索)
    NSString *myString1 = @"中国加油";
    NSString *myString2 = [NSString transformToPinyin:myString1];
    NSLog(@"汉字转拼音(适用于摸索搜索)---   %@",myString2);
    
    NSString *myString3 = [NSString chineseTransformToPinyin:myString1];
    NSLog(@"汉字转拼音---    %@",myString3);
}

#pragma mark - 获取文本内容的长度
- (void)getStrWidth {
    //根据字体大小获取某段文本内容的宽度
    CGFloat stringWidth = [@"Hello World" getWidthWithFont:16];
    NSLog(@"stringWidth---  %f",stringWidth);
}


/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
