---
layout: post
title: "Wikipedia and Apps: A Love Story"
image: /assets/uploads/wikipedia-and-apps-a-love-story/header.png
excerpt: Designing for mobile apps presents unique challenges and opportunities compared to traditional websites. Mobile apps run natively on a device and have access to system resources that are harder to access within a web based architecture.
date: 2021-12-08T07:30:00.585Z
---

_By [Robin Schoenbaechler](https://twitter.com/scblr), [Carolyn Li-Madeo](https://twitter.com/carolynlimadeo), [Sudhanshu Gautam](https://twitter.com/baba786)_ and _[Volker E.](https://twitter.com/Volker_E)_

Designing for mobile apps presents unique challenges and opportunities compared to traditional websites. Mobile apps run natively on a device and have access to system resources that are harder to access within a web based architecture. Key characteristics of apps are:

- Apps are designed to fit with the rest of the operating system. When an app fits in with the rest of the OS, it not only looks and feels more at home, it lowers the users learning curve.
- A deep integration with the OS comes with benefits right out of the box, e.g. accessibility, performance, integration with voice assistants or <a href="https://design.wikimedia.org/blog/2021/04/26/bringing-wikipedia-to-the-homescreen-on-ios.html" target="_blank">home screen widgets</a>.
- Offline capabilities and often reduced data usage: offline capabilities allow users to consume content from anywhere, even when they are not connected to the internet or connectivity is low.

<br>
Wikimedia Foundation's apps are an essential piece to meet our <a href="https://design.wikimedia.org/style-guide/design-principles.html#this-is-for-everyone" target="_blank">“this is for everyone” design principle</a>. Wikimedia apps are designed with the philosophy of <a href="http://mobile-first.abookapart.com/" target="_blank" rel="nofollow">mobile first</a> in mind. One of the core principles of mobile first is to embrace the constraints of a mobile environment and with it, prioritize essential information, as there’s simply not enough room for everything.

Limited connectivity of people in certain areas of the world inspires us to create products that are performant and light on data. When building new features for people using mobile apps, we strive for excellency in user experience and aim to break down complex existing flows and processes.

<div class="columns">
  <figure class="third-width">
    <img src="{{ "/assets/uploads/wikipedia-and-apps-a-love-story/app-android.png" | relative_url }}" alt="Wikipedia app on Android">
    <figcaption>Wikipedia app on Android</figcaption>
  </figure>
  <figure class="third-width">
    <img src="{{ "/assets/uploads/wikipedia-and-apps-a-love-story/app-ios.png" | relative_url }}" alt="Wikipedia app on iOS">
    <figcaption>Wikipedia app on iOS</figcaption>
  </figure>
  <figure class="third-width">
    <img src="{{ "/assets/uploads/wikipedia-and-apps-a-love-story/app-kaios.png" | relative_url }}" alt="Wikipedia app on kaiOS">
    <figcaption>Wikipedia app on kaiOS</figcaption>
  </figure>
</div>


# Strategy

<strong>The apps are here to create mobile first experiences</strong> and are not trying to replace existing desktop or community tools. Through the apps, we aim to meet potential users where they are. We are interested in understanding and addressing barriers of those that have been historically left behind, while not compromising the integrity of the workflows of our long-time users on other platforms. Making participation fit naturally the mobile first lives we live.

<strong>The apps are a place to experiment.</strong> Due to development speed, richer capabilities and unique needs of our user base, we are able to experiment. It is on the apps where we think the future of mobile editing will be discovered. Notably, the apps are where we piloted <a href="https://www.mediawiki.org/wiki/Wikimedia_Apps/Suggested_edits#Welcome_to_Suggested_edits" target="_blank">micro contributions</a>, our most successful editing intervention to this date.

<strong>The apps are a forcing function to make our technologies future proof.</strong> To provide an example: Right now Wikipedia’s web experience works as a website only and cannot be exported to new mediums. By building on the apps, we create technology that is platform independent and enables next generation experiences. Whether these use artificial intelligence, augmented reality or future technology that is changing our world.


# Theming

<figure>
  <img src="{{ "/assets/uploads/wikipedia-and-apps-a-love-story/theming.png" | relative_url }}" alt="Theming.">
</figure>

As mentioned in the introduction, iOS and Android both have platform specific guidelines. When building apps for the global Wikimedia movement, our goal is to create native experiences for the specific platform. When designing for mobile apps, guidelines for the platform sit at the top of the hierarchy. Throughout Wikimedia's product suite, we follow <a href="https://design.wikimedia.org/style-guide/visual-style.html" target="_blank">Wikimedia Design’s visual design principles</a> when providing solutions.

To create a seamless and familiar experience within Wikimedia’s products and services, we apply theming that is based on Wikimedia’s visual style guidelines. Theming allows us to customize the app’s look and feel, to better represent our product’s brand. Theming is reflected in the entire UI, including individual components, like buttons. Here’s an example of applying Material Theming in the Wikipedia Android app:

<div class="columns">
  <figure class="half-width centered">
    <img src="{{ "/assets/uploads/wikipedia-and-apps-a-love-story/material-button.png" | relative_url }}" alt="A standard Material button">
    <figcaption>A standard Material button (<a href="https://material.io/design/material-theming/overview.html#material-theming" target="_blank" rel="nofollow">image source</a>)</figcaption>
  </figure>
  <figure class="half-width centered">
    <img src="{{ "/assets/uploads/wikipedia-and-apps-a-love-story/material-wikipedia-button.png" | relative_url }}" alt="A themed button in the Wikipedia Android app">
    <figcaption>A themed button in the Wikipedia Android app</figcaption>
  </figure>
</div>


<div class="columns">
  <figure class="half-width centered">
    <img src="{{ "/assets/uploads/wikipedia-and-apps-a-love-story/ios-keyboard-messages.png" | relative_url }}" alt="Chat toolbar in iOS messaging">
    <figcaption>Chat toolbar in iOS messaging (<a href="https://developer.apple.com/design/resources/" target="_blank" rel="nofollow">image source</a>)</figcaption>
  </figure>
  <figure class="half-width centered">
    <img src="{{ "/assets/uploads/wikipedia-and-apps-a-love-story/ios-keyboard-wikipedia.png" | relative_url }}" alt="Editing toolbar in the Wikipedia iOS app">
    <figcaption>Editing toolbar in the Wikipedia iOS app</figcaption>
  </figure>
</div>


<div class="columns">
  <figure class="half-width centered">
    <img src="{{ "/assets/uploads/wikipedia-and-apps-a-love-story/kaios-without-theming.png" | relative_url }}" alt="KaiOS standard progress indicator.">
    <figcaption>KaiOS standard progress indicator.</figcaption>
  </figure>
  <figure class="half-width centered">
    <img src="{{ "/assets/uploads/wikipedia-and-apps-a-love-story/kaios-with-theming.png" | relative_url }}" alt="We used a planet animation progress indicator to show the vast amount of knowledge available on Wikipedia.">
    <figcaption>We used a planet animation progress indicator to show the vast amount of knowledge available on Wikipedia.</figcaption>
  </figure>
</div>


The design style guide’s <strong><a href="https://design.wikimedia.org/style-guide/visual-style_colors.html" target="_blank">color palette</a></strong> is also used in the apps. Since both the Android and iOS Wikipedia app is available in four different reading themes (Light, Sepia, Dark and Black), they are using an enhanced color palette for an optimal reading experience. Check out more details about the color palette for <a href="https://www.mediawiki.org/wiki/Wikimedia_Apps/Android_theme_guidelines" target="_blank">Android</a> or <a href="https://diff.wikimedia.org/2017/12/04/ios-app-dark-theme/" target="_blank">iOS</a> here.

<div class="columns">
  <figure class="half-width centered">
    <img src="{{ "/assets/uploads/wikipedia-and-apps-a-love-story/google-fonts.png" | relative_url }}" alt="The Wikipedia Android app uses on Material Icons">
    <figcaption>The Wikipedia Android app uses on <a href="https://fonts.google.com/icons" target="_blank" rel="nofollow">Material Icons</a></figcaption>
  </figure>
  <figure class="half-width centered">
    <img src="{{ "/assets/uploads/wikipedia-and-apps-a-love-story/sf-symbols.png" | relative_url }}" alt="The Wikipedia iOS app uses SF Symbols">
    <figcaption>The Wikipedia iOS app uses <a href="https://developer.apple.com/design/human-interface-guidelines/sf-symbols/overview/" target="_blank" rel="nofollow">SF Symbols</a></figcaption>
  </figure>
</div>

As defined in the <strong><a href="https://design.wikimedia.org/style-guide/visual-style_typography.html" target="_blank">typography</a></strong> section of Wikimedia’s Design Style Guide, the app’s rely on the operating system's default sans-serif typeface. The app’s mostly use <strong><a href="https://design.wikimedia.org/style-guide/visual-style_icons.html" target="_blank">icons</a></strong> provided by the platform, e.g. from <a href="hhttps://material.io/design/iconography" target="_blank">Google Material</a> or <a href="https://developer.apple.com/design/human-interface-guidelines/sf-symbols/overview/" target="_blank" rel="nofollow">Apple Human Interface Guidelines</a>, except for icons that are associated with established Wikimedia products or services (e.g. <a href="https://commons.wikimedia.org/wiki/OOUI_icons#userTalk" target="_blank">Wikipedia’s icon for user talk pages</a>).


# Principles

## Focus

<div class="columns">
  <figure class="third-width">
    <img src="{{ "/assets/uploads/wikipedia-and-apps-a-love-story/focus-android.png" | relative_url }}" alt="The “Picture of the day” on Wikipedia for Android puts content from Wikimedia Commons in the spotlight.">
    <figcaption>The “Picture of the day” on Wikipedia for Android puts content from <a href="https://commons.wikimedia.org/" target="_blank">Wikimedia Commons</a> in the spotlight.</figcaption>
  </figure>
  <figure class="third-width">
    <img src="{{ "/assets/uploads/wikipedia-and-apps-a-love-story/focus-ios.png" | relative_url }}" alt="Wikipedia for iOS focuses on the essential in its homescreen widgets.">
    <figcaption>Wikipedia for iOS focuses on the essential in its <a href="https://uxdesign.cc/bringing-wikipedia-to-the-homescreen-on-ios-fcf8548ae449" target="_blank">homescreen widgets</a>.</figcaption>
  </figure>
  <figure class="third-width">
    <img src="{{ "/assets/uploads/wikipedia-and-apps-a-love-story/focus-kaios.png" | relative_url }}" alt="Trending article list for readers to discover regionally relevant content. ">
    <figcaption>Trending article list for readers to discover regionally relevant content.</figcaption>
  </figure>
</div>

How clear is the goal? Based on Wikimedia Design’s <a href="https://design.wikimedia.org/style-guide/design-principles.html#content-first" target="_blank">“content first” principle</a>, we aim to <strong>design apps that are easy to understand and focus on the essential</strong>. When designing, content comes first, control comes second. On mobile, screen real estate is limited, places of usage are unforeseeable and the user’s focus is reduced. We strive to reduce information density while not neglecting an interface’s functional essence. Guiding questions like: What is the essence of this feature? What is the purpose of this particular screen? How much information can be deprioritized (or left out) to convey a UI’s purpose? Clarity stands for designing user interfaces with clear call to actions, generous use of white space, accessible contrast and hierarchy when designing with type or icons. Writing concise and suitable multilingual UI copy supports in reaching their goals more efficiently.

## Orientation

<div class="columns">
  <figure class="third-width">
    <img src="{{ "/assets/uploads/wikipedia-and-apps-a-love-story/orientation-android.png" | relative_url }}" alt="The 'More' navigation for Wikipedia on Android is designed to maintain the user’s context.">
    <figcaption>The 'More' navigation for Wikipedia on Android is designed to maintain the user’s context.</figcaption>
  </figure>
  <figure class="third-width">
    <img src="{{ "/assets/uploads/wikipedia-and-apps-a-love-story/orientation-ios.png" | relative_url }}" alt="The off-canvas menu on Wikipedia for iOS is one tap away from anywhere in the app.">
    <figcaption>The off-canvas menu on Wikipedia for iOS is one tap away from anywhere in the app.</figcaption>
  </figure>
  <figure class="third-width">
    <img src="{{ "/assets/uploads/wikipedia-and-apps-a-love-story/orientation-kaios.png" | relative_url }}" alt="Trending article list for readers to discover regionally relevant content. ">
    <figcaption>The 'Options' menu lets readers easily navigate an article. It avoids unnecessary key presses.</figcaption>
  </figure>
</div>

Where am I? <strong><a href="https://design.wikimedia.org/style-guide/design-principles.html#design-for-consistency" target="_blank">Design for consistency and orientation</a></strong> are key aspects to help users navigate through an interface in a mobile app. We put explicit effort in communicating where users are and where they can go. Spatial awareness in a digital product helps users in achieving goals more directly. This is exemplified by using a consistent navigation, usage of depth and the application of motion. Deliberate usage of animation and transitions help users navigate an interface. Visual layers and realistic motion convey hierarchy, emotion and understanding when using a device.


## Emotion

<div class="columns">
  <figure class="half-width centered">
    <img src="{{ "/assets/uploads/wikipedia-and-apps-a-love-story/emotion-android.png" | relative_url }}" alt="The 'Thanks' interaction in the Wikipedia for Android app">
    <figcaption>The 'Thanks' interaction in the Wikipedia for Android app</figcaption>
  </figure>
  <figure class="half-width centered">
    <img src="{{ "/assets/uploads/wikipedia-and-apps-a-love-story/emotion-ios.png" | relative_url }}" alt="The onboarding experience in the Wikipedia for iOS app educates and resonates emotionally">
    <figcaption>The onboarding experience in the Wikipedia for iOS app educates and resonates emotionally</figcaption>
  </figure>
</div>

How does the design feel on an emotional level? An often forgotten and invisible theme but yet one of the most impactful: emotional design. Along the lines of our <a href="https://design.wikimedia.org/style-guide/design-principles.html#trustworthy-yet-joyful" target="_blank">”trustworthy yet joyful” design principle</a>, <strong>we believe that preserving the human touch and showing ourselves with our values in our work is essential</strong>. Especially on a device that is as personal as your mobile phone. Instead of creating one more cheap and fast mass feature, we follow a philosophy that has been paved by artists, designers, and architects of the arts and crafts movement. After all, we design for humans and strive to create humane and emotional experiences. Through design, we can see and connect with other human beings. To design experiences that are emotional, we consider understanding the needs of the people we are designing for, as the core mission.


## Ergonomics

<div class="columns">
  <figure class="third-width">
    <img src="{{ "/assets/uploads/wikipedia-and-apps-a-love-story/ergonomics-android.png" | relative_url }}" alt="Example of ergonomically supporting users in the Wikipedia for Android app.">
    <figcaption>Example of ergonomically supporting users in the Wikipedia for Android app.</figcaption>
  </figure>
  <figure class="third-width">
    <img src="{{ "/assets/uploads/wikipedia-and-apps-a-love-story/ergonomics-ios.png" | relative_url }}" alt="Relevant actions are located near the bottom of the screen for easy access.">
    <figcaption>Relevant actions are located near the bottom of the screen for easy access.</figcaption>
  </figure>
  <figure class="third-width">
    <img src="{{ "/assets/uploads/wikipedia-and-apps-a-love-story/ergonomics-kaios.png" | relative_url }}" alt="For non-touch interfaces, placement of key actions (e.g. search, read, edit) is important. We linked key actions with commonly used phone keys to make them easy to perform">
    <figcaption>For non-touch interfaces, placement of key actions (e.g. search, read, edit) is important. We linked key actions with commonly used phone keys to make them easy to perform</figcaption>
  </figure>
</div>

How does the design feel in my hand? <strong>Ergonomics, posture, context, and the tactile nature of touch have implications on how users interact with a design</strong>. Our design principle “this is for everyone” is part of our core mission and designing for touch is different than designing for a keyboard, mouse or trackpad. When designing for apps, we embrace principles of <a href="https://en.wikipedia.org/wiki/Direct_manipulation_interface" target="_blank">direct manipulation</a>, an interaction model where effect are immediately visible on the screen to the user. Designing for a touch device goes beyond enlarging buttons for bigger fingers. We deeply consider placement and positioning of elements to achieve an ergonomic user experience while being aware of different device usage types. And, as voice is considered as the most natural machine-human input method available, we make sure the interface reflects it. We design experiences that provide ergonomics on smartphones, tablets and hybrid laptop/touch devices.


# Get involved

The Wikimedia iOS, Android and kaiOS apps are each designed and developed by a specific team to that platform. If you’re interested in learning more about the apps or if you want to get involved, please visit <a href="https://www.mediawiki.org/wiki/Wikimedia_Apps" target="_blank">Wikimedia Apps on mediawiki.org</a>.

### Android
- <a href="https://www.mediawiki.org/wiki/Wikimedia_Apps/Android_FAQ" target="_blank">Wikipedia for Android project page</a>
- <a href="https://www.mediawiki.org/wiki/Wikimedia_Apps/Team/Android" target="_blank">Wikipedia for Android team page</a>
- <a href="https://github.com/wikimedia/apps-android-wikipedia" target="_blank" rel="nofollow">Wikipedia for Android on Github</a>
- <a href="https://play.google.com/store/apps/details?id=org.wikipedia&hl=en&gl=US" target="_blank" rel="nofollow">Wikipedia Android on Google Play</a>
- <a href="https://www.youtube.com/watch?v=6UkFHYqVsbc" target="_blank">Wikipedia Android App promo video on YouTube</a>
- <a href="https://www.mediawiki.org/wiki/Wikimedia_Apps/Android_theme_guidelines" target="_blank">Android color guidelines</a>
- <a href="https://material.io/" target="_blank" rel="nofollow">Google Material Design Guidelines</a>

### iOS
- <a href="https://www.mediawiki.org/wiki/Wikimedia_Apps/Team/iOS" target="_blank">Wikipedia iOS project page</a>
- <a href="https://www.mediawiki.org/wiki/Wikimedia_Apps/Team/iOS" target="_blank">Wikipedia iOS team page</a>
- <a href="https://github.com/wikimedia/wikipedia-ios" target="_blank" rel="nofollow">Wikipedia for iOS on Github</a>
- <a href="https://apps.apple.com/us/app/wikipedia/id324715238" target="_blank" rel="nofollow">Wikipedia for iOS in the App Store</a>
- <a href="https://phabricator.wikimedia.org/T169148" target="_blank" rel="nofollow">iOS color guidelines</a>
- <a href="https://developer.apple.com/design/human-interface-guidelines/ios/overview/themes/" target="_blank" rel="nofollow">Apple Human Interface Guidelines</a>

### kaiOS
- <a href="https://www.mediawiki.org/wiki/Wikipedia_for_KaiOS" target="_blank">Wikipedia for KaiOS project page</a>
- <a href="https://github.com/wikimedia/wikipedia-kaios" target="_blank" rel="nofollow">Wikipedia for kaiOS on Github</a>
- <a href="https://wikimedia.github.io/wikipedia-kaios/sim.html" target="_blank">Wikipedia KaiOS app simulator</a>
- <a href="https://developer.kaiostech.com/docs/" target="_blank" rel="nofollow">KaiOS documentation</a>

<br>
_Thanks to Lucy Blackwell, Jazmin Tanner & Josh Minor for their contributions._
