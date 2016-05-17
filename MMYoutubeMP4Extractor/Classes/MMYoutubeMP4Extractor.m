//
//  MMYoutubeManager.m
//  MMYoutubeManager
//
//  Created by Juan Miguel Marques Morilla on 4/5/16.
//  Copyright © 2016 Juan Miguel Marques Morilla. All rights reserved.
//

#import "MMYoutubeMP4Extractor.h"
#import "RMYouTubeExtractor.h"


@interface MMYoutubeMP4Extractor ()

- (NSString *)extractYoutubeIdFromLink:(NSString *)link;

@end

@implementation MMYoutubeMP4Extractor

+(instancetype)sharedInstance{
    
    static dispatch_once_t once;
    static id sharedInstance;
    
    dispatch_once(&once, ^{
        sharedInstance = [self new];
    });
    
    return sharedInstance;
    
}

 
- (NSString *)extractYoutubeIdFromLink:(NSString *)link {
    
    NSString *regexString = @"((?<=(v|V)/)|(?<=be/)|(?<=(\\?|\\&)v=)|(?<=embed/))([\\w-]++)";
    NSRegularExpression *regExp = [NSRegularExpression regularExpressionWithPattern:regexString
                                                                            options:NSRegularExpressionCaseInsensitive
                                                                              error:nil];
    
    NSArray *array = [regExp matchesInString:link options:0 range:NSMakeRange(0,link.length)];
    if (array.count > 0) {
        NSTextCheckingResult *result = array.firstObject;
        return [link substringWithRange:result.range];
    }
    return nil;
}

- (void)mp4FromYoutubeURL:(NSString *) url completionBlock:(void (^)(NSURL *mp4Url, NSError *error)) block {
    
    NSMutableArray *mutableArray = [NSMutableArray new];
    
    [[RMYouTubeExtractor sharedInstance] extractVideoForIdentifier:[self extractYoutubeIdFromLink:url] completion:^(NSDictionary *videoDictionary, NSError *error) {
        
        if (!error) {
            
            for (NSString *key in videoDictionary) {
                if (videoDictionary[key] != [NSNull null]) {
                    [mutableArray addObject:@{ @"quality" : key, @"url" : videoDictionary[key] }];
                }
            }
            
            NSDictionary *dictionary = [mutableArray objectAtIndex:1];
            
            block((NSURL*)[dictionary objectForKey:@"url"], nil);
            
        }else{
            
            block(nil, error);
            
        }
        
        
    }];
    
    
}



@end
