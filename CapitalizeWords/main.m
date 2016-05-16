//
//  main.m
//  CapitalizeWords


#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
  
        NSString *line = @"javaScript language";
        
        NSArray *wordsArray = [line componentsSeparatedByString: @" "];
        
        NSMutableString *solutionString = [[NSMutableString alloc]init];
        
        for (NSString *word in wordsArray) {
            NSInteger i = 0;
            for (i = 0; i< word.length; i++) {
                NSString *letterOrSpace = [NSString stringWithFormat:@"%c", [word characterAtIndex:i]];
                NSLog(@"%c", [word characterAtIndex:i]);
                if (i == 0) {
                    [solutionString appendString:[letterOrSpace uppercaseString]];
                }
                else {
                    [solutionString appendString:letterOrSpace];
                }
            }
            NSString *spaceString = @" ";
            [solutionString appendString:spaceString];
        }
        NSRange lastSpaceRange = NSMakeRange(solutionString.length - 1, 1);
        [solutionString deleteCharactersInRange:lastSpaceRange];
        NSLog(@"\nsolutionString: %@\n\n", solutionString);
    }
    return 0;
}
