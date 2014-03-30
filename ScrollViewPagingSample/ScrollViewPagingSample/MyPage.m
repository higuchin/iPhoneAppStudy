//
//  MyPage.m
//  ScrollViewPagingSample
//
//  Created by yasuyuki on 2014/03/30.
//  Copyright (c) 2014年 yasuyuki. All rights reserved.
//

#import "MyPage.h"

@implementation MyPage

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
    }
    return self;
}

- (id) initWithImageName:(NSString *)imageName frame:(CGRect)frame caption:(NSString *)caption
{
    self = [self initWithFrame:frame];
    
    int labelH = 25;
    CGRect imageFrame = CGRectMake(0, 0, frame.size.width, frame.size.width - labelH);
    UIImageView *imageView = [[UIImageView alloc]initWithFrame:imageFrame];
    imageView.image = [UIImage imageNamed:imageName];
    imageView.contentMode = UIViewContentModeScaleAspectFill;
    
    UILabel *label = [[UILabel alloc]init];
    label.text = caption;
    label.frame = CGRectMake(0, frame.size.height - labelH, frame.size.width, labelH);
    label.textAlignment = NSTextAlignmentCenter;
    label.font = [UIFont systemFontOfSize:14];
    
    [self addSubview:imageView];
    [self addSubview:label];
    
    return self;
}

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect
{
    // Drawing code
}
*/

@end
