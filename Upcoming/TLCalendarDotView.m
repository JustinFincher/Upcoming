//
//  TLCalendarDotView.m
//  Upcoming
//
//  Created by Ash Furrow on 2013-04-30.
//  Copyright (c) 2013 Teehan+Lax. All rights reserved.
//

#import "TLCalendarDotView.h"

@implementation TLCalendarDotView

-(void)awakeFromNib {
    [super awakeFromNib];
    
    self.layer.masksToBounds = YES;
    self.layer.cornerRadius = lrint(CGRectGetWidth(self.bounds) / 2.0f);
}

-(id)initWithFrame:(CGRect)frame {
    if (!(self = [super initWithFrame:frame])) return nil;
    
    
    self.layer.masksToBounds = YES;
    self.layer.cornerRadius = lrint(CGRectGetWidth(self.bounds) / 2.0f);
    
    return self;
}

-(void)setDotColor:(UIColor *)dotColor {
    _dotColor = dotColor;
    
    self.backgroundColor = dotColor;
}

-(void)setBackgroundColor:(UIColor *)backgroundColor {
    // This looks funny, but basically we only want to display our dotColor as a background colour.
    // UITableViewCell will try and set this to nil when its selected, so we need this method. 
    [super setBackgroundColor:_dotColor];
}

@end
