//
//  ViewController.m
//  QuoteGen
//
//  Created by 田中 佑太郎 on 2013/10/29.
//  Copyright (c) 2013年 Yutaro Tanaka. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    // Add array of personal quotes
    // self : 現在のクラス
    // @'' : Ob-C のString
    self.myQuotes = @[
                      @"Live and let live",
                      @"Don't cry over spilt milk",
                      @"Always look on the bright side of life",
                      @"Nobody's perfect",
                      @"Can't see the woods for the trees",
                      @"Better to have loved and lost then not loved at all",
                      @"The early bird catches the worm",
                      @"As slow as a wet week"
                      ];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
}


- (IBAction)quoteButtonTapped:(id)sender {
    // 配列の中に格納されているアイテム数を取得
    int array_tot = [self.myQuotes count];
    int index = (arc4random() % array_tot);
    NSString *my_quote = self.myQuotes[index];
    self.quoteText.text = [NSString stringWithFormat:@"Quote:nn%@", my_quote];
}

@end
