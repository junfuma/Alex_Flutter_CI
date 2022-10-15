//
//  Flutter______cocoapods__UITestsLaunchTests.m
//  Flutter_混合工程_cocoapods引入UITests
//
//  Created by 竹蜻蜓 on 2022/10/15.
//

#import <XCTest/XCTest.h>

@interface Flutter______cocoapods__UITestsLaunchTests : XCTestCase

@end

@implementation Flutter______cocoapods__UITestsLaunchTests

+ (BOOL)runsForEachTargetApplicationUIConfiguration {
    return YES;
}

- (void)setUp {
    self.continueAfterFailure = NO;
}

- (void)testLaunch {
    XCUIApplication *app = [[XCUIApplication alloc] init];
    [app launch];

    // Insert steps here to perform after app launch but before taking a screenshot,
    // such as logging into a test account or navigating somewhere in the app

    XCTAttachment *attachment = [XCTAttachment attachmentWithScreenshot:XCUIScreen.mainScreen.screenshot];
    attachment.name = @"Launch Screen";
    attachment.lifetime = XCTAttachmentLifetimeKeepAlways;
    [self addAttachment:attachment];
}

@end
