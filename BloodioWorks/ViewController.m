//
//  ViewController.m
//  BloodioWorks
//
//  Created by Mick Sexton on 5/12/18.
//  Copyright © 2018 Mick Sexton. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    NSURL *SoundURL = [NSURL fileURLWithPath:[[NSBundle mainBundle] pathForResource:@"Story Booth Audio _FNL" ofType:@"mp3"]];
    AudioServicesCreateSystemSoundID((__bridge CFURLRef)SoundURL, &SoundID);
    avSound = [[AVAudioPlayer alloc] initWithContentsOfURL:SoundURL error:nil];
    [avSound setDelegate:self];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (IBAction)PlayAudio:(id)sender {
    AudioServicesPlaySystemSound(SoundID);
    if ([avSound isPlaying]) {
        // [avSound stop];
    } else {
        [avSound play];
    }
}

- (IBAction)PauseAudio:(id)sender {
    AudioServicesPlaySystemSound(SoundID);
    if ([avSound isPlaying]) {
        [avSound stop];
    } else {
        // already paused or not playing
    }
}

- (IBAction)RestartAudio:(id)sender {
    AudioServicesPlaySystemSound(SoundID);
    avSound.currentTime=0;
    [avSound play];
    
}
@end
