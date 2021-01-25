---
layout: post
title: Translation on Wikipedia — Inclusion begins with discovery and ideation
image: /assets/uploads/translation-on-wikipedia.png
excerpt: Using remote international research to ensure diverse user groups are represented at the earliest stages of product development
date: 2021-01-25T00:26:32.585Z
---

<p class="post__excerpt">Using remote international research to ensure diverse user groups are represented at the earliest stages of product development</p>

_By Eli Asikin-Garmager_

## A bit of context for starters
Anyone with an internet connection can now access around 40 million articles across more than 300 languages on Wikipedia. However, depending on which language(s) you read, the amount of knowledge you can access may differ. For example, if you read English, you have access to over 6 million articles; over 1 million articles are also available in about 20 other languages. In contrast, Wikipedias in some languages have far fewer articles — for example, someone speaking only Lao, a language spoken in Southeast Asia by more than 30 million native speakers, can access fewer than 4k articles. Language, in part, affects your access to free knowledge.

<figure>
  <img src="{{ "/assets/uploads/depends-on-which-language-you-read.png" | relative_url }}" alt="Screenshot of languages on Wikipedia">
  <figcaption>Access to knowledge currently depends in part on which language(s) you can read</figcaption>
</figure>

Content on any language version of Wikipedia is carefully curated by volunteer editors, who continually collaborate to ensure that information is well-sourced and accurate by identifying and analyzing references, and adding citations. This allows a reader to verify facts on their own if they wish. Ensuring that editors can contribute knowledge to Wikipedia regardless of what language(s) they read/write is critical to, “imagining a world in which every single human being can freely share in the sum of _all_ knowledge,” the Wikimedia Foundation’s vision (emphasis added). Language barriers stifle not only _access_ to knowledge, but people’s ability to _contribute_ knowledge. As such, everyone suffers from missed opportunities for participation - some miss out on the opportunity to access and contribute knowledge, and the entire global community misses an opportunity to learn and grow from that wisdom.

One of the goals of the Wikimedia Foundation’s [Language Engineering Team](https://www.mediawiki.org/wiki/Wikimedia_Language_engineering) is to help facilitate the growth of Wikipedias with smaller article collections, especially with the help of computer/machine-aided translation tools. Such tools help content and knowledge flow more freely between different language versions of Wikipedia (‘wikis’). One such tool - [Content Translation](https://www.mediawiki.org/wiki/Content_translation) - has been used to help create more than 800k articles.

So, how do we design and build language tools and features while ensuring we meet the diverse language and cultural needs of communities worldwide? Let’s take a look at three strategies guiding a recent international research project carried out by Design Strategy in coordination with the Language Engineering Team. The recently completed [Multilingual Editor Experiences in Small Wikis Project](https://meta.wikimedia.org/wiki/Research:Multilingual_Editor_Experiences_in_Small_Wikis) aimed to better understand how we can support multilingual editors in small wikis who are leveraging translation to contribute across knowledge and content gaps. The project was carried out with editors from seven different language versions of Wikipedia in India.

### 1. Ensure inclusion begins at discovery and ideation
To reach the goal of helping smaller wikis grow by making it easier to create multilingual content through translation, we knew we needed to involve these editors in our design and research process right from the start. As such, we planned and carried out a generative research project that helped us identify current barriers and challenges to the use of translation and creation of new content.

In this study we focused on better understanding the existing workflows of both veteran and potential editors and translators. Through a series of workflow observations and interviews, we learned about these editors’ experience journeys, motivations for editing, and barriers to editing and translation.

With the goal of reducing barriers to research participation, we planned sessions around participants’ schedules, helped them show up to sessions with whatever device they regularly had access to (whether a phone or laptop), and facilitated sessions in a total of eight languages, based on the participant’s preference.

Through this project, we learned that the challenges and needs of small wiki editors differ to some degree from the experiences of editors on larger wikis. For example, many small wikis use non-Latin scripts that are not always well-supported by their systems by default, which can present challenges when contributing to Wikipedia. The challenge was particularly widespread when observing new editors. As described by a current Gujarati Wikipedia editor, “The first challenge is typing. Not for me because I have been typing in Gujarati since 2016, but when I try to teach many people to edit Wikipedia, the first challenge is typing.” (This was subsequently confirmed through direct observation of new editors.)

Another example of a difference we observed related to motivation. While small wiki editors’ motivations are multi-dimensional (as is true of all editors) and range from purely altruistic to those grounded in self-improvement, small wiki editors may be particularly motivated by considerations of access for others. For example, many India-based editors were motivated by the ability to help bring knowledge access to people who do not read English fluently, especially in rural areas. Small wiki editors were also aware that fewer articles are available in their wikis, so their direct impact in terms of providing a ‘boost’ to the content available in their language was especially motivating.

<figure>
  <img src="{{ "/assets/uploads/journey-map-marathi-wikipedia.png" | relative_url }}" alt="Journey map of Marathi Wikipedia editor">
  <figcaption>Excerpt from a sample <a href="https://meta.wikimedia.org/wiki/Research:Multilingual_Editor_Experiences_in_Small_Wikis#/media/File:Experienced_Translator_Journey_Map.png">journey map of an experienced Marathi Wikipedia editor</a></figcaption>
</figure>

As part of the research project deliverables, we created personas and experience journey maps that will guide product development. In upcoming months, we will use them during annual planning sessions to ensure that we’re focused on solving the right set of problems. By including more diverse voices and audiences at the earliest stages of product development, we help ensure those diverse experiences guide all subsequent efforts. This allows us to make decisions grounded in the real, lived experiences of users; not guesses or approximations.

## 2. Strategize for necessary pragmatic choices and plan for iteration

One of the challenges at the onset of this project was determining which small wikis we would focus on. Acknowledging that we couldn’t immediately tackle research in all the small wiki communities, we needed to make some strategic choices and create a plan for what iteration would look like.

By partnering with our Analytics Team, we gathered data for a number of metrics that we used to arrive at an initial set of small wikis for the project. We examined patterns related to the number of articles for various wikis, the number of users and active editors, as well as percentage of mobile views. We also considered the number of speakers for the language and factors such as what machine translation options are currently available for the language.

First, through this process we clearly identified what we meant by “small”, and arrived at a set of potential candidates. Then, from this set of candidates, we choose a subset to focus on for the project. For practical purposes the project would need to be time-boxed, so we chose a subset of small wikis with significant potential for growth - potential measured by considering active editing behavior and overall size of the language community.

<figure>
  <img src="{{ "/assets/uploads/overview-small-wikis.png" | relative_url }}" alt="Table showing overview of small wikis">
  <figcaption> Overview of the small wikis selected for this project.</figcaption>
</figure>

While in an ideal world we might have simply selected to do research on all small wikis, given practical considerations and real-world constraints, by following a deliberate strategizing process rooted in data available through analytics we felt more confident about our selection.

Through this process we also set ourselves up to be able to make subsequent decisions as further research opportunities open up. For example, which small wikis make the most sense for subsequent research projects. And, while we arrived at the option of focusing research on a single country covering several languages, we know there may be some country- and/or cultural-factors that do not fully generalize to a broader set of small wikis. Such limitations simply help highlight more work we know we have to do. Continuous iteration to support the truly global collective of editors working to break down language barriers to knowledge.

## 3. Embrace remote options (...and some practical tips)

Although it hasn’t yet been mentioned, the project highlighted in this post was successfully completed during 2020, a year to be defined in part (or whole?) by a global pandemic that brought travel and many in-person activities to a screaming halt.

So, while quickly embracing remote methods became an immediate necessity for moderated research sessions during the pandemic, even before the pandemic, the Wikimedia Foundation’s Design Strategy Team had embraced remote methods as a way of achieving a variety of goals. In some cases remote research brings significant cost savings advantages or enables a small design research team to accomplish more in a shorter time frame. But, in other cases the primary motivation may be more related to how it can benefit the diversity of who can show up and participate — especially in light of the fact that product teams have research needs that need to be met in accordance with sometimes tight schedules and timelines that they’re operating on.

Based on our experience with this project, here are five tips for moderated international research sessions being conducted remotely:

1. **Schedule a quick ‘logistics call’ with each participant**. Before each research session, schedule a short call with each participant. This serves two  purposes. First, it allows you to do a quick test run of the technology you’ll be using for the session and sort out any wrinkles. Secondly, it allows you to begin building rapport with the participant. While it necessitates an investment of some additional time, we found this investment well worth it. We experienced fewer technical hiccups during the actual sessions, and participants felt more comfortable performing tasks and providing honest feedback.

2. **Have a backup contact plan**. Assuming participants agree, have their cell number on hand in case the video call goes down. If you’re not in the same country as the participant, we found using a popular option like WhatsApp can sometimes be advantageous. When we experienced internet connection drops, if participants had a small amount of mobile data available, we were still able to communicate — either to resolve the connection issues or reschedule and not leave anyone hanging.

3. **Provide live support for language moderators**. If you’re using a moderator to accommodate language preferences of your participants, even if the session will later be transcribed and translated, ensure that a research lead is available for the duration of all sessions. The researcher may be better suited to handle unexpected issues and provide guidance for moderators who may not be as close to the project and research questions.

4. **Embrace the sound of silence**. This isn’t specific to remote research facilitation, but becomes particularly important when you’re conducting sessions via video calls. Pausing and allowing a bit of silence ensures that participants are being provided a sufficient invitation and opportunity to speak. It’s also a useful strategy to provide a bit more silence than usual since you often experience short lags with video calls.

5. **Schedule consistently inconvenient times when working across time zones**. If you’re working across timezones, be kind to yourself. Of course you’ll need to schedule times that are convenient for participants, but if this means very early days or late nights for you, be kind and avoid the exhausting ‘late night + early next morning’ combination. For example, maybe one week you plan on having early mornings (but then resting at a decent hour), and the following week going with late nights but sleeping in a bit longer

Hopefully you find some of these practical tips useful. Please check out the [Multilingual Editor Experiences in Small Wikis project page](https://meta.wikimedia.org/wiki/Research:Multilingual_Editor_Experiences_in_Small_Wikis) to learn more about the project.

<p class="post__authors">
  <a href="https://meta.wikimedia.org/wiki/User:EAsikingarmager_(WMF)">Eli Asikin-Garmager</a> is a lead design researcher at the Wikimedia Foundation
</p>
