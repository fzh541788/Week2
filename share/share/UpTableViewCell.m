//
//  UpTableViewCell.m
//  share
//
//  Created by young_jerry on 2020/7/26.
//  Copyright © 2020 young_jerry. All rights reserved.
//

#import "UpTableViewCell.h"

@implementation UpTableViewCell

- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier {
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    
    self.nameLabel = [[UILabel alloc] init];
    [self.contentView addSubview:_nameLabel];
    
    self.writerLabel = [[UILabel alloc] init];
    [self.contentView addSubview:_writerLabel];
    
    self.contentLabel = [[UILabel alloc] init];
    [self.contentView addSubview:_contentLabel];
    
    self.timeLabel = [[UILabel alloc] init];
    [self.contentView addSubview:_timeLabel];
    
    self.zanLabel = [[UILabel alloc] init];
    [self.contentView addSubview:_zanLabel];
    
    self.yanLabel = [[UILabel alloc] init];
    [self.contentView addSubview:_yanLabel];
    
    self.lineLabel = [[UILabel alloc] init];
    [self.contentView addSubview:_lineLabel];
    
    self.showImageView = [[UIImageView alloc] init];
    [self.contentView addSubview:_showImageView];
    
    self.zanImageView = [[UIImageView alloc] init];
    [self.contentView addSubview:_zanImageView];
    
    self.yanImageView = [[UIImageView alloc] init];
    [self.contentView addSubview:_yanImageView];
    
    self.lineImageView = [[UIImageView alloc] init];
    [self.contentView addSubview:_lineImageView];
    
    return self;
}

-(void) layoutSubviews {
    [super layoutSubviews];
    
    _nameLabel.frame = CGRectMake(220, 0, 180, 60);
    _nameLabel.font = [UIFont systemFontOfSize:18];
    _nameLabel.numberOfLines = 0;
    
    _zanLabel.frame = CGRectMake(246, 110, 30, 20);
    _zanLabel.font = [UIFont systemFontOfSize:12];
    _zanLabel.textColor = [UIColor colorWithRed:0.05 green:0.4 blue:0.74 alpha:1.0];
    _zanLabel.text = @"99";
    
    _yanLabel.frame = CGRectMake(303, 110, 30, 20);
    _yanLabel.font = [UIFont systemFontOfSize:12];
    _yanLabel.textColor = [UIColor colorWithRed:0.05 green:0.4 blue:0.74 alpha:1.0];
    _yanLabel.text = @"44";
    
    _lineLabel.frame = CGRectMake(363, 110, 30, 20);
    _lineLabel.font = [UIFont systemFontOfSize:12];
    _lineLabel.textColor = [UIColor colorWithRed:0.05 green:0.4 blue:0.74 alpha:1.0];
    _lineLabel.text = @"5";
    
    _showImageView.frame = CGRectMake(0, 0, 200, 140);
    
    _zanImageView.frame = CGRectMake(220, 110, 20, 15);
    _zanImageView.image = [UIImage imageNamed:@"button_zan.png"];
    
    _yanImageView.frame = CGRectMake(280, 110, 20, 15);
    _yanImageView.image = [UIImage imageNamed:@"button_guanzhu.png"];
    
    _lineImageView.frame = CGRectMake(340, 110, 20, 15);
    _lineImageView.image = [UIImage imageNamed:@"button_share.png"];
    
    _writerLabel.frame = CGRectMake(220, 53, 100, 20);
    _writerLabel.font = [UIFont systemFontOfSize:15];
    
    _contentLabel.frame = CGRectMake(220, 63, 200, 15);
    _contentLabel.font = [UIFont systemFontOfSize:15];
    
    _timeLabel.frame = CGRectMake(220, 75, 200, 15);
    _timeLabel.font = [UIFont systemFontOfSize:14];
    
    
}


- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}


@end
