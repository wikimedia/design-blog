---
layout: post
title: "Improving the reading experience for smart feature phones"
image: /assets/uploads/improving-reading-experience/improving-reading-experience.png
excerpt: The Inuka team at Wikimedia Foundation decided to improve the Wikipedia reading experience on feature phones to accommodate the unique needs and preferences of historically underrepresented users
date: 2021-09-23T07:30:00.585Z
---

_By [Sudhanshu Gautam](https://twitter.com/baba786)_

Reading a Wikipedia article on a feature phone is time consuming. The article about Tiger might take 25-30 minutes to read on a smartphone; alternatively, it would take much longer to read on a feature phone. While smartphones are almost ubiquitous in some parts of the world, over 100M<sup><a href="#note-1" id="ref-1">[1]</a></sup> people across the globe still use feature phones to connect to the internet.

Wikimedia has significant room to expand in emerging communities where access to inexpensive devices and cheap data is quickly growing. To help people overcome barriers to access free knowledge on our projects and be a trustworthy source of knowledge and information, the <a href="https://www.mediawiki.org/wiki/Inuka_team" target="_blank">Inuka team</a> at Wikimedia Foundation decided to improve the Wikipedia reading experience on feature phones to accommodate the unique needs and preferences of historically underrepresented users.

# About the devices

KaiOS, a mobile operating system based on HTML5 power these phones. It supports 4G/LTE, Wi-Fi, Bluetooth, and GPS. India is one of the biggest markets for KaiOS, where it powers Jiophone. These phones have limited computing capabilities, small displays, and most actions are performed using a keypad. Their low cost, combined with the ability to use apps like Google, Facebook, Youtube, etc., make them a top choice among first-time internet users. 

On the phone, all actions are presented on a softkey panel linked to physical keys on the keypad. Most actions are performed using center, left, and right hardware keys.

# Design process

Our team started using feature phones to familiarize ourselves with keypad-based interactions, challenges when using apps, impact of limited infrastructure on user experience, and how the Wikipedia reading experience feels. In parallel, we worked with <a href="https://hureo.com/" target="_blank">Hureo</a>, a user research firm based in India, to conduct foundational research<sup><a href="#note-2" id="ref-2">[2]</a></sup> with 25 participants in different cities in India. Research aimed to learn about how they used these devices, their motivations to use them, their awareness of Wikipedia, and their experiences reading Wikipedia articles. These are some of the findings:

- Smart features, durability, and good battery life at an affordable price are the main reasons to use feature phones. 
- Primary usage is social media, entertainment, and look for information online.
- Wikipedia awareness is low. Informed users use it to read about famous people, entertainment, places to visit, etc.
- Reading a long Wikipedia article on its browser is quite laborious as typing and scrolling is difficult.
- Participants mentioned that the small font size required extra effort to read, and caused strain on their eyes.
- For quick navigation, users wished to have easy access to the table of contents, images, and other parts of articles.

<br>
These insights from our research, combined with our own experiences and frustrations when reading Wikipedia articles on feature phones, indicated that we should try to provide a better reading experience for all of these people. These were the improvements we were interested in testing with users:

- An onboarding flow to define What Wikipedia is in simple language to users who may or may not have used it before.

<div class="columns">
  <figure>
    <img src="{{ "/assets/uploads/improving-reading-experience/brief-onboarding.png" | relative_url }}" alt="Brief onboarding to share about Wikipedia, language diversity, and the volume of articles available.">
    <figcaption>Brief onboarding to share about Wikipedia, language diversity, and the volume of articles available.</figcaption>
  </figure>
</div>

- A “quick links panel” to directly access a section of an article, view images, or  read an article in different languages. 
<div class="columns">
  <figure class="third-width centered">
    <img src="{{ "/assets/uploads/improving-reading-experience/quick-links.png" | relative_url }}" alt="Quick links to access different parts of an article.">
    <figcaption>Quick links to access different parts of an article.</figcaption>
  </figure>
</div>

- Instead of continuous scrolling using the keypad while moving through an article, readers can read clear segments of a Wikipedia article on the small screen one page at a time.
<div class="columns"> 
  <figure class="third-width centered">
    <img src="{{ "/assets/uploads/improving-reading-experience/page-navigation.gif" | relative_url }}" alt="Animation showing page by page navigation on the Wikipedia app for KaiOS">
    <figcaption>Animation showing page by page navigation on the Wikipedia app for KaiOS</figcaption>
  </figure>
</div>

- Option to read an article in different text sizes.
<figure>
  <img src="{{ "/assets/uploads/improving-reading-experience/change-article-text-size.jpg" | relative_url }}" alt="Change article text size from options menu.">
  <figcaption>Change article text size from options menu.</figcaption>
</figure>

- Option to use the app in different languages.
<figure>
  <img src="{{ "/assets/uploads/improving-reading-experience/change-app-language.jpg" | relative_url }}" alt="Change app language from settings menu.">
  <figcaption>Change app language from settings menu.</figcaption>
</figure>

## What did we learn?

Due to the pandemic, conducting remote sessions in India was quite challenging as screen sharing is not directly supported by KaiOS. Luckily, all participants had access to smartphones either through their family members or friends. Twenty participants(12 Male, 8 Females) were recruited within the 20 to 40 years age group. Interviews were conducted in English, Hindi, Marathi, and Telugu to cover language diversity. Usability tasks involved installing the app, searching & reading an article of their choice, and any additional feedback to improve the app.
<div class="columns">
  <figure class="half-width centered">
    <img src="{{ "/assets/uploads/improving-reading-experience/android-participant.jpg" | relative_url }}" alt="A participant is using an android device to screen share on a zoom call.">
    <figcaption>A participant is using an android device to screen share on a zoom call.</figcaption>
  </figure>
</div>

**Summary of session learnings.**

- Users appreciated the ease of discovering articles in multiple languages and the simplicity of changing the app language.

> I can change before searching only. I will use this feature because I can use it  whenever I want to read in Marathi. - User 12

- Users liked quick links to help them access different sections of an article, view images, and quickly access important facts.

> This is part of the same article. This is like a shortcut, so from here I can read any topic related to the article. - User 6

- Users were confused when certain articles were unavailable when they changed the app language to their regional language.

> When I search for ‘Dosa recipe in hindi’ using voice search I get the results, here maybe the information is available in English only and not Hindi. - User 10

- Users could not understand the icon used for quick facts and considered it a map icon.

> I expected to see a map here, as the icon used for it was of a location. - User 11

- Most users did not read the onboarding descriptions as they mostly ignore that part in other apps too.

<br>
# What’s next?

The app was first released in India in September 2020 and was later released globally in December 2020. It has been downloaded over 2.5M times since its first release. In the next update, we are looking forward to improving article discovery and the overall reading experience. Improvements would include contextual onboarding to quickly start the app, a trending article list to find content beyond search functionality, and other minor changes to improve issues observed during usability sessions. Stay tuned for all the amazing work the Inuka team does to support new internet users in emerging markets.

<figure>
  <img src="{{ "/assets/uploads/improving-reading-experience/contextual-onboarding.png" | relative_url }}" alt="Tips section for Contextual onboarding.">
  <figcaption>Tips section for Contextual onboarding.</figcaption>
</figure>

<figure>
  <img src="{{ "/assets/uploads/improving-reading-experience/trending-article-list.jpg" | relative_url }}" alt=" Trending article list for regional content discovery. ">
  <figcaption>Trending article list for regional content discovery. </figcaption>
</figure>

<br>
_Thanks Angie Muigai, Prateek Saxena, Rita Ho, Nicolas Ayoub, Alex Hollender, and Aishwarya Vardhana for your feedback and editing help. A special thanks to Carolyn Li-Madeo, who did a fantastic job designing the app’s early experience._

## Related links

- [Wikipedia for KaiOS project page](https://www.mediawiki.org/wiki/Wikipedia_for_KaiOS)
- [Wikipedia for kaiOS on Github](https://github.com/wikimedia/wikipedia-kaios)
- [Wikipedia KaiOS app simulator](https://wikimedia.github.io/wikipedia-kaios/sim.html)
- [KaiOS documentation](https://developer.kaiostech.com/docs/)


<footer>
<br>
<p id="note-1"><small><a href="#ref-1">[1]</a><a href="https://www.kaiostech.com/kaios-2019-year-in-review/">https://www.kaiostech.com/kaios-2019-year-in-review/</a>
</small></p>

<p id="note-2"><small><a href="#ref-2">[2]</a><a href="https://www.mediawiki.org/wiki/File:Understanding_KaiOS_users_in_India_-_Report.pdf
">https://www.mediawiki.org/wiki/File:Understanding_KaiOS_users_in_India_-_Report.pdf
</a></small></p>
</footer>
