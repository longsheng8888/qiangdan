#import <Preferences/PSListController.h>

@interface GrabPrefsRootListController : PSListController
@end

@implementation GrabPrefsRootListController

- (id)specifiers {
    if (_specifiers == nil) {
        _specifiers = [self loadSpecifiersFromPlistName:@"Root" target:self];
    }
    return _specifiers;
}

- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
    self.navigationItem.rightBarButtonItem = [[UIBarButtonItem alloc] initWithTitle:@"保存" style:UIBarButtonItemStyleDone target:self action:@selector(saveSettings)];
}

- (void)saveSettings {
    // 这里让系统自动处理保存逻辑
    [self.view endEditing:YES];
    [super suspend];
    [self.navigationController popViewControllerAnimated:YES];
}

@end
