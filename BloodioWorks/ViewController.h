//
//  ViewController.h
//  BloodioWorks
//
//  Created by Mick Sexton on 5/12/18.
//  Copyright © 2018 Mick Sexton. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <AVFoundation/AVFoundation.h>

@interface ViewController : UIViewController {
    AVAudioPlayer *avSound;
    SystemSoundID SoundID;
}

- (IBAction)PlayAudio:(id)sender;
- (IBAction)PauseAudio:(id)sender;
- (IBAction)RestartAudio:(id)sender;

@end

