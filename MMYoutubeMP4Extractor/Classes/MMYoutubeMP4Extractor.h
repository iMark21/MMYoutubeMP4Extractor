//
//  MMYoutubeManager.h
//  MMVideo360
//
//  Created by Juan Miguel Marques Morilla on 4/5/16.
//  Copyright © 2016 Juan Miguel Marques Morilla. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface MMYoutubeMP4Extractor : NSObject

+(instancetype)sharedInstance;

- (void)mp4UrlForYouTubeIdFromUrl:(NSString *) url completionBlock:(void (^)(NSURL *mp4Url, NSError *error)) block ;


@end
