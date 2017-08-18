//
//  ViewController.m
//  ASKSecp256k1
//
//  Created by 仇弘扬 on 2017/8/18.
//  Copyright © 2017年 askcoin. All rights reserved.
//

#import "ViewController.h"
#import "CKScep256k1.h"
#import "NSData+HexString.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
	[super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
	NSData *pubkey = [CKScep256k1 generatePublicKeyWithPrivateKey:[NSData hexStringToData:@"17e460ac05ed4822d42511685487036503f1444053d7d00a1120fa3a329c99c3"] compression:YES];
	NSLog(@"%@", pubkey);
}


- (void)didReceiveMemoryWarning {
	[super didReceiveMemoryWarning];
	// Dispose of any resources that can be recreated.
}


@end
