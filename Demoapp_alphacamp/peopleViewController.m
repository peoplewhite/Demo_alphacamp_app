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
    NSArray *arrTeacher;
    NSArray *arrGoodStudents;
    NSArray *arr; //最後的集合
    
    NSDictionary *people_Bernard;
    NSDictionary *people_ihower;
    NSDictionary *people_Ariel;
    NSDictionary *people_Tim;
    NSDictionary *people_Evelyn;
    NSDictionary *people_Benson;
    
    NSDictionary *people_Edward;
    NSDictionary *people_Brian;
    NSDictionary *people_Shyne;
    NSDictionary *people_Amos;
    NSDictionary *people_Peter;
    
    
    NSDictionary *people_Anthony;
    NSDictionary *people_Abby;
    NSDictionary *people_Reinhardt;
    NSDictionary *people_Amos_Chen;
    NSDictionary *people_Winnie;
    NSDictionary *people_David;
    NSDictionary *people_A_Ga;
    
    int changeNum;
    int groupNum;
    
}

@end

@implementation peopleViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    changeNum = 0;
    groupNum = 0;
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
    
    
    people_Edward = @{@"Name" : @"Edward Chiang",
                       @"Photo" : [UIImage imageNamed:@"photo_Edward_Chiang"],
                       @"Description" : @"App開發顧問，日傑資訊負責人，前愛料理App開發隊長，寫過LovingHeart for iOS，for Android，愛料理 for iPhone，愛料理 for iPad，Mr.Plurk for iOS等知名五星等級App。"};
    people_Brian = @{@"Name" : @"Brian Fang",
                       @"Photo" : [UIImage imageNamed:@"photo_Brian_Fang"],
                       @"Description" : @"FUNTEK軟體架構師，5945呼叫師傅共同創辦人，前CyberLink資深工程師。作品Picaca獲選爲Apple featured app (2013/08)，暢銷書「iPhone SDK 3 Programming應用程式開發」作者。"};
    people_Shyne = @{@"Name" : @"Shyne Tseng",
                       @"Photo" : [UIImage imageNamed:@"photo_Shyne_Tseng"],
                       @"Description" : @"GetProperly共同創辦人，台大資管MBA，Stanford大學電腦科學碩士，旅居矽谷，愛好旅行，美食和科技。"};
    people_Amos = @{@"Name" : @"Amos Lee",
                       @"Photo" : [UIImage imageNamed:@"photo_Amos_Lee"],
                       @"Description" : @"天橋科技視覺設計總監，資策會講師，資深前端設計師，致力於CSS技術研究與教學。"};
    people_Peter = @{@"Name" : @"Peter Pan",
                       @"Photo" : [UIImage imageNamed:@"photo_Peter_Pan"],
                       @"Description" : @"暢銷書App程式設計入門 - iPhone，iPad作者，MacTodayApp開發專欄作家，FUNTEK首席iOS App工程師，點點數位iOS App顧問，PChome Mac基礎教室專欄作家，開發Wealthy，LOCOMO運動記錄等知名App。"};
    
    arrTeacher = @[people_ihower,
                   people_Edward,
                   people_Brian,
                   people_Shyne,
                   people_Amos,
                   people_Peter];
    
    
    people_Anthony = @{@"Name" : @"Anthony Liu",
                       @"Photo" : [UIImage imageNamed:@"photo_Anthony_Liu"],
                       @"Description" : @"伊利諾大學香檳分校物理系，退伍後放棄到美國唸研究所的機會，專心投注於自己開發的通訊輔助app，希望透過ALPHA Camp認識更多有志創業的夥伴，激盪彼此的想法，並學習數位行銷爲未來的創業之路做準備。"};
    people_Abby = @{@"Name" : @"Abby Hsu",
                       @"Photo" : [UIImage imageNamed:@"photo_Abby_Hsu"],
                       @"Description" : @"渴望突破體制內教育的大三生，在自我探索的過程中夾雜着迷惘與孤單，靠着網路的學習資源，媒體，各式專業書籍，逐漸理出自己的未來規劃，因此決定報名Bootcamp，希望能藉由課程接觸網路新創的世界，培養數位行銷的專業能力，朝自己的夢想邁進。"};
//    people_Reinhardt = @{@"Name" : @"Reinhardt Lin",
//                       @"Photo" : [UIImage imageNamed:@"photo_reinhardt_Lin"],
//                       @"Description" : @"政大財政系，在Startup圈闖蕩的小朋友，從大四開始自學Web Development，是Rails的初學者，立志稱爲行銷和技術兼備的人才，目前在ALPHA Camp愉快的玩耍中。"};
    people_Amos_Chen = @{@"Name" : @"Amos_Chen",
                       @"Photo" : [UIImage imageNamed:@"photo_Amos_Chen"],
                       @"Description" : @"台大心理系，熱愛戲劇表演與幕後硬體技術，工作之餘與朋友共組戲劇表演，曾演出台北藝穗節。看好網路產業前景，對全端開發有濃厚興趣，希望在ALPHA Camp累積前後端開發的能力，轉型成爲網路系統工程師。"};
    people_Winnie = @{@"Name" : @"Winnie Huang",
                       @"Photo" : [UIImage imageNamed:@"photo_Winnie_Huang"],
                       @"Description" : @"交大經營管理所，在學時期即積極於外商實習與參加行銷競賽，並於德國交換學生一年，不斷找尋人生方向。上份工作爲政府智庫任職研究員，工作一陣子後發現自己仍對行銷情有獨鍾，毅然決定轉換跑道，報名Bootcamp培養數位行銷實戰能力。自ALPHA Camp畢業後，現已加入進駐Appworks的創業團隊擔任行銷專員。"};
    people_David  = @{@"Name" : @"David Wang",
                       @"Photo" : [UIImage imageNamed:@"photo_David_Wang"],
                       @"Description" : @"台大會計系，原本在知名新創公司擔任產品規劃經理，隨着工作經驗增長，深刻體認到持續進修的重要性，在與公司主管充分溝通後，選擇離職到ALPHA Camp學習iOS Development，經過10週的學習，現已成功轉職成爲新創公司的app工程師。"};
    people_A_Ga = @{@"Name" : @"建嘉 龔",
                       @"Photo" : [UIImage imageNamed:@"photo_建嘉"],
                       @"Description" : @"台大獸醫研究所畢業，從台北到南部從事大動物獸醫師的工作，在全台灣各個牧場出診照顧乳牛，但是在傳統的行業當中卻期待能夠擁有新創的思維，開啓一條不一樣的路。來到ALPHA Camp學習一顆靈活的行銷頭腦，期待成爲改變產業的橋樑。"};
    arrGoodStudents = @[
                        people_Anthony,
                        people_Abby,
//                        people_Reinhardt,
                        people_Amos_Chen,
                        people_Winnie,
                        people_David,
                        people_A_Ga
                        ];
    arr = @[
            arrTeamCoreMember,
            arrTeacher,
            arrGoodStudents
            ];
    
    //手勢
    UISwipeGestureRecognizer *swipeLeftGR = [[UISwipeGestureRecognizer alloc] initWithTarget:self action:@selector(swipe2Next)];
    swipeLeftGR.direction = UISwipeGestureRecognizerDirectionLeft;
    swipeLeftGR.delegate = self;
    [self.view addGestureRecognizer:swipeLeftGR];
    
    UISwipeGestureRecognizer *swipeRightGR = [[UISwipeGestureRecognizer alloc] initWithTarget:self action:@selector(swipe2Prev)];
    
    swipeRightGR.direction = UISwipeGestureRecognizerDirectionRight;
    swipeRightGR.delegate = self;
    [self.view addGestureRecognizer:swipeRightGR];
    
    [self showInfo:changeNum withGroup:groupNum];
    
}
- (void)swipe2Next {
    changeNum++;
    if (changeNum == [arrTeamCoreMember count]) {
        changeNum = 0;
    }
    
    [self showInfo:changeNum withGroup:groupNum];
}
- (void)swipe2Prev {
    changeNum--;
    if (changeNum == -1) {
        changeNum = (int)[arrTeamCoreMember count] - 1;
    }
    
    [self showInfo:changeNum withGroup:groupNum];
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
    
    [self showInfo:changeNum withGroup:groupNum];
}
- (IBAction)btnPrev {
    changeNum--;
    if (changeNum == -1) {
        changeNum = (int)[arrTeamCoreMember count] - 1;
    }
    
    [self showInfo:changeNum withGroup:groupNum];
}
- (void)showInfo:(int)changeNumber withGroup:(int)groupNumber {
    showPhoto.image = arr[groupNumber][changeNumber][@"Photo"];
    showName.text = arr[groupNumber][changeNumber][@"Name"];
    showDescription.text = arr[groupNumber][changeNumber][@"Description"];
}

- (IBAction)switchGroup {
    
//    switch (segmentControl.selectedSegmentIndex) {
//        case 0:
//            groupNum = 0;
//            break;
//        case 1:
//            groupNum = 1;
//            break;
//        case 2:
//            groupNum = 2;
//            break;
//    }
    groupNum = (int)segmentControl.selectedSegmentIndex;
    changeNum = 0;
    [self showInfo:changeNum withGroup:groupNum];
}
- (IBAction)btnLogout:(id)sender {
    NSLog(@"hi");
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
