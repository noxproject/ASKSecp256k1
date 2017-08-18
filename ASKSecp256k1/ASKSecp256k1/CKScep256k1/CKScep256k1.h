//
//  CKScep256k1.h
//  CKScep256k1
//
//  Created by 仇弘扬 on 2017/8/17.
//  Copyright © 2017年 askcoin. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface CKScep256k1 : NSObject
+ (NSData *)generatePublicKeyWithPrivateKey:(NSData *)privateKeyData compression:(BOOL)isCompression;
@end
