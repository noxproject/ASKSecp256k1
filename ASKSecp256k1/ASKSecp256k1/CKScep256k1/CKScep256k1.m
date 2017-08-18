//
//  CKScep256k1.m
//  CKScep256k1
//
//  Created by 仇弘扬 on 2017/8/17.
//  Copyright © 2017年 askcoin. All rights reserved.
//

#import "CKScep256k1.h"
#import "secp256k1.h"
#import "NSData+HexString.h"

@implementation CKScep256k1
+ (NSData *)generatePublicKeyWithPrivateKey:(NSData *)privateKeyData compression:(BOOL)isCompression
{
	secp256k1_context_t *context = secp256k1_context_create(SECP256K1_CONTEXT_SIGN);
	
	const unsigned char *prvKey = (const unsigned char *)privateKeyData.bytes;
	int size = isCompression ? 33 : 65;
	unsigned char *pubkey = malloc(size);
	
	int result = secp256k1_ec_pubkey_create(context, pubkey, &size, prvKey, isCompression);
	
	if (result != 1) {
		return nil;
	}
	
	NSMutableData *data = [NSMutableData dataWithBytes:pubkey length:size];
	
	return data;
}
@end
