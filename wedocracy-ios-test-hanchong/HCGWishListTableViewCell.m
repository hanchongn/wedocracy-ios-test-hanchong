//
//  HCGWishListTableViewCell.m
//  wedocracy-ios-test-hanchong
//
//  Created by ZH on 6/20/14.
//  Copyright (c) 2014 HanChong. All rights reserved.
//

#import "HCGWishListTableViewCell.h"

@interface HCGWishListTableViewCell ()

@property (weak, nonatomic) IBOutlet UIImageView *photoView;
@property (weak, nonatomic) IBOutlet UILabel *titleLabel;
@property (weak, nonatomic) IBOutlet UILabel *notesLabel;
@property (weak, nonatomic) IBOutlet UILabel *createdDateLabel;


@end

@implementation HCGWishListTableViewCell

- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        // Initialization code
    }
    return self;
}

- (void)awakeFromNib
{
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated
{
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
