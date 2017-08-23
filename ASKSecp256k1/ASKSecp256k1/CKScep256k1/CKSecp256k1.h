//
//  CKScep256k1.h
//  CKScep256k1
//
//  Created by 仇弘扬 on 2017/8/17.
//  Copyright © 2017年 askcoin. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface CKSecp256k1 : NSObject
+ (NSData *)generatePublicKeyWithPrivateKey:(NSData *)privateKeyData compression:(BOOL)isCompression;
+ (NSData *)compactSignData:(NSData *)msgData withPrivateKey:(NSData *)privateKeyData;
+ (NSInteger)verifySignedData:(NSData *)sigData withMessageData:(NSData *)msgData usePublickKey:(NSData *)pubKeyData;
@end
