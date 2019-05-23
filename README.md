# NSStringUsage
字符串的使用
简书地址：https://www.jianshu.com/p/772b981bc6dd

简书个人主页：https://www.jianshu.com/u/281c41cc90bc

### 写这篇文章的主要原因：有时候会用到一些不常用的方法，很容易被遗忘。所以想要详细的介绍iOS中字符串的相关用法。一方面加强自己的记忆，另一方面是节省去API中寻找的时间。如果觉得这篇文章现在用得到或者未来会用到，那就添加喜欢或者收藏起来嗷！

####*如果发现不够完善的地方，可以在评论区评论或者私信我，我会尽快添加

##[NSString（静态，纯文本Unicode字符串对象）](https://developer.apple.com/documentation/foundation/nsstring?language=objc)

####创建和初始化字符串(Creating and Initializing Strings）

 [+ string](https://developer.apple.com/documentation/foundation/nsstring/1497312-string?language=objc)
返回空字符串（Returns an empty string.）

[– init](https://developer.apple.com/documentation/foundation/nsstring/1409306-init?language=objc)
返回不包含任何字符的初始化NSString对象（Returns an initialized NSString object that contains no characters.）

[– initWithBytes:length:encoding:](https://developer.apple.com/documentation/foundation/nsstring/1407339-initwithbytes?language=objc)
（Returns an initialized NSString object containing a given number of bytes from a given buffer of bytes interpreted in a given encoding.）

[– initWithBytesNoCopy:length:encoding:freeWhenDone:](https://developer.apple.com/documentation/foundation/nsstring/1413830-initwithbytesnocopy?language=objc)
（Returns an initialized NSString object that contains a given number of bytes from a given buffer of bytes interpreted in a given encoding, and optionally frees the buffer.）

[– initWithCharacters:length:](https://developer.apple.com/documentation/foundation/nsstring/1410997-initwithcharacters?language=objc)
（Returns an initialized NSString object that contains a given number of characters from a given C array of UTF-16 code units.）

[– initWithCharactersNoCopy:length:freeWhenDone:](https://developer.apple.com/documentation/foundation/nsstring/1412121-initwithcharactersnocopy?language=objc)
（Returns an initialized NSString object that contains a given number of characters from a given C array of UTF-16 code units.）

[– initWithString:](https://developer.apple.com/documentation/foundation/nsstring/1411293-initwithstring?language=objc)
返回另一个给定字符串中的字符而初始化的NSString对象（Returns an NSString object initialized by copying the characters from another given string.）

[– initWithCString:encoding:](https://developer.apple.com/documentation/foundation/nsstring/1411950-initwithcstring?language=objc)
（Returns an NSString object initialized using the characters in a given C array, interpreted according to a given encoding.）

[– initWithUTF8String:](https://developer.apple.com/documentation/foundation/nsstring/1412128-initwithutf8string?language=objc)
（Returns an NSString object initialized by copying the characters from a given C array of UTF8-encoded bytes.）

[– initWithFormat:](https://developer.apple.com/documentation/foundation/nsstring/1497402-initwithformat?language=objc)
（Returns an NSString object initialized by using a given format string as a template into which the remaining argument values are substituted.）

[– initWithFormat:arguments:](https://developer.apple.com/documentation/foundation/nsstring/1408503-initwithformat?language=objc)
（Returns an NSString object initialized by using a given format string as a template into which the remaining argument values are substituted without any localization.）

[– initWithFormat:locale:](https://developer.apple.com/documentation/foundation/nsstring/1497317-initwithformat?language=objc)
（Returns an NSString object initialized by using a given format string as a template into which the remaining argument values are substituted according to given locale.）

[– initWithFormat:locale:arguments:](https://developer.apple.com/documentation/foundation/nsstring/1408503-initwithformat?language=objc)
（Returns an NSString object initialized by using a given format string as a template into which the remaining argument values are substituted according to given locale information. This method is meant to be called from within a variadic function, where the argument list will be available.）

[– initWithData:encoding:](https://developer.apple.com/documentation/foundation/nsstring/1416374-initwithdata?language=objc)
（Returns an NSString object initialized by converting given data into UTF-16 code units using a given encoding.）

[+ stringWithFormat:](https://developer.apple.com/documentation/foundation/nsstring/1497275-stringwithformat?language=objc)
通过使用给定格式字符串作为模板的字符串（Returns a string created by using a given format string as a template into which the remaining argument values are substituted.）

[+ localizedStringWithFormat:](https://developer.apple.com/documentation/foundation/nsstring/1497301-localizedstringwithformat?language=objc)
（Returns a string created by using a given format string as a template into which the remaining argument values are substituted according to the current locale.）

[+ localizedUserNotificationStringForKey:arguments:](https://developer.apple.com/documentation/foundation/nsstring/1649585-localizedusernotificationstringf?language=objc)
（Returns a localized string intended for display in a notification alert.）

[+ stringWithCharacters:length:](https://developer.apple.com/documentation/foundation/nsstring/1497248-stringwithcharacters?language=objc)
（Returns a string containing a given number of characters taken from a given C array of UTF-16 code units.）

[+ stringWithString:](https://developer.apple.com/documentation/foundation/nsstring/1497372-stringwithstring?language=objc)
通过复制另一个给定字符串中的字符而创建的字符（Returns a string created by copying the characters from another given string.）

[+ stringWithCString:encoding:](https://developer.apple.com/documentation/foundation/nsstring/1497310-stringwithcstring?language=objc)
（Returns a string containing the bytes in a given C array, interpreted according to a given encoding.）

[+ stringWithUTF8String:](https://developer.apple.com/documentation/foundation/nsstring/1497379-stringwithutf8string?language=objc)
从给定的UTF8编码字节的C数组复制数据而创建的字符串（Returns a string created by copying the data from a given C array of UTF8-encoded bytes.）

####从文件创建和初始化字符串（Creating and Initializing a String from a File）

[+ stringWithContentsOfFile:encoding:error:](https://developer.apple.com/documentation/foundation/nsstring/1497327-stringwithcontentsoffile?language=objc)
（Returns a string created by reading data from the file at a given path interpreted using a given encoding.）

[- initWithContentsOfFile:encoding:error:](https://developer.apple.com/documentation/foundation/nsstring/1412610-initwithcontentsoffile?language=objc)
（Returns an NSString object initialized by reading data from the file at a given path using a given encoding.）

[+ stringWithContentsOfFile:usedEncoding:error:](https://developer.apple.com/documentation/foundation/nsstring/1497254-stringwithcontentsoffile?language=objc)
（Returns a string created by reading data from the file at a given path and returns by reference the encoding used to interpret the file.）

[- initWithContentsOfFile:usedEncoding:error:](https://developer.apple.com/documentation/foundation/nsstring/1418227-initwithcontentsoffile?language=objc)
（Returns an NSString object initialized by reading data from the file at a given path and returns by reference the encoding used to interpret the characters.）

####从URL创建和初始化字符串（Creating and Initializing a String from an URL）

[+ stringWithContentsOfURL:encoding:error:](https://developer.apple.com/documentation/foundation/nsstring/1497360-stringwithcontentsofurl?language=objc)
通过读取使用给定编码的给定URL数据而创建的字符串（Returns a string created by reading data from a given URL interpreted using a given encoding.）

[- initWithContentsOfURL:encoding:error:](https://developer.apple.com/documentation/foundation/nsstring/1414463-initwithcontentsofurl?language=objc)
（Returns an NSString object initialized by reading data from a given URL interpreted using a given encoding.）

[+ stringWithContentsOfURL:usedEncoding:error:](https://developer.apple.com/documentation/foundation/nsstring/1497408-stringwithcontentsofurl?language=objc)
（Returns a string created by reading data from a given URL and returns by reference the encoding used to interpret the data.）

[- initWithContentsOfURL:usedEncoding:error:](https://developer.apple.com/documentation/foundation/nsstring/1414472-initwithcontentsofurl?language=objc)
（Returns an NSString object initialized by reading data from a given URL and returns by reference the encoding used to interpret the data.）

#### 获得字符串的长度（Getting a String’s Length）

[length](https://developer.apple.com/documentation/foundation/nsstring/1414212-length?language=objc)
（The number of UTF-16 code units in the receiver.）

[- lengthOfBytesUsingEncoding:](https://developer.apple.com/documentation/foundation/nsstring/1410710-lengthofbytesusingencoding?language=objc)
（Returns the number of bytes required to store the receiver in a given encoding.）

[- maximumLengthOfBytesUsingEncoding:](https://developer.apple.com/documentation/foundation/nsstring/1411611-maximumlengthofbytesusingencodin?language=objc)
（Returns the maximum number of bytes needed to store the receiver in a given encoding.）

#### 获取字符和字节（Getting Characters and Bytes）

[- characterAtIndex:](https://developer.apple.com/documentation/foundation/nsstring/1414645-characteratindex?language=objc)
（Returns the character at a given UTF-16 code unit index.）

[- getCharacters:range:](https://developer.apple.com/documentation/foundation/nsstring/1408720-getcharacters?language=objc)
（Copies characters from a given range in the receiver into a given buffer.）

[- getBytes:maxLength:usedLength:encoding:options:range:remainingRange:](https://developer.apple.com/documentation/foundation/nsstring/1413453-getbytes?language=objc)
（Gets a given range of characters as bytes in a specified encoding.）

#### 获得C字符串（Getting C Strings）

[- cStringUsingEncoding:](https://developer.apple.com/documentation/foundation/nsstring/1408489-cstringusingencoding?language=objc)
（Returns a representation of the string as a C string using a given encoding.）

[- getCString:maxLength:encoding:](https://developer.apple.com/documentation/foundation/nsstring/1415702-getcstring?language=objc)
（Converts the string to a given encoding and stores it in a buffer.）

[UIF8String](https://developer.apple.com/documentation/foundation/nsstring/1411189-utf8string?language=objc)
（A null-terminated UTF8 representation of the string.）

####识别和比较字符串(Identifying and Comparing Strings)

[- caseInsensitiveCompare:](https://developer.apple.com/documentation/foundation/nsstring/1414769-caseinsensitivecompare?language=objc)

[- localizedCaseInsensitiveCompare:](https://developer.apple.com/documentation/foundation/nsstring/1417333-localizedcaseinsensitivecompare?language=objc)
（Compares the string with a given string using a case-insensitive, localized, comparison.）

[- compare:](https://developer.apple.com/documentation/foundation/nsstring/1414082-compare?language=objc)

[- localizedCompare:](https://developer.apple.com/documentation/foundation/nsstring/1416999-localizedcompare?language=objc)
（Compares the string and a given string using a localized comparison.）

[- compare:options:](https://developer.apple.com/documentation/foundation/nsstring/1410893-compare?language=objc)
（Compares the string with the specified string using the given options.）

[- compare:options:range:](https://developer.apple.com/documentation/foundation/nsstring/1408732-compare?language=objc)

[- compare:options:range:locale:](https://developer.apple.com/documentation/foundation/nsstring/1414561-compare?language=objc)
（Compares the string using the specified options and returns the lexical ordering for the range.）

[- localizedStandardCompare:](https://developer.apple.com/documentation/foundation/nsstring/1409742-localizedstandardcompare?language=objc)
中文按照拼音的首字母排序（Compares strings as sorted by the Finder.）

[- hasPrefix:](https://developer.apple.com/documentation/foundation/nsstring/1410309-hasprefix?language=objc)
是否以指定的前缀开始（Returns a Boolean value that indicates whether a given string matches the beginning characters of the receiver.）

[- hasSuffix:](https://developer.apple.com/documentation/foundation/nsstring/1416529-hassuffix?language=objc)
是否以指定的后缀结束（Returns a Boolean value that indicates whether a given string matches the ending characters of the receiver.）

[- isEqualToString:](https://developer.apple.com/documentation/foundation/nsstring/1407803-isequaltostring?language=objc)
比较两个字符串是否相等（Returns a Boolean value that indicates whether a given string is equal to the receiver using a literal Unicode-based comparison.）

[hash](https://developer.apple.com/documentation/foundation/nsstring/1417245-hash?language=objc)
（An unsigned integer that can be used as a hash table address.）

[NSStringCompareOptions](https://developer.apple.com/documentation/foundation/nsstringcompareoptions?language=objc)
（These values represent the options available to many of the string classes’ search and comparison methods.）

[NSStringEncodingConversionOptions](https://developer.apple.com/documentation/foundation/nsstringencodingconversionoptions?language=objc)
（Options for converting string encodings.）

####拼接字符串(Combining Strings)

[- stringByAppendingFormat:](https://developer.apple.com/documentation/foundation/nsstring/1497272-stringbyappendingformat?language=objc)
（Returns a string made by appending to the receiver a string constructed from a given format string and the following arguments.）

[- stringByAppendingString:](https://developer.apple.com/documentation/foundation/nsstring/1412307-stringbyappendingstring?language=objc)
字符串拼接字符串（Returns a new string made by appending a given string to the receiver.）

[- stringByPaddingToLength:withString:startingAtIndex:](https://developer.apple.com/documentation/foundation/nsstring/1416395-stringbypaddingtolength?language=objc)
（Returns a new string formed from the receiver by either removing characters from the end, or by appending as many occurrences as necessary of a given pad string.）

####字符串大小写（Changing Case）

[lowercaseString](https://developer.apple.com/documentation/foundation/nsstring/1408467-lowercasestring?language=objc)
小写字符串（A lowercase representation of the string.）

[localizedLowercaseString](https://developer.apple.com/documentation/foundation/nsstring/1414125-localizedlowercasestring?language=objc)
（Returns a version of the string with all letters converted to lowercase, taking into account the current locale.）

[- lowercaseStringWithLocale:](https://developer.apple.com/documentation/foundation/nsstring/1417298-lowercasestringwithlocale?language=objc)
所有字母都转换成小写，要考虑制定的语言环境（Returns a version of the string with all letters converted to lowercase, taking into account the specified locale.）

[uppercaseString](https://developer.apple.com/documentation/foundation/nsstring/1409855-uppercasestring?language=objc)
（An uppercase representation of the string.）

[localizedUppercaseString](https://developer.apple.com/documentation/foundation/nsstring/1413331-localizeduppercasestring?language=objc)
（Returns a version of the string with all letters converted to uppercase, taking into account the current locale.）

[- uppercaseStringWithLocale:](https://developer.apple.com/documentation/foundation/nsstring/1413316-uppercasestringwithlocale?language=objc)
所有字母都转换成大写，要考虑制定的语言环境（Returns a version of the string with all letters converted to uppercase, taking into account the specified locale.）

[capitalizedString](https://developer.apple.com/documentation/foundation/nsstring/1416784-capitalizedstring?language=objc)
（A capitalized representation of the string.）

[localizedCapitalizedString](https://developer.apple.com/documentation/foundation/nsstring/1414885-localizedcapitalizedstring?language=objc)
（Returns a capitalized representation of the receiver using the current locale.）

[- capitalizedStringWithLocale:](https://developer.apple.com/documentation/foundation/nsstring/1414023-capitalizedstringwithlocale?language=objc)
（Returns a capitalized representation of the receiver using the specified locale.）

####字符串拆分（Dividing Strings）

[- componentsSeparatedByString:](https://developer.apple.com/documentation/foundation/nsstring/1413214-componentsseparatedbystring?language=objc)
（Returns an array containing substrings from the receiver that have been divided by a given separator.）

[- componentsSeparatedByCharactersInSet:](https://developer.apple.com/documentation/foundation/nsstring/1410120-componentsseparatedbycharactersi?language=objc)
（Returns an array containing substrings from the receiver that have been divided by characters in a given set.）

[- stringByTrimmingCharactersInSet:](https://developer.apple.com/documentation/foundation/nsstring/1415462-stringbytrimmingcharactersinset?language=objc)
（Returns a new string made by removing from both ends of the receiver characters contained in a given character set.）

[- substringFromIndex:](https://developer.apple.com/documentation/foundation/nsstring/1414368-substringfromindex?language=objc)
字符串截取范围是给定索引index到这个字符串的结尾（Returns a new string containing the characters of the receiver from the one at a given index to the end.）

[- substringWithRange:](https://developer.apple.com/documentation/foundation/nsstring/1418469-substringwithrange?language=objc)
字符串截取范围是给定Range（Returns a string object containing the characters of the receiver that lie within a given range.）

[- substringToIndex:](https://developer.apple.com/documentation/foundation/nsstring/1408017-substringtoindex?language=objc)
字符串截取范围是字符串开头到这个字符串给定索引index（Returns a new string containing the characters of the receiver up to, but not including, the one at a given index.）

####规范化字符串（Normalizing Strings）

[decomposedStringWithCanonicalMapping](https://developer.apple.com/documentation/foundation/nsstring/1409474-decomposedstringwithcanonicalmap?language=objc)
（A string made by normalizing the string’s contents using the Unicode Normalization Form D.）

[decomposedStringWithCompatibilityMapping](https://developer.apple.com/documentation/foundation/nsstring/1415417-decomposedstringwithcompatibilit?language=objc)
（A string made by normalizing the receiver’s contents using the Unicode Normalization Form KD.）

[precomposedStringWithCanonicalMapping](https://developer.apple.com/documentation/foundation/nsstring/1412645-precomposedstringwithcanonicalma?language=objc)
（A string made by normalizing the string’s contents using the Unicode Normalization Form C.）

[precomposedStringWithCompatibilityMapping](https://developer.apple.com/documentation/foundation/nsstring/1412625-precomposedstringwithcompatibili?language=objc)
（A string made by normalizing the receiver’s contents using the Unicode Normalization Form KC.）

####拆叠字符串（Folding Strings）

[- stringByFoldingWithOptions:locale:](https://developer.apple.com/documentation/foundation/nsstring/1413779-stringbyfoldingwithoptions?language=objc)
（Creates a string suitable for comparison by removing the specified character distinctions from a string.）

####转换字符串（Transforming Strings）

[- stringByApplyingTransform:reverse:](https://developer.apple.com/documentation/foundation/nsstring/1407787-stringbyapplyingtransform?language=objc)
（Returns a new string by applying a specified transform to the string.）

[NSStringTransform](https://developer.apple.com/documentation/foundation/nsstringtransform?language=objc)
（Constants representing an ICU string transform.）

####查找字符和子字符串（Finding Characters and Substrings）

[- containsString:](https://developer.apple.com/documentation/foundation/nsstring/1414563-containsstring?language=objc)
查找字符串中是否包含“xxx”：方法区分小写字母（Returns a Boolean value indicating whether the string contains a given string by performing a case-sensitive, locale-unaware search.）

[- localizedCaseInsensitiveContainsString:](https://developer.apple.com/documentation/foundation/nsstring/1412098-localizedcaseinsensitivecontains?language=objc)
方法不区分小写字母（Returns a Boolean value indicating whether the string contains a given string by performing a case-insensitive, locale-aware search.）

[- localizedStandardContainsString:](https://developer.apple.com/documentation/foundation/nsstring/1416328-localizedstandardcontainsstring?language=objc)
（Returns a Boolean value indicating whether the string contains a given string by performing a case and diacritic insensitive, locale-aware search.）

[- rangeOfCharacterFromSet:](https://developer.apple.com/documentation/foundation/nsstring/1411930-rangeofcharacterfromset?language=objc)
（Finds and returns the range in the string of the first character from a given character set.）

[- rangeOfCharacterFromSet:options:](https://developer.apple.com/documentation/foundation/nsstring/1416898-rangeofcharacterfromset?language=objc)
（Finds and returns the range in the string of the first character, using given options, from a given character set.）

[- rangeOfCharacterFromSet:options:range:](https://developer.apple.com/documentation/foundation/nsstring/1411461-rangeofcharacterfromset?language=objc)
（Finds and returns the range in the string of the first character from a given character set found in a given range with given options.）

[- rangeOfString:](https://developer.apple.com/documentation/foundation/nsstring/1410144-rangeofstring?language=objc)
判断某个字符串中是否包含指定的字符串时（Finds and returns the range of the first occurrence of a given string within the string.）

[- rangeOfString:options:](https://developer.apple.com/documentation/foundation/nsstring/1416849-rangeofstring?language=objc)
（Finds and returns the range of the first occurrence of a given string within the string, subject to given options.）

[- rangeOfString:options:range:](https://developer.apple.com/documentation/foundation/nsstring/1415073-rangeofstring?language=objc)
（Finds and returns the range of the first occurrence of a given string, within the given range of the string, subject to given options.）

[- rangeOfString:options:range:locale:](https://developer.apple.com/documentation/foundation/nsstring/1417348-rangeofstring?language=objc)
（Finds and returns the range of the first occurrence of a given string within a given range of the string, subject to given options, using the specified locale, if any.）

[- localizedStandardRangeOfString:](https://developer.apple.com/documentation/foundation/nsstring/1413574-localizedstandardrangeofstring?language=objc)
（Finds and returns the range of the first occurrence of a given string within the string by performing a case and diacritic insensitive, locale-aware search.）

[- enumerateLinesUsingBlock:](https://developer.apple.com/documentation/foundation/nsstring/1408459-enumeratelinesusingblock?language=objc)
枚举字符串所有行（Enumerates all the lines in the string.）

[- enumerateSubstringsInRange:options:usingBlock:](https://developer.apple.com/documentation/foundation/nsstring/1416774-enumeratesubstringsinrange?language=objc)
枚举指定字符串范围内指定类型的子字符串（Enumerates the substrings of the specified type in the specified range of the string.）

####替换子字符串（Replacing Substrings）

[- stringByReplacingOccurrencesOfString:withString:](https://developer.apple.com/documentation/foundation/nsstring/1412937-stringbyreplacingoccurrencesofst?language=objc)
（Returns a new string in which all occurrences of a target string in the receiver are replaced by another given string.）

[- stringByReplacingOccurrencesOfString:withString:options:range:](https://developer.apple.com/documentation/foundation/nsstring/1416484-stringbyreplacingoccurrencesofst?language=objc)
（Returns a new string in which all occurrences of a target string in a specified range of the receiver are replaced by another given string.）

[- stringByReplacingCharactersInRange:withString:](https://developer.apple.com/documentation/foundation/nsstring/1410029-stringbyreplacingcharactersinran?language=objc)
（Returns a new string in which the characters in a specified range of the receiver are replaced by a given string.）

[- stringByReplacingCharactersInRange:withString:](https://developer.apple.com/documentation/foundation/nsstring/1410029-stringbyreplacingcharactersinran?language=objc)
（Returns a new string in which the characters in a specified range of the receiver are replaced by a given string.）

####获取公共的前缀（Getting a Shared Prefix）

[- commonPrefixWithString:options:](https://developer.apple.com/documentation/foundation/nsstring/1408169-commonprefixwithstring?language=objc)
（Returns a string containing characters the receiver and a given string have in common, starting from the beginning of each up to the first characters that aren’t equivalent.）

####语言标记分析（Performing Linguistic Analysis）

[- enumerateLinguisticTagsInRange:scheme:options:orthography:usingBlock:](https://developer.apple.com/documentation/foundation/nsstring/1412161-enumeratelinguistictagsinrange?language=objc)
（Performs linguistic analysis on the specified string by enumerating the specific range of the string, providing the Block with the located tags.）

[- linguisticTagsInRange:scheme:options:orthography:tokenRanges:](https://developer.apple.com/documentation/foundation/nsstring/1416530-linguistictagsinrange?language=objc)
（Returns an array of linguistic tags for the specified range and requested tags within the receiving string.）

[NSStringEnumerationOptions](https://developer.apple.com/documentation/foundation/nsstringenumerationoptions?language=objc)
（Constants to specify kinds of substrings and styles of enumeration.）

####确定组成字符的顺序（Determining Line and Paragraph Ranges）

[- getLineStart:end:contentsEnd:forRange:](https://developer.apple.com/documentation/foundation/nsstring/1415111-getlinestart?language=objc)
（Returns by reference the beginning of the first line and the end of the last line touched by the given range.）

[- lineRangeForRange:](https://developer.apple.com/documentation/foundation/nsstring/1407736-linerangeforrange?language=objc)
（Returns the range of characters representing the line or lines containing a given range.）

[- getParagraphStart:end:contentsEnd:forRange:](https://developer.apple.com/documentation/foundation/nsstring/1416407-getparagraphstart?language=objc)
（Returns by reference the beginning of the first paragraph and the end of the last paragraph touched by the given range.）

[- paragraphRangeForRange:](https://developer.apple.com/documentation/foundation/nsstring/1408548-paragraphrangeforrange?language=objc)
（Returns the range of characters representing the paragraph or paragraphs containing a given range.）

####确定组成字符的顺序（Determining Composed Character Sequences）

[- rangeOfComposedCharacterSequenceAtIndex:](https://developer.apple.com/documentation/foundation/nsstring/1416036-rangeofcomposedcharactersequence?language=objc)
（Returns the range in the receiver of the composed character sequence located at a given index.）

[- rangeOfComposedCharacterSequencesForRange:](https://developer.apple.com/documentation/foundation/nsstring/1410993-rangeofcomposedcharactersequence?language=objc)
（Returns the range in the string of the composed character sequences for a given range.）

####写入文件或URL(Writing to a File or URL)

[- writeToFile:atomically:encoding:error:](https://developer.apple.com/documentation/foundation/nsstring/1407654-writetofile?language=objc)
（Writes the contents of the receiver to a file at a given path using a given encoding.）

[- writeToURL:atomically:encoding:error:](https://developer.apple.com/documentation/foundation/nsstring/1417341-writetourl?language=objc)
（Writes the contents of the receiver to the URL specified by url using the specified encoding.）

####将字符串内容转换成属性列表（Converting String Contents Into a Property List）

[- propertyList](https://developer.apple.com/documentation/foundation/nsstring/1413115-propertylist?language=objc)
（Parses the receiver as a text representation of a property list, returning an NSString, NSData, NSArray, or NSDictionary object, according to the topmost element.）

[- propertyListFromStringsFileFormat]（https://developer.apple.com/documentation/foundation/nsstring/1407697-propertylistfromstringsfileforma?language=objc)
(Returns a dictionary object initialized with the keys and values found in the receiver.）

####尺寸和绘图字符串(Sizing and Drawing Strings)

[- drawAtPoint:withAttributes:](https://developer.apple.com/documentation/foundation/nsstring/1533109-drawatpoint?language=objc)
（Draws the receiver with the font and other display characteristics of the given attributes, at the specified point in the current graphics context.）

[- drawInRect:withAttributes:](https://developer.apple.com/documentation/foundation/nsstring/1529855-drawinrect?language=objc)
（Draws the attributed string inside the specified bounding rectangle.）

[- drawWithRect:options:attributes:context:](https://developer.apple.com/documentation/foundation/nsstring/1530195-drawwithrect?language=objc)
（Draws the attributed string in the specified bounding rectangle using the provided options.）

[- boundingRectWithSize:options:attributes:context:](https://developer.apple.com/documentation/foundation/nsstring/1524729-boundingrectwithsize?language=objc)
（Calculates and returns the bounding rect for the receiver drawn using the given options and display characteristics, within the specified rectangle in the current graphics context.）

[- sizeWithAttributes:](https://developer.apple.com/documentation/foundation/nsstring/1531844-sizewithattributes?language=objc)
自适应高度并返回宽高（Returns the bounding box size the receiver occupies when drawn with the given attributes.）

[- variantFittingPresentationWidth:](https://developer.apple.com/documentation/foundation/nsstring/1413104-variantfittingpresentationwidth?language=objc)
（Returns a string variation suitable for the specified presentation width.）

[NSStringDrawingOptions](https://developer.apple.com/documentation/uikit/nsstringdrawingoptions?language=objc)
（Constants for the rendering options for a string when it is drawn.）

####[字符串转换（Getting Numeric Values）](https://developer.apple.com/documentation/foundation/nsstring/1414031-doublevalue?language=objc)

####处理字符编码（Working with Encodings）

[availableStringEncodings](https://developer.apple.com/documentation/foundation/nsstring/1417579-availablestringencodings?language=objc)
（Returns a zero-terminated list of the encodings string objects support in the application’s environment.）

[defaultCStringEncoding](https://developer.apple.com/documentation/foundation/nsstring/1410091-defaultcstringencoding?language=objc)
（Returns the C-string encoding assumed for any method accepting a C string as an argument.）

[+ stringEncodingForData:encodingOptions:convertedString:usedLossyConversion:](https://developer.apple.com/documentation/foundation/nsstring/1413576-stringencodingfordata?language=objc)
（Returns the string encoding for the given data as detected by attempting to create a string according to the specified encoding options.）

[+ localizedNameOfStringEncoding:](https://developer.apple.com/documentation/foundation/nsstring/1408318-localizednameofstringencoding?language=objc)
（Returns a human-readable string giving the name of a given encoding.）

[- canBeConvertedToEncoding:](https://developer.apple.com/documentation/foundation/nsstring/1409496-canbeconvertedtoencoding?language=objc)
（Returns a Boolean value that indicates whether the receiver can be converted to a given encoding without loss of information.）

[- dataUsingEncoding:](https://developer.apple.com/documentation/foundation/nsstring/1416696-datausingencoding?language=objc)
（Returns an NSData object containing a representation of the receiver encoded using a given encoding.）

[- dataUsingEncoding:allowLossyConversion:](https://developer.apple.com/documentation/foundation/nsstring/1413692-datausingencoding?language=objc)
（Returns an NSData object containing a representation of the receiver encoded using a given encoding.）

[description](https://developer.apple.com/documentation/foundation/nsstring/1410889-description?language=objc)
（This NSString object.）

[fastestEncoding](https://developer.apple.com/documentation/foundation/nsstring/1409567-fastestencoding?language=objc)
（The fastest encoding to which the receiver may be converted without loss of information.）

[fastestEncoding](https://developer.apple.com/documentation/foundation/nsstring/1409567-fastestencoding?language=objc)
（The fastest encoding to which the receiver may be converted without loss of information.）

[smallestEncoding](https://developer.apple.com/documentation/foundation/nsstring/1418037-smallestencoding?language=objc)
（The smallest encoding to which the receiver can be converted without loss of information.）

[NSStringEncoding](https://developer.apple.com/documentation/foundation/nsstringencoding?language=objc)
（The following constants are provided by NSString as possible string encodings.）

[NSStringEncodingDetectionOptionsKey](https://developer.apple.com/documentation/foundation/nsstringencodingdetectionoptionskey?language=objc)
没有概述（No overview available.）

####处理路径（Working with Paths）

[+ pathWithComponents:](https://developer.apple.com/documentation/foundation/nsstring/1417198-pathwithcomponents?language=objc)
（Returns a string built from the strings in a given array by concatenating them with a path separator between each pair.）

[pathComponents](https://developer.apple.com/documentation/foundation/nsstring/1414489-pathcomponents?language=objc)
（The file-system path components of the receiver.）

[- completePathIntoString:caseSensitive:matchesIntoArray:filterTypes:](https://developer.apple.com/documentation/foundation/nsstring/1411841-completepathintostring?language=objc)
（Interprets the receiver as a path in the file system and attempts to perform filename completion, returning a numeric value that indicates whether a match was possible, and by reference the longest path that matches the receiver.）

[fileSystemRepresentation](https://developer.apple.com/documentation/foundation/nsstring/1414559-filesystemrepresentation?language=objc)
（A file system-specific representation of the receiver.）

[- getFileSystemRepresentation:maxLength:](https://developer.apple.com/documentation/foundation/nsstring/1410269-getfilesystemrepresentation?language=objc)
（Interprets the receiver as a system-independent path and fills a buffer with a C-string in a format and encoding suitable for use with file-system calls.）

[absolutePath](https://developer.apple.com/documentation/foundation/nsstring/1409068-absolutepath?language=objc)
（A Boolean value that indicates whether the receiver represents an absolute path.）

[lastPathComponent](https://developer.apple.com/documentation/foundation/nsstring/1416528-lastpathcomponent?language=objc)
（The last path component of the receiver.）

[pathExtension](https://developer.apple.com/documentation/foundation/nsstring/1407801-pathextension?language=objc)
（The path extension, if any, of the string as interpreted as a path.）

[stringByAbbreviatingWithTildeInPath](https://developer.apple.com/documentation/foundation/nsstring/1407943-stringbyabbreviatingwithtildeinp?language=objc)
（A new string that replaces the current home directory portion of the current path with a tilde (~) character.）

[- stringByAppendingPathComponent:](https://developer.apple.com/documentation/foundation/nsstring/1417069-stringbyappendingpathcomponent?language=objc)
（Returns a new string made by appending to the receiver a given string.）

[- stringByAppendingPathExtension:](https://developer.apple.com/documentation/foundation/nsstring/1412501-stringbyappendingpathextension?language=objc)
（Returns a new string made by appending to the receiver an extension separator followed by a given extension.）

[stringByDeletingLastPathComponent](https://developer.apple.com/documentation/foundation/nsstring/1411141-stringbydeletinglastpathcomponen?language=objc)
（A new string made by deleting the last path component from the receiver, along with any final path separator.）

[stringByDeletingPathExtension](https://developer.apple.com/documentation/foundation/nsstring/1418214-stringbydeletingpathextension?language=objc)
（A new string made by deleting the extension (if any, and only the last) from the receiver.）

[stringByExpandingTildeInPath](https://developer.apple.com/documentation/foundation/nsstring/1407716-stringbyexpandingtildeinpath?language=objc)
（A new string made by expanding the initial component of the receiver to its full path value.）

[stringByResolvingSymlinksInPath](https://developer.apple.com/documentation/foundation/nsstring/1417783-stringbyresolvingsymlinksinpath?language=objc)
（A new string made from the receiver by resolving all symbolic links and standardizing path.）

[stringByStandardizingPath](https://developer.apple.com/documentation/foundation/nsstring/1407194-stringbystandardizingpath?language=objc)
（A new string made by removing extraneous path components from the receiver.）

[- stringsByAppendingPaths:](https://developer.apple.com/documentation/foundation/nsstring/1415100-stringsbyappendingpaths?language=objc)
（Returns an array of strings made by separately appending to the receiver each string in a given array.）

####处理URL（Working with URL Strings）

[- stringByAddingPercentEncodingWithAllowedCharacters:](https://developer.apple.com/documentation/foundation/nsstring/1411946-stringbyaddingpercentencodingwit?language=objc)
（Returns a new string made from the receiver by replacing all characters not in the specified set with percent-encoded characters.）

[stringByRemovingPercentEncoding](https://developer.apple.com/documentation/foundation/nsstring/1409569-stringbyremovingpercentencoding?language=objc)
（Returns a new string made from the receiver by replacing all percent encoded sequences with the matching UTF-8 characters.）


###最后,觉得有用记得给个star✨!非常感谢!
