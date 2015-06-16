//
//  peopleViewController.m
//  Demoapp_alphacamp
//
//  Created by Po-Hao Cheng on 2015/6/16.
//  Copyright (c) 2015年 phc. All rights reserved.
//

#import "peopleViewController.h"

@interface peopleViewController ()
{
    NSDictionary *dictTeamCoreMember;
    NSDictionary *dictTeacher;
    NSDictionary *dictGoodStudents;
    
    NSArray *arrTeamCoreMember;
//    NSDictionary *dictTeacher;
//    NSDictionary *dictGoodStudents;
    
    NSDictionary *people_Bernard;
    NSDictionary *people_ihower;
    NSDictionary *people_Ariel;
    NSDictionary *people_Tim;
    NSDictionary *people_Evelyn;
    NSDictionary *people_Benson;
    
    int changeNum;
}

@end

@implementation peopleViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    changeNum = 0;
    people_Bernard = @{@"Name" : @"Bernard Chan",
                       @"Photo" : [UIImage imageNamed:@"photo_Bernard"],
                       @"Description" : @"TMI 駐場創業家，曾任Yahoo！亞太區廣告業務總監。出生香港，麻省理工學院 Sloan商學院 MBA 畢業，芝加哥 Ruby on Rails課程研習，在美國，北京，香港有多次Startup經驗。"};
    people_ihower = @{@"Name" : @"iHower Chang",
                       @"Photo" : [UIImage imageNamed:@"photo_ihower"],
                      @"Description" : @"Ruby on Rails 實戰聖經作者，前 Faria Systems CTO，多次COSCUP，OSDC.TW，台灣與中國RubyConf，日本RubyKaigi大會講者。"};
    people_Ariel = @{@"Name" : @"Ariel Chen",
                       @"Photo" : [UIImage imageNamed:@"photo_Ariel"],
                       @"Description" : @"政大哲學系，中正心理所畢業。在中國大陸闖蕩三年。認爲教育就是從人出發的一種用心交流，希望回歸教育，凝聚最真摯的正向能量，協助講師找到最可發揮的舞台，培育學員找到新的方向。"};
    people_Tim = @{@"Name" : @"Tim Du",
                       @"Photo" : [UIImage imageNamed:@"photo_Tim"],
                       @"Description" : @"清大物理系唸完換台大國企所，熱愛棒球，喜歡喝咖啡，看星星，挑戰新事物，就算買不起Google Glass也要想辦法跟別人借來玩一玩。喜歡的一句話是：「人生就像騎腳踏車，爲了保持平衡，必須不斷前進。」"};
    people_Evelyn = @{@"Name" : @"Evelyn Chang",
                       @"Photo" : [UIImage imageNamed:@"photo_Evelyn"],
                       @"Description" : @"卡內基美隆大學藝術管理碩士，從戲劇，藝術管理到數位行銷，不變的是對這個世界的好奇心與對生活的熱情。熱愛行銷與學習，持續關注創業，社群與網路發展。努力讓更多人知道ALPHA Camp的好，希望這世界因爲自己的存在而美好一點點。"};
    people_Benson = @{@"Name" : @"Benson Sun",
                       @"Photo" : [UIImage imageNamed:@"photo_Benson"],
                       @"Description" : @"政大財政系，在Startup圈闖蕩的小朋友，從大四開始自學Web Development，是Rails的初學者，立志稱爲行銷和技術兼備的人才，目前在ALPHA Camp愉快的玩耍中。"};
    
    arrTeamCoreMember = @[people_Bernard,
                          people_ihower,
                          people_Ariel,
                          people_Tim,
                          people_Evelyn,
                          people_Benson];
    
    showPhoto.image = arrTeamCoreMember[0][@"Photo"];
    showName.text = arrTeamCoreMember[0][@"Name"];
    showDescription.text = arrTeamCoreMember[0][@"Description"];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)btnNext {
    changeNum++;
    if (changeNum == [arrTeamCoreMember count]) {
        changeNum = 0;
    }
    
    showPhoto.image = arrTeamCoreMember[changeNum][@"Photo"];
    showName.text = arrTeamCoreMember[changeNum][@"Name"];
    showDescription.text = arrTeamCoreMember[changeNum][@"Description"];
}
- (IBAction)btnPrev {
    changeNum--;
    if (changeNum == -1) {
        changeNum = [arrTeamCoreMember count] - 1;
    }
    
    showPhoto.image = arrTeamCoreMember[changeNum][@"Photo"];
    showName.text = arrTeamCoreMember[changeNum][@"Name"];
    showDescription.text = arrTeamCoreMember[changeNum][@"Description"];
}
/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
