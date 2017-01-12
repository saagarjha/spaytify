//
//  SpaytifyPlugin.m
//  Spaytify
//
//  Created by Matt Green on 12/2/14.
//  Copyright (c) 2014 Matt Green. All rights reserved.
//

#import "SpaytifyPlugin.h"
#import <Cocoa/Cocoa.h>

#include <objc/runtime.h>

@implementation SpaytifyPlugin

+ (void) load
{
  [NSApp.dockTile setBadgeLabel:nil];
  
  replaceMethod([NSApplication class],
                @selector(requestUserAttention:),
                (IMP)dummyRequestUserAttention);

  replaceMethod([NSDockTile class],
                @selector(setBadgeLabel:),
                (IMP)dummySetBadgeLabel);

  NSLog(@"Spaytify installed");
}

void replaceMethod(Class cls, SEL selector, IMP impl)
{
  Method method = class_getInstanceMethod(cls, selector);
  const char* encoding = method_getTypeEncoding(method);

  class_replaceMethod(cls, selector, impl, encoding);
}

NSInteger dummyRequestUserAttention(id self, SEL _cmd, NSRequestUserAttentionType _type)
{
  return 0;
}

void dummySetBadgeLabel(id self, SEL _cmd, NSString* label)
{
}

@end
