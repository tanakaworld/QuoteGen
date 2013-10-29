//
//  ViewController.h
//  QuoteGen
//
//  Created by 田中 佑太郎 on 2013/10/29.
//  Copyright (c) 2013年 Yutaro Tanaka. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

// プロパティ属性の定義
// nonatomic : スレッドセーフでない（getter,setterが複数のスレッドで同時実行されるかもしれないメソッド定義）
// strong : 強い参照を持つ属性（参照しているオブジェクトが消去されないように活かし続けたい）
// NSArrayクラスへのポインタ（データリストを格納）
@property (nonatomic, strong) NSArray *myQuotes;


// NSMutableArray : 作成した後の変更が可能、いつでも追加削除ができる
@property (nonatomic, strong) NSMutableArray *moviewQuotes;


// IBOutlet : XIBファイルのインタフェース上の部品とオブジェクトであるquoteTextを関連づけるキーワード
@property (nonatomic, strong) IBOutlet UITextView *quoteText;
// クラスに実装するメソッドの定義
// メソッド定義の印｜返り値の型｜メソッド名｜引数タイプ｜引数の名前
- (IBAction)quoteButtonTapped:(id)sender;


@end
