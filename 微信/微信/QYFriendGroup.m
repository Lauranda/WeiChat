//
//  QYFriendGroup.m
//  03-QQ好友
//
//  Created by 青云-wjl on 15/9/16.
//  Copyright (c) 2015年 河南青云信息技术有限公司. All rights reserved.
//

#import "QYFriendGroup.h"
#import "QYFirend.h"
@implementation QYFriendGroup
- (instancetype)initWithDictionary:(NSDictionary *)dict
{
    if (self = [super init]) {
        //灌入法
        [self setValuesForKeysWithDictionary:dict];
        
        NSMutableArray *friends = [NSMutableArray array];
        //遍历数组friends中的数据    字典转模型
        for (NSDictionary *friendDict in _friends) {
            QYFirend *friend = [QYFirend friendWithDictionary:friendDict];
            [friends addObject:friend];
        }
        _friends = friends;
        _isOpen = NO;
    }
    return self;
}
+ (instancetype)friendGroupWithDictionary:(NSDictionary *)dict
{
    return [[self alloc] initWithDictionary:dict];
}
@end
