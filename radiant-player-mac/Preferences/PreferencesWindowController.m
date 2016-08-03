/*
 * PreferencesWindowController.m
 *
 * Created by Sajid Anwar.
 *
 * Subject to terms and conditions in LICENSE.md.
 *
 */

#import "PreferencesWindowController.h"

@implementation PreferencesWindowController

@synthesize generalController;
@synthesize appearanceController;
@synthesize lastFmController;
@synthesize navigationController;
@synthesize privacyController;
@synthesize advancedController;

- (id)init
{
    self = [self initWithViewControllers:[NSMutableArray array] title:@"Preferences"];
    
    if (self) {
        [[NSBundle mainBundle] loadNibNamed:NSStringFromClass([PreferencesWindowController class]) owner:self topLevelObjects:nil];
        [self loadControllers];
    }
    
    return self;
}

- (void)loadControllers
{
    [self addViewController:generalController];
    [self addViewController:appearanceController];
    [self addViewController:navigationController];
    [self addViewController:privacyController];
    [self addViewController:lastFmController];
    [self addViewController:advancedController];
}

- (void)showWindow:(id)sender
{
    // Activate the app in case it is hidden.
    [NSApp activateIgnoringOtherApps:YES];
    [super showWindow:sender];
}

@end
