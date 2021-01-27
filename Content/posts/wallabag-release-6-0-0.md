---
date: 2021-01-27 21:00
description: The new version of wallabag ios has been released
tags: wallabag
---
# wallabag release 6.0.0

After several months on other personal project, it was time for me to work again on the ios version of wallabag.
This version with a major tag includes only a few new visible functionality. 

[https://github.com/wallabag/ios-app/compare/5.2.4...6.0.0](https://github.com/wallabag/ios-app/compare/5.2.4...6.0.0)

Many commit by weblate and "build", I think I could do better on this side to make the git more readable.

## Feature
It incorporates new translation based on the work of the community. You can participate [here](https://hosted.weblate.org/engage/wallabag/en/)!


Text-to-speech is back! with a new small player.

Entry menu is reworked and better integration for the light/dark ui.

Add confirmation on delete entry (requested by jrabensc)

Fix some align in main menu using the new label system (spotted by jrabensc)

## Fix
Memory leak in list...[(small line, huge!)](https://github.com/wallabag/ios-app/commit/6ee48f3c056f58bc5ac6d9ff5a4f1e4a3882faab)

Hack the srcset for image.

Changed the font size selector for smaller steps.


## The tree that hides the forest

There is a lot of change in the code. Migrate code to SwiftUI 2.

The code no longer uses the old boot system, everything is migrated to @main (the new app lifecycle).

AnyView (tweak with SwiftUI 1 and not required with SwiftUI 2) is removed from the "custom router" We can hope for better performance.


## What next ?
I think I'll be working now to transform the project back to the code base multiplatform. It's a huge step to take ... but the result will be an iPhone, iPad, and MacOs Application!

The base is there, it is stable. It still lacks features, annotation, better tag support, deeper search.

I also dream of integrating the tag suggestion thanks to machine learning based on your articles (This is possible while respecting privacy thanks to the ML build on your iPhone, you can not imagine how powerful your iPhone is !!! )
