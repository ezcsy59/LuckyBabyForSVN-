//
//  emojiStringChange.m
//  LuckyBaby
//
//  Created by 黄嘉宏 on 15-4-12.
//  Copyright (c) 2015年 黄嘉宏. All rights reserved.
//

#import "emojiStringChange.h"

@implementation emojiStringChange
+(NSString *)emojiStringChange:(NSString*)string{
    NSRange range = [string rangeOfString:@"[呲牙]"];
    if (range.length > 0) {
        string = [string stringByReplacingOccurrencesOfString:@"[呲牙]" withString:@"[p0]"];
    }
    
    range = [string rangeOfString:@"[调皮]"];
    if (range.length > 0) {
        string = [string stringByReplacingOccurrencesOfString:@"[调皮]" withString:@"[p1]"];
    }
    
    range = [string rangeOfString:@"[流汗]"];
    if (range.length > 0) {
        string = [string stringByReplacingOccurrencesOfString:@"[流汗]" withString:@"[p2]"];
    }
    
    range = [string rangeOfString:@"[偷笑]"];
    if (range.length > 0) {
        string = [string stringByReplacingOccurrencesOfString:@"[偷笑]" withString:@"[p3]"];
    }

    range = [string rangeOfString:@"[再见]"];
    if (range.length > 0) {
        string = [string stringByReplacingOccurrencesOfString:@"[再见]" withString:@"[p4]"];
    }
    
    range = [string rangeOfString:@"[敲打]"];
    if (range.length > 0) {
        string = [string stringByReplacingOccurrencesOfString:@"[敲打]" withString:@"[p5]"];
    }
    
    range = [string rangeOfString:@"[擦汗]"];
    if (range.length > 0) {
        string = [string stringByReplacingOccurrencesOfString:@"[擦汗]" withString:@"[p6]"];
    }
    
    range = [string rangeOfString:@"[猪头]"];
    if (range.length > 0) {
        string = [string stringByReplacingOccurrencesOfString:@"[猪头]" withString:@"[p7]"];
    }
    
    range = [string rangeOfString:@"[玫瑰]"];
    if (range.length > 0) {
        string = [string stringByReplacingOccurrencesOfString:@"[玫瑰]" withString:@"[p8]"];
    }
    
    range = [string rangeOfString:@"[流泪]"];
    if (range.length > 0) {
        string = [string stringByReplacingOccurrencesOfString:@"[流泪]" withString:@"[p9]"];
    }
    
    range = [string rangeOfString:@"[大哭]"];
    if (range.length > 0) {
        string = [string stringByReplacingOccurrencesOfString:@"[大哭]" withString:@"[p10]"];
    }
    
    range = [string rangeOfString:@"[嘘]"];
    if (range.length > 0) {
        string = [string stringByReplacingOccurrencesOfString:@"[嘘]" withString:@"[p11]"];
    }
    
    range = [string rangeOfString:@"[酷]"];
    if (range.length > 0) {
        string = [string stringByReplacingOccurrencesOfString:@"[酷]" withString:@"[p12]"];
    }
    
    range = [string rangeOfString:@"[抓狂]"];
    if (range.length > 0) {
        string = [string stringByReplacingOccurrencesOfString:@"[抓狂]" withString:@"[p13]"];
    }
    
    range = [string rangeOfString:@"[委屈]"];
    if (range.length > 0) {
        string = [string stringByReplacingOccurrencesOfString:@"[委屈]" withString:@"[p14]"];
    }
    
    range = [string rangeOfString:@"[便便]"];
    if (range.length > 0) {
        string = [string stringByReplacingOccurrencesOfString:@"[便便]" withString:@"[p15]"];
    }
    
    range = [string rangeOfString:@"[炸弹]"];
    if (range.length > 0) {
        string = [string stringByReplacingOccurrencesOfString:@"[炸弹]" withString:@"[p16]"];
    }
    
    range = [string rangeOfString:@"[菜刀]"];
    if (range.length > 0) {
        string = [string stringByReplacingOccurrencesOfString:@"[菜刀]" withString:@"[p17]"];
    }
    
    range = [string rangeOfString:@"[可爱]"];
    if (range.length > 0) {
        string = [string stringByReplacingOccurrencesOfString:@"[可爱]" withString:@"[p18]"];
    }
    
    range = [string rangeOfString:@"[色]"];
    if (range.length > 0) {
        string = [string stringByReplacingOccurrencesOfString:@"[色]" withString:@"[p19]"];
    }
    
    range = [string rangeOfString:@"[害羞]"];
    if (range.length > 0) {
        [string stringByReplacingOccurrencesOfString:@"[害羞]" withString:@"[p20]"];
    }
   
    range = [string rangeOfString:@"[得意]"];
    if (range.length > 0) {
        string = [string stringByReplacingOccurrencesOfString:@"[得意]" withString:@"[p21]"];
    }
    
    range = [string rangeOfString:@"[得意]"];
    if (range.length > 0) {
        string = [string stringByReplacingOccurrencesOfString:@"[得意]" withString:@"[p21]"];
    }
    
    range = [string rangeOfString:@"[吐]"];
    if (range.length > 0) {
        string = [string stringByReplacingOccurrencesOfString:@"[吐]" withString:@"[p22]"];
    }
   
    range = [string rangeOfString:@"[微笑]"];
    if (range.length > 0) {
        string = [string stringByReplacingOccurrencesOfString:@"[微笑]" withString:@"[p23]"];
    }
    
    range = [string rangeOfString:@"[发怒]"];
    if (range.length > 0) {
        string = [string stringByReplacingOccurrencesOfString:@"[发怒]" withString:@"[p24]"];
    }
    
    range = [string rangeOfString:@"[尴尬]"];
    if (range.length > 0) {
        string = [string stringByReplacingOccurrencesOfString:@"[尴尬]" withString:@"[p25]"];
    }
    
    range = [string rangeOfString:@"[惊恐]"];
    if (range.length > 0) {
        string = [string stringByReplacingOccurrencesOfString:@"[惊恐]" withString:@"[p26]"];
    }
    
    range = [string rangeOfString:@"[冷汗]"];
    if (range.length > 0) {
        string = [string stringByReplacingOccurrencesOfString:@"[冷汗]" withString:@"[p27]"];
    }
    
    range = [string rangeOfString:@"[爱心]"];
    if (range.length > 0) {
        string = [string stringByReplacingOccurrencesOfString:@"[爱心]" withString:@"[p28]"];
    }
    
    range = [string rangeOfString:@"[示爱]"];
    if (range.length > 0) {
        string = [string stringByReplacingOccurrencesOfString:@"[示爱]" withString:@"[p29]"];
    }
    
    range = [string rangeOfString:@"[白眼]"];
    if (range.length > 0) {
        string = [string stringByReplacingOccurrencesOfString:@"[白眼]" withString:@"[p30]"];
    }
    
    range = [string rangeOfString:@"[傲慢]"];
    if (range.length > 0) {
        string = [string stringByReplacingOccurrencesOfString:@"[傲慢]" withString:@"[p31]"];
    }
    
    range = [string rangeOfString:@"[难过]"];
    if (range.length > 0) {
        string = [string stringByReplacingOccurrencesOfString:@"[难过]" withString:@"[p32]"];
    }

    range = [string rangeOfString:@"[惊讶]"];
    if (range.length > 0) {
        string = [string stringByReplacingOccurrencesOfString:@"[惊讶]" withString:@"[p33]"];
    }
    
    range = [string rangeOfString:@"[疑问]"];
    if (range.length > 0) {
        string = [string stringByReplacingOccurrencesOfString:@"[疑问]" withString:@"[p107]"];
    }
    
    range = [string rangeOfString:@"[睡]"];
    if (range.length > 0) {
        string = [string stringByReplacingOccurrencesOfString:@"[睡]" withString:@"[p35]"];
    }
    
    range = [string rangeOfString:@"[亲亲]"];
    if (range.length > 0) {
        string = [string stringByReplacingOccurrencesOfString:@"[亲亲]" withString:@"[p36]"];
    }
    
    range = [string rangeOfString:@"[憨笑]"];
    if (range.length > 0) {
        string = [string stringByReplacingOccurrencesOfString:@"[憨笑]" withString:@"[p37]"];
    }

    range = [string rangeOfString:@"[爱情]"];
    if (range.length > 0) {
        string = [string stringByReplacingOccurrencesOfString:@"[爱情]" withString:@"[p38]"];
    }

    range = [string rangeOfString:@"[衰]"];
    if (range.length > 0) {
        string = [string stringByReplacingOccurrencesOfString:@"[衰]" withString:@"[p39]"];
    }
    
    range = [string rangeOfString:@"[撇嘴]"];
    if (range.length > 0) {
        string = [string stringByReplacingOccurrencesOfString:@"[撇嘴]" withString:@"[p40]"];
    }
    
    range = [string rangeOfString:@"[阴险]"];
    if (range.length > 0) {
        string = [string stringByReplacingOccurrencesOfString:@"[阴险]" withString:@"[p41]"];
    }
    
    range = [string rangeOfString:@"[奋斗]"];
    if (range.length > 0) {
        string = [string stringByReplacingOccurrencesOfString:@"[奋斗]" withString:@"[p42]"];
    }
    
    range = [string rangeOfString:@"[发呆]"];
    if (range.length > 0) {
        string = [string stringByReplacingOccurrencesOfString:@"[发呆]" withString:@"[p43]"];
    }
    
    range = [string rangeOfString:@"[右哼哼]"];
    if (range.length > 0) {
        string = [string stringByReplacingOccurrencesOfString:@"[右哼哼]" withString:@"[p44]"];
    }
    
    range = [string rangeOfString:@"[拥抱]"];
    if (range.length > 0) {
        string = [string stringByReplacingOccurrencesOfString:@"[拥抱]" withString:@"[p45]"];
    }
    
    range = [string rangeOfString:@"[坏笑]"];
    if (range.length > 0) {
        string = [string stringByReplacingOccurrencesOfString:@"[坏笑]" withString:@"[p46]"];
    }
    
    range = [string rangeOfString:@"[飞吻]"];
    if (range.length > 0) {
        string = [string stringByReplacingOccurrencesOfString:@"[飞吻]" withString:@"[p47]"];
    }
    
    range = [string rangeOfString:@"[鄙视]"];
    if (range.length > 0) {
        string = [string stringByReplacingOccurrencesOfString:@"[鄙视]" withString:@"[p48]"];
    }
    
    range = [string rangeOfString:@"[晕]"];
    if (range.length > 0) {
        string = [string stringByReplacingOccurrencesOfString:@"[晕]" withString:@"[p49]"];
    }
    
    range = [string rangeOfString:@"[大兵]"];
    if (range.length > 0) {
        string = [string stringByReplacingOccurrencesOfString:@"[大兵]" withString:@"[p50]"];
    }
    
    range = [string rangeOfString:@"[可怜]"];
    if (range.length > 0) {
        string = [string stringByReplacingOccurrencesOfString:@"[可怜]" withString:@"[p51]"];
    }
    
    range = [string rangeOfString:@"[强]"];
    if (range.length > 0) {
        string = [string stringByReplacingOccurrencesOfString:@"[强]" withString:@"[p52]"];
    }
    
    range = [string rangeOfString:@"[弱]"];
    if (range.length > 0) {
        string = [string stringByReplacingOccurrencesOfString:@"[弱]" withString:@"[p53]"];
    }
    
    range = [string rangeOfString:@"[握手]"];
    if (range.length > 0) {
        string = [string stringByReplacingOccurrencesOfString:@"[握手]" withString:@"[p54]"];
    }
    
    range = [string rangeOfString:@"[胜利]"];
    if (range.length > 0) {
        string = [string stringByReplacingOccurrencesOfString:@"[胜利]" withString:@"[p55]"];
    }
   
    range = [string rangeOfString:@"[抱拳]"];
    if (range.length > 0) {
        string = [string stringByReplacingOccurrencesOfString:@"[抱拳]" withString:@"[p56]"];
    }
    
    range = [string rangeOfString:@"[抱拳]"];
    if (range.length > 0) {
        string = [string stringByReplacingOccurrencesOfString:@"[抱拳]" withString:@"[p56]"];
    }
    
    range = [string rangeOfString:@"[凋谢]"];
    if (range.length > 0) {
        string = [string stringByReplacingOccurrencesOfString:@"[凋谢]" withString:@"[p57]"];
    }
    
    range = [string rangeOfString:@"[饭]"];
    if (range.length > 0) {
        string = [string stringByReplacingOccurrencesOfString:@"[饭]" withString:@"[p58]"];
    }
    
    range = [string rangeOfString:@"[蛋糕]"];
    if (range.length > 0) {
        string = [string stringByReplacingOccurrencesOfString:@"[蛋糕]" withString:@"[p59]"];
    }
    
    range = [string rangeOfString:@"[蛋糕]"];
    if (range.length > 0) {
        string = [string stringByReplacingOccurrencesOfString:@"[蛋糕]" withString:@"[p59]"];
    }
    
    range = [string rangeOfString:@"[西瓜]"];
    if (range.length > 0) {
        string = [string stringByReplacingOccurrencesOfString:@"[西瓜]" withString:@"[p60]"];
    }
    
    range = [string rangeOfString:@"[啤酒]"];
    if (range.length > 0) {
        string = [string stringByReplacingOccurrencesOfString:@"[啤酒]" withString:@"[p61]"];
    }
    
    range = [string rangeOfString:@"[飘虫]"];
    if (range.length > 0) {
        string = [string stringByReplacingOccurrencesOfString:@"[飘虫]" withString:@"[p62]"];
    }
    
    range = [string rangeOfString:@"[勾引]"];
    if (range.length > 0) {
        string = [string stringByReplacingOccurrencesOfString:@"[勾引]" withString:@"[p63]"];
    }
    
    range = [string rangeOfString:@"[OK]"];
    if (range.length > 0) {
        string = [string stringByReplacingOccurrencesOfString:@"[OK]" withString:@"[p64]"];
    }
    
    range = [string rangeOfString:@"[爱你]"];
    if (range.length > 0) {
        string = [string stringByReplacingOccurrencesOfString:@"[爱你]" withString:@"[p65]"];
    }
    
    range = [string rangeOfString:@"[咖啡]"];
    if (range.length > 0) {
        string = [string stringByReplacingOccurrencesOfString:@"[咖啡]" withString:@"[p66]"];
    }
    
    range = [string rangeOfString:@"[钱]"];
    if (range.length > 0) {
        string = [string stringByReplacingOccurrencesOfString:@"[钱]" withString:@"[p67]"];
    }
    
    range = [string rangeOfString:@"[月亮]"];
    if (range.length > 0) {
        string = [string stringByReplacingOccurrencesOfString:@"[月亮]" withString:@"[p68]"];
    }
  
    range = [string rangeOfString:@"[美女]"];
    if (range.length > 0) {
        string = [string stringByReplacingOccurrencesOfString:@"[美女]" withString:@"[p108]"];
    }

    range = [string rangeOfString:@"[刀]"];
    if (range.length > 0) {
        string = [string stringByReplacingOccurrencesOfString:@"[刀]" withString:@"[p70]"];
    }
    
    range = [string rangeOfString:@"[发抖]"];
    if (range.length > 0) {
        string = [string stringByReplacingOccurrencesOfString:@"[发抖]" withString:@"[p71]"];
    }
    
    range = [string rangeOfString:@"[差劲]"];
    if (range.length > 0) {
        string = [string stringByReplacingOccurrencesOfString:@"[差劲]" withString:@"[p72]"];
    }
    
    range = [string rangeOfString:@"[拳头]"];
    if (range.length > 0) {
        string = [string stringByReplacingOccurrencesOfString:@"[拳头]" withString:@"[p73]"];
    }
    
    range = [string rangeOfString:@"[心碎]"];
    if (range.length > 0) {
        string = [string stringByReplacingOccurrencesOfString:@"[心碎]" withString:@"[p74]"];
    }
    
    range = [string rangeOfString:@"[太阳]"];
    if (range.length > 0) {
        string = [string stringByReplacingOccurrencesOfString:@"[太阳]" withString:@"[p75]"];
    }
    
    range = [string rangeOfString:@"[礼物]"];
    if (range.length > 0) {
        string = [string stringByReplacingOccurrencesOfString:@"[礼物]" withString:@"[p76]"];
    }
    
    range = [string rangeOfString:@"[足球]"];
    if (range.length > 0) {
        string = [string stringByReplacingOccurrencesOfString:@"[足球]" withString:@"[p77]"];
    }
    
    range = [string rangeOfString:@"[骷髅]"];
    if (range.length > 0) {
        string = [string stringByReplacingOccurrencesOfString:@"[骷髅]" withString:@"[p78]"];
    }
    
    range = [string rangeOfString:@"[挥手]"];
    if (range.length > 0) {
        string = [string stringByReplacingOccurrencesOfString:@"[挥手]" withString:@"[p79]"];
    }
    
    range = [string rangeOfString:@"[闪电]"];
    if (range.length > 0) {
        string = [string stringByReplacingOccurrencesOfString:@"[闪电]" withString:@"[p80]"];
    }
    
    range = [string rangeOfString:@"[饥饿]"];
    if (range.length > 0) {
        string = [string stringByReplacingOccurrencesOfString:@"[饥饿]" withString:@"[p81]"];
    }
    
    range = [string rangeOfString:@"[困]"];
    if (range.length > 0) {
        string = [string stringByReplacingOccurrencesOfString:@"[困]" withString:@"[p82]"];
    }
    
    range = [string rangeOfString:@"[咒骂]"];
    if (range.length > 0) {
        string = [string stringByReplacingOccurrencesOfString:@"[咒骂]" withString:@"[p83]"];
    }
    
    range = [string rangeOfString:@"[折磨]"];
    if (range.length > 0) {
        string = [string stringByReplacingOccurrencesOfString:@"[折磨]" withString:@"[p84]"];
    }
    
    range = [string rangeOfString:@"[抠鼻]"];
    if (range.length > 0) {
        string = [string stringByReplacingOccurrencesOfString:@"[抠鼻]" withString:@"[p85]"];
    }
    
    range = [string rangeOfString:@"[鼓掌]"];
    if (range.length > 0) {
        string = [string stringByReplacingOccurrencesOfString:@"[鼓掌]" withString:@"[p86]"];
    }
    
    range = [string rangeOfString:@"[糗大了]"];
    if (range.length > 0) {
        string = [string stringByReplacingOccurrencesOfString:@"[糗大了]" withString:@"[p87]"];
    }
    
    range = [string rangeOfString:@"[左哼哼]"];
    if (range.length > 0) {
        string = [string stringByReplacingOccurrencesOfString:@"[左哼哼]" withString:@"[p88]"];
    }
    
    range = [string rangeOfString:@"[左哼哼]"];
    if (range.length > 0) {
        string = [string stringByReplacingOccurrencesOfString:@"[左哼哼]" withString:@"[p88]"];
    }
    
    range = [string rangeOfString:@"[哈欠]"];
    if (range.length > 0) {
        string = [string stringByReplacingOccurrencesOfString:@"[哈欠]" withString:@"[p89]"];
    }
    
    range = [string rangeOfString:@"[快哭了]"];
    if (range.length > 0) {
        string = [string stringByReplacingOccurrencesOfString:@"[快哭了]" withString:@"[p90]"];
    }
    
    range = [string rangeOfString:@"[吓]"];
    if (range.length > 0) {
        string = [string stringByReplacingOccurrencesOfString:@"[吓]" withString:@"[p91]"];
    }
    
    range = [string rangeOfString:@"[篮球]"];
    if (range.length > 0) {
        string = [string stringByReplacingOccurrencesOfString:@"[篮球]" withString:@"[p92]"];
    }
 
    range = [string rangeOfString:@"[乒乓球]"];
    if (range.length > 0) {
        string = [string stringByReplacingOccurrencesOfString:@"[乒乓球]" withString:@"[p93]"];
    }

    range = [string rangeOfString:@"[NO]"];
    if (range.length > 0) {
        string = [string stringByReplacingOccurrencesOfString:@"[NO]" withString:@"[p94]"];
    }
    
    range = [string rangeOfString:@"[跳跳]"];
    if (range.length > 0) {
        string = [string stringByReplacingOccurrencesOfString:@"[跳跳]" withString:@"[p95]"];
    }
    
    range = [string rangeOfString:@"[怄火]"];
    if (range.length > 0) {
        string = [string stringByReplacingOccurrencesOfString:@"[怄火]" withString:@"[p96]"];
    }
    
    range = [string rangeOfString:@"[转圈]"];
    if (range.length > 0) {
        string = [string stringByReplacingOccurrencesOfString:@"[转圈]" withString:@"[p97]"];
    }
    
    range = [string rangeOfString:@"[磕头]"];
    if (range.length > 0) {
        string = [string stringByReplacingOccurrencesOfString:@"[磕头]" withString:@"[p98]"];
    }
    
    range = [string rangeOfString:@"[回头]"];
    if (range.length > 0) {
        string = [string stringByReplacingOccurrencesOfString:@"[回头]" withString:@"[p99]"];
    }
    
    range = [string rangeOfString:@"[跳绳]"];
    if (range.length > 0) {
        string = [string stringByReplacingOccurrencesOfString:@"[跳绳]" withString:@"[p100]"];
    }
    
    range = [string rangeOfString:@"[激动]"];
    if (range.length > 0) {
        string = [string stringByReplacingOccurrencesOfString:@"[激动]" withString:@"[p101]"];
    }
    
    range = [string rangeOfString:@"[街舞]"];
    if (range.length > 0) {
        string = [string stringByReplacingOccurrencesOfString:@"[街舞]" withString:@"[p102]"];
    }

    range = [string rangeOfString:@"[献吻]"];
    if (range.length > 0) {
        string = [string stringByReplacingOccurrencesOfString:@"[献吻]" withString:@"[p103]"];
    }
    
    range = [string rangeOfString:@"[左太极]"];
    if (range.length > 0) {
        string = [string stringByReplacingOccurrencesOfString:@"[左太极]" withString:@"[p109]"];
    }
    
    range = [string rangeOfString:@"[右太极]"];
    if (range.length > 0) {
        string = [string stringByReplacingOccurrencesOfString:@"[右太极]" withString:@"[p105]"];
    }
    
    range = [string rangeOfString:@"[闭嘴]"];
    if (range.length > 0) {
        string = [string stringByReplacingOccurrencesOfString:@"[闭嘴]" withString:@"[p106]"];
    }
    return string;
}


+(NSString *)emojiStringChange2:(NSString*)string{
    NSRange range = [string rangeOfString:@"[p0]"];
    if (range.length > 0) {
        string = [string stringByReplacingOccurrencesOfString:@"[p0]" withString:@"[呲牙]"];
    }
    
    range = [string rangeOfString:@"[p1]"];
    if (range.length > 0) {
        string = [string stringByReplacingOccurrencesOfString:@"[p1]" withString:@"[调皮]"];
    }
    
    range = [string rangeOfString:@"[p2]"];
    if (range.length > 0) {
        string = [string stringByReplacingOccurrencesOfString:@"[p2]" withString:@"[流汗]"];
    }
    
    range = [string rangeOfString:@"[p3]"];
    if (range.length > 0) {
        string = [string stringByReplacingOccurrencesOfString:@"[p3]" withString:@"[偷笑]"];
    }
    
    range = [string rangeOfString:@"[p4]"];
    if (range.length > 0) {
        string = [string stringByReplacingOccurrencesOfString:@"[p4]" withString:@"[再见]"];
    }
    
    range = [string rangeOfString:@"[p5]"];
    if (range.length > 0) {
        string = [string stringByReplacingOccurrencesOfString:@"[p5]" withString:@"[敲打]"];
    }
    
    range = [string rangeOfString:@"[p6]"];
    if (range.length > 0) {
        string = [string stringByReplacingOccurrencesOfString:@"[p6]" withString:@"[擦汗]"];
    }
    
    range = [string rangeOfString:@"[p7]"];
    if (range.length > 0) {
        string = [string stringByReplacingOccurrencesOfString:@"[p7]" withString:@"[猪头]"];
    }
    
    range = [string rangeOfString:@"[p8]"];
    if (range.length > 0) {
        string = [string stringByReplacingOccurrencesOfString:@"[p8]" withString:@"[玫瑰]"];
    }
    
    range = [string rangeOfString:@"[p9]"];
    if (range.length > 0) {
        string = [string stringByReplacingOccurrencesOfString:@"[p9]" withString:@"[流泪]"];
    }
    
    range = [string rangeOfString:@"[p10]"];
    if (range.length > 0) {
        string = [string stringByReplacingOccurrencesOfString:@"[p10]" withString:@"[大哭]"];
    }
    
    range = [string rangeOfString:@"[p11]"];
    if (range.length > 0) {
        string = [string stringByReplacingOccurrencesOfString:@"[p11]" withString:@"[嘘]"];
    }
    
    range = [string rangeOfString:@"[p12]"];
    if (range.length > 0) {
        string = [string stringByReplacingOccurrencesOfString:@"[p12]" withString:@"[酷]"];
    }
    
    range = [string rangeOfString:@"[p13]"];
    if (range.length > 0) {
        string = [string stringByReplacingOccurrencesOfString:@"[p13]" withString:@"[抓狂]"];
    }
    
    range = [string rangeOfString:@"[p14]"];
    if (range.length > 0) {
        string = [string stringByReplacingOccurrencesOfString:@"[p14]" withString:@"[委屈]"];
    }
    
    range = [string rangeOfString:@"[p15]"];
    if (range.length > 0) {
        string = [string stringByReplacingOccurrencesOfString:@"[p15]" withString:@"[便便]"];
    }
    
    range = [string rangeOfString:@"[p16]"];
    if (range.length > 0) {
        string = [string stringByReplacingOccurrencesOfString:@"[p16]" withString:@"[炸弹]"];
    }
    
    range = [string rangeOfString:@"[p17]"];
    if (range.length > 0) {
        string = [string stringByReplacingOccurrencesOfString:@"[p17]" withString:@"[菜刀]"];
    }
    
    range = [string rangeOfString:@"[p18]"];
    if (range.length > 0) {
        string = [string stringByReplacingOccurrencesOfString:@"[p18]" withString:@"[可爱]"];
    }
    
    range = [string rangeOfString:@"[p19]"];
    if (range.length > 0) {
        string = [string stringByReplacingOccurrencesOfString:@"[p19]" withString:@"[色]"];
    }
    
    range = [string rangeOfString:@"[p20]"];
    if (range.length > 0) {
        [string stringByReplacingOccurrencesOfString:@"[p20]" withString:@"[害羞]"];
    }
    
    range = [string rangeOfString:@"[p21]"];
    if (range.length > 0) {
        string = [string stringByReplacingOccurrencesOfString:@"[p21]" withString:@"[得意]"];
    }
    
    range = [string rangeOfString:@"[p21]"];
    if (range.length > 0) {
        string = [string stringByReplacingOccurrencesOfString:@"[p21]" withString:@"[得意]"];
    }
    
    range = [string rangeOfString:@"[p22]"];
    if (range.length > 0) {
        string = [string stringByReplacingOccurrencesOfString:@"[p22]" withString:@"[吐]"];
    }
    
    range = [string rangeOfString:@"[p23]"];
    if (range.length > 0) {
        string = [string stringByReplacingOccurrencesOfString:@"[p23]" withString:@"[微笑]"];
    }
    
    range = [string rangeOfString:@"[p24]"];
    if (range.length > 0) {
        string = [string stringByReplacingOccurrencesOfString:@"[p24]" withString:@"[发怒]"];
    }
    
    range = [string rangeOfString:@"[p25]"];
    if (range.length > 0) {
        string = [string stringByReplacingOccurrencesOfString:@"[p25]" withString:@"[尴尬]"];
    }
    
    range = [string rangeOfString:@"[p26]"];
    if (range.length > 0) {
        string = [string stringByReplacingOccurrencesOfString:@"[p26]" withString:@"[惊恐]"];
    }
    
    range = [string rangeOfString:@"[p27]"];
    if (range.length > 0) {
        string = [string stringByReplacingOccurrencesOfString:@"[p27]" withString:@"[冷汗]"];
    }
    
    range = [string rangeOfString:@"[p28]"];
    if (range.length > 0) {
        string = [string stringByReplacingOccurrencesOfString:@"[p28]" withString:@"[爱心]"];
    }
    
    range = [string rangeOfString:@"[p29]"];
    if (range.length > 0) {
        string = [string stringByReplacingOccurrencesOfString:@"[p29]" withString:@"[示爱]"];
    }
    
    range = [string rangeOfString:@"[p30]"];
    if (range.length > 0) {
        string = [string stringByReplacingOccurrencesOfString:@"[p30]" withString:@"[白眼]"];
    }
    
    range = [string rangeOfString:@"[p31]"];
    if (range.length > 0) {
        string = [string stringByReplacingOccurrencesOfString:@"[p31]" withString:@"[傲慢]"];
    }
    
    range = [string rangeOfString:@"[p32]"];
    if (range.length > 0) {
        string = [string stringByReplacingOccurrencesOfString:@"[p32]" withString:@"[难过]"];
    }
    
    range = [string rangeOfString:@"[p33]"];
    if (range.length > 0) {
        string = [string stringByReplacingOccurrencesOfString:@"[p33]" withString:@"[惊讶]"];
    }
    
    range = [string rangeOfString:@"[p107]"];
    if (range.length > 0) {
        string = [string stringByReplacingOccurrencesOfString:@"[p107]" withString:@"[疑问]"];
    }
    
    range = [string rangeOfString:@"[p35]"];
    if (range.length > 0) {
        string = [string stringByReplacingOccurrencesOfString:@"[p35]" withString:@"[睡]"];
    }
    
    range = [string rangeOfString:@"[p36]"];
    if (range.length > 0) {
        string = [string stringByReplacingOccurrencesOfString:@"[p36]" withString:@"[亲亲]"];
    }
    
    range = [string rangeOfString:@"[p37]"];
    if (range.length > 0) {
        string = [string stringByReplacingOccurrencesOfString:@"[p37]" withString:@"[憨笑]"];
    }
    
    range = [string rangeOfString:@"[p38]"];
    if (range.length > 0) {
        string = [string stringByReplacingOccurrencesOfString:@"[p38]" withString:@"[爱情]"];
    }
    
    range = [string rangeOfString:@"[p39]"];
    if (range.length > 0) {
        string = [string stringByReplacingOccurrencesOfString:@"[p39]" withString:@"[衰]"];
    }
    
    range = [string rangeOfString:@"[p40]"];
    if (range.length > 0) {
        string = [string stringByReplacingOccurrencesOfString:@"[p40]" withString:@"[撇嘴]"];
    }
    
    range = [string rangeOfString:@"[p41]"];
    if (range.length > 0) {
        string = [string stringByReplacingOccurrencesOfString:@"[p41]" withString:@"[阴险]"];
    }
    
    range = [string rangeOfString:@"[p42]"];
    if (range.length > 0) {
        string = [string stringByReplacingOccurrencesOfString:@"[p42]" withString:@"[奋斗]"];
    }
    
    range = [string rangeOfString:@"[p43]"];
    if (range.length > 0) {
        string = [string stringByReplacingOccurrencesOfString:@"[p43]" withString:@"[发呆]"];
    }
    
    range = [string rangeOfString:@"[p44]"];
    if (range.length > 0) {
        string = [string stringByReplacingOccurrencesOfString:@"[p44]" withString:@"[右哼哼]"];
    }
    
    range = [string rangeOfString:@"[p45]"];
    if (range.length > 0) {
        string = [string stringByReplacingOccurrencesOfString:@"[p45]" withString:@"[拥抱]"];
    }
    
    range = [string rangeOfString:@"[p46]"];
    if (range.length > 0) {
        string = [string stringByReplacingOccurrencesOfString:@"[p46]" withString:@"[坏笑]"];
    }
    
    range = [string rangeOfString:@"[p47]"];
    if (range.length > 0) {
        string = [string stringByReplacingOccurrencesOfString:@"[p47]" withString:@"[飞吻]"];
    }
    
    range = [string rangeOfString:@"[p48]"];
    if (range.length > 0) {
        string = [string stringByReplacingOccurrencesOfString:@"[p48]" withString:@"[鄙视]"];
    }
    
    range = [string rangeOfString:@"[p49]"];
    if (range.length > 0) {
        string = [string stringByReplacingOccurrencesOfString:@"[p49]" withString:@"[晕]"];
    }
    
    range = [string rangeOfString:@"[p50]"];
    if (range.length > 0) {
        string = [string stringByReplacingOccurrencesOfString:@"[p50]" withString:@"[大兵]"];
    }
    
    range = [string rangeOfString:@"[p51]"];
    if (range.length > 0) {
        string = [string stringByReplacingOccurrencesOfString:@"[p51]" withString:@"[可怜]"];
    }
    
    range = [string rangeOfString:@"[p52]"];
    if (range.length > 0) {
        string = [string stringByReplacingOccurrencesOfString:@"[p52]" withString:@"[强]"];
    }
    
    range = [string rangeOfString:@"[p53]"];
    if (range.length > 0) {
        string = [string stringByReplacingOccurrencesOfString:@"[p53]" withString:@"[弱]"];
    }
    
    range = [string rangeOfString:@"[p54]"];
    if (range.length > 0) {
        string = [string stringByReplacingOccurrencesOfString:@"[p54]" withString:@"[握手]"];
    }
    
    range = [string rangeOfString:@"[p55]"];
    if (range.length > 0) {
        string = [string stringByReplacingOccurrencesOfString:@"[p55]" withString:@"[胜利]"];
    }
    
    range = [string rangeOfString:@"[p56]"];
    if (range.length > 0) {
        string = [string stringByReplacingOccurrencesOfString:@"[p56]" withString:@"[抱拳]"];
    }
    
    range = [string rangeOfString:@"[p56]"];
    if (range.length > 0) {
        string = [string stringByReplacingOccurrencesOfString:@"[p56]" withString:@"[抱拳]"];
    }
    
    range = [string rangeOfString:@"[p57]"];
    if (range.length > 0) {
        string = [string stringByReplacingOccurrencesOfString:@"[p57]" withString:@"[凋谢]"];
    }
    
    range = [string rangeOfString:@"[p58]"];
    if (range.length > 0) {
        string = [string stringByReplacingOccurrencesOfString:@"[p58]" withString:@"[饭]"];
    }
    
    range = [string rangeOfString:@"[p59]"];
    if (range.length > 0) {
        string = [string stringByReplacingOccurrencesOfString:@"[p59]" withString:@"[蛋糕]"];
    }
    
    range = [string rangeOfString:@"[p59]"];
    if (range.length > 0) {
        string = [string stringByReplacingOccurrencesOfString:@"[p59]" withString:@"[蛋糕]"];
    }
    
    range = [string rangeOfString:@"[p60]"];
    if (range.length > 0) {
        string = [string stringByReplacingOccurrencesOfString:@"[p60]" withString:@"[西瓜]"];
    }
    
    range = [string rangeOfString:@"[p61]"];
    if (range.length > 0) {
        string = [string stringByReplacingOccurrencesOfString:@"[p61]" withString:@"[啤酒]"];
    }
    
    range = [string rangeOfString:@"[p62]"];
    if (range.length > 0) {
        string = [string stringByReplacingOccurrencesOfString:@"[p62]" withString:@"[飘虫]"];
    }
    
    range = [string rangeOfString:@"[p63]"];
    if (range.length > 0) {
        string = [string stringByReplacingOccurrencesOfString:@"[p63]" withString:@"[勾引]"];
    }
    
    range = [string rangeOfString:@"[p64]"];
    if (range.length > 0) {
        string = [string stringByReplacingOccurrencesOfString:@"[p64]" withString:@"[OK]"];
    }
    
    range = [string rangeOfString:@"[p65]"];
    if (range.length > 0) {
        string = [string stringByReplacingOccurrencesOfString:@"[p65]" withString:@"[爱你]"];
    }
    
    range = [string rangeOfString:@"[p66]"];
    if (range.length > 0) {
        string = [string stringByReplacingOccurrencesOfString:@"[p66]" withString:@"[咖啡]"];
    }
    
    range = [string rangeOfString:@"[p67]"];
    if (range.length > 0) {
        string = [string stringByReplacingOccurrencesOfString:@"[p67]" withString:@"[钱]"];
    }
    
    range = [string rangeOfString:@"[p68]"];
    if (range.length > 0) {
        string = [string stringByReplacingOccurrencesOfString:@"[p68]" withString:@"[月亮]"];
    }
    
    range = [string rangeOfString:@"[p108]"];
    if (range.length > 0) {
        string = [string stringByReplacingOccurrencesOfString:@"[p108]" withString:@"[美女]"];
    }
    
    range = [string rangeOfString:@"[p70]"];
    if (range.length > 0) {
        string = [string stringByReplacingOccurrencesOfString:@"[p70]" withString:@"[刀]"];
    }
    
    range = [string rangeOfString:@"[p71]"];
    if (range.length > 0) {
        string = [string stringByReplacingOccurrencesOfString:@"[p71]" withString:@"[发抖]"];
    }
    
    range = [string rangeOfString:@"[p72]"];
    if (range.length > 0) {
        string = [string stringByReplacingOccurrencesOfString:@"[p72]" withString:@"[差劲]"];
    }
    
    range = [string rangeOfString:@"[p73]"];
    if (range.length > 0) {
        string = [string stringByReplacingOccurrencesOfString:@"[p73]" withString:@"[拳头]"];
    }
    
    range = [string rangeOfString:@"[p74]"];
    if (range.length > 0) {
        string = [string stringByReplacingOccurrencesOfString:@"[p74]" withString:@"[心碎]"];
    }
    
    range = [string rangeOfString:@"[p75]"];
    if (range.length > 0) {
        string = [string stringByReplacingOccurrencesOfString:@"[p75]" withString:@"[太阳]"];
    }
    
    range = [string rangeOfString:@"[p76]"];
    if (range.length > 0) {
        string = [string stringByReplacingOccurrencesOfString:@"[p76]" withString:@"[礼物]"];
    }
    
    range = [string rangeOfString:@"[p77]"];
    if (range.length > 0) {
        string = [string stringByReplacingOccurrencesOfString:@"[p77]" withString:@"[足球]"];
    }
    
    range = [string rangeOfString:@"[p78]"];
    if (range.length > 0) {
        string = [string stringByReplacingOccurrencesOfString:@"[p78]" withString:@"[骷髅]"];
    }
    
    range = [string rangeOfString:@"[p79]"];
    if (range.length > 0) {
        string = [string stringByReplacingOccurrencesOfString:@"[p79]" withString:@"[挥手]"];
    }
    
    range = [string rangeOfString:@"[p80]"];
    if (range.length > 0) {
        string = [string stringByReplacingOccurrencesOfString:@"[p80]" withString:@"[闪电]"];
    }
    
    range = [string rangeOfString:@"[p81]"];
    if (range.length > 0) {
        string = [string stringByReplacingOccurrencesOfString:@"[p81]" withString:@"[饥饿]"];
    }
    
    range = [string rangeOfString:@"[p82]"];
    if (range.length > 0) {
        string = [string stringByReplacingOccurrencesOfString:@"[p82]" withString:@"[困]"];
    }
    
    range = [string rangeOfString:@"[p83]"];
    if (range.length > 0) {
        string = [string stringByReplacingOccurrencesOfString:@"[p83]" withString:@"[咒骂]"];
    }
    
    range = [string rangeOfString:@"[p84]"];
    if (range.length > 0) {
        string = [string stringByReplacingOccurrencesOfString:@"[p84]" withString:@"[折磨]"];
    }
    
    range = [string rangeOfString:@"[p85]"];
    if (range.length > 0) {
        string = [string stringByReplacingOccurrencesOfString:@"[p85]" withString:@"[抠鼻]"];
    }
    
    range = [string rangeOfString:@"[p86]"];
    if (range.length > 0) {
        string = [string stringByReplacingOccurrencesOfString:@"[p86]" withString:@"[鼓掌]"];
    }
    
    range = [string rangeOfString:@"[p87]"];
    if (range.length > 0) {
        string = [string stringByReplacingOccurrencesOfString:@"[p87]" withString:@"[糗大了]"];
    }
    
    range = [string rangeOfString:@"[p88]"];
    if (range.length > 0) {
        string = [string stringByReplacingOccurrencesOfString:@"[p88]" withString:@"[左哼哼]"];
    }
    
    range = [string rangeOfString:@"[p88]"];
    if (range.length > 0) {
        string = [string stringByReplacingOccurrencesOfString:@"[p88]" withString:@"[左哼哼]"];
    }
    
    range = [string rangeOfString:@"[p89]"];
    if (range.length > 0) {
        string = [string stringByReplacingOccurrencesOfString:@"[p89]" withString:@"[哈欠]"];
    }
    
    range = [string rangeOfString:@"[p90]"];
    if (range.length > 0) {
        string = [string stringByReplacingOccurrencesOfString:@"[p90]" withString:@"[快哭了]"];
    }
    
    range = [string rangeOfString:@"[p91]"];
    if (range.length > 0) {
        string = [string stringByReplacingOccurrencesOfString:@"[p91]" withString:@"[吓]"];
    }
    
    range = [string rangeOfString:@"[p92]"];
    if (range.length > 0) {
        string = [string stringByReplacingOccurrencesOfString:@"[p92]" withString:@"[篮球]"];
    }
    
    range = [string rangeOfString:@"[p93]"];
    if (range.length > 0) {
        string = [string stringByReplacingOccurrencesOfString:@"[p93]" withString:@"[乒乓球]"];
    }
    
    range = [string rangeOfString:@"[p94]"];
    if (range.length > 0) {
        string = [string stringByReplacingOccurrencesOfString:@"[p94]" withString:@"[NO]"];
    }
    
    range = [string rangeOfString:@"[p95]"];
    if (range.length > 0) {
        string = [string stringByReplacingOccurrencesOfString:@"[p95]" withString:@"[跳跳]"];
    }
    
    range = [string rangeOfString:@"[p96]"];
    if (range.length > 0) {
        string = [string stringByReplacingOccurrencesOfString:@"[p96]" withString:@"[怄火]"];
    }
    
    range = [string rangeOfString:@"[p97]"];
    if (range.length > 0) {
        string = [string stringByReplacingOccurrencesOfString:@"[p97]" withString:@"[转圈]"];
    }
    
    range = [string rangeOfString:@"[p98]"];
    if (range.length > 0) {
        string = [string stringByReplacingOccurrencesOfString:@"[p98]" withString:@"[磕头]"];
    }
    
    range = [string rangeOfString:@"[p99]"];
    if (range.length > 0) {
        string = [string stringByReplacingOccurrencesOfString:@"[p99]" withString:@"[回头]"];
    }
    
    range = [string rangeOfString:@"[p100]"];
    if (range.length > 0) {
        string = [string stringByReplacingOccurrencesOfString:@"[p100]" withString:@"[跳绳]"];
    }
    
    range = [string rangeOfString:@"[p101]"];
    if (range.length > 0) {
        string = [string stringByReplacingOccurrencesOfString:@"[p101]" withString:@"[激动]"];
    }
    
    range = [string rangeOfString:@"[p102]"];
    if (range.length > 0) {
        string = [string stringByReplacingOccurrencesOfString:@"[p102]" withString:@"[街舞]"];
    }
    
    range = [string rangeOfString:@"[p103]"];
    if (range.length > 0) {
        string = [string stringByReplacingOccurrencesOfString:@"[p103]" withString:@"[献吻]"];
    }
    
    range = [string rangeOfString:@"[p109]"];
    if (range.length > 0) {
        string = [string stringByReplacingOccurrencesOfString:@"[p109]" withString:@"[左太极]"];
    }
    
    range = [string rangeOfString:@"[p105]"];
    if (range.length > 0) {
        string = [string stringByReplacingOccurrencesOfString:@"[p105]" withString:@"[右太极]"];
    }
    
    range = [string rangeOfString:@"[p106]"];
    if (range.length > 0) {
        string = [string stringByReplacingOccurrencesOfString:@"[p106]" withString:@"[闭嘴]"];
    }
    return string;
}

@end
