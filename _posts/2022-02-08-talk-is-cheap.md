---
layout: post
title: "Talk is Cheap; it shouldn’t also be hard."
image: /assets/uploads/talk-is-cheap/header.png
excerpt: Improving the user experience of Wikipedia discussion pages.
date: 2022-02-08T07:30:00.585Z
---

_By [Jess Klein](http://jessklein.is/)_

# Prologue 

On the discussion page about Nellie Bly's article, communication isn’t the easiest in normal circumstances. You have to hunt for, and then decipher, little clues scattered around the page to initiate a conversation, and then navigate a confusing interface with seemingly-arcane glyphs to orient yourself in the conversation, all while trying to write what you actually came to discuss. A few months back, I wanted to add a photo of <em><a href="https://commons.wikimedia.org/wiki/File:Nellie_Bly_-_The_Girl_Puzzle.jpg?useskin=vector-2022" target="_blank">The Girl Puzzle</a></em>, a monument which is located on Roosevelt Island, New York that memorializes Nellie Bly. I think that this image will show how revered she still is for her journalistic work and, since there are very few images of her, it is a nice representation of her likeness. I walk to the monument on the north edge of this island situated within the center of Manhattan, take a photo and prepare to post it on <a href="https://commons.wikimedia.org/wiki/Main_Page?useskin=vector-2022" target="_blank">Wikimedia Commons</a> so that it can be linked and posted on the Wikipedia article. 

This is where I got stuck. Am I allowed to post this? Are there copyright issues? I visited the discussion page on the English Wikipedia and tried to start a new topic. It’s not easy, but ultimately I realized that I needed to click the “add new section” tab in the interface and ask about inserting the image into the article. After some conversation I wrote <em>“I can take a photo, but would that make it alright to post it or do I need to get approval from the artist?”</em> I didn’t know the rules around image rights. I magically got responses from other contributors, but I didn't even notice that they wrote back to me until a month later when I checked the page. Eventually, I’m guided to a number of different policy pages, and from these I figured out that the best way to get the image up is to get an appropriately licensed photo from the monument’s owners, and then go back to the article to post the image and its associated information.

On its own, figuring out the best way to get and include an image on the article was painful, but figuring that out while trying to navigate the obscure conventions for using the discussion interface, now that was excruciating. On-wiki communication has gotten a lot better for me personally over time because I have at my disposal colleagues and long-term contributors who I actually know and can help me to learn. That’s great, but for others it has not gone so well; potential contributors just give up. They just stop trying. By their thousands. The Editing Team set out to make moments like this less painful, so that as a contributor, you can just focus on the point that you are trying to get across and improve the encyclopedia.

# Making easier-to-use tools

In the <a href="https://design.wikimedia.org/blog/2021/03/10/people-are-talking.html" target="_blank">first installment</a> in this series, I shared how we in the Editing Team conducted research and collaborated with community members to identify a design strategy for the project. The heart of our strategy involves us diving deeply into the asynchronous collaboration experience. To do this, our approach is to first make it easier for contributors to use the tools and then, when we have confirmed that the tools are useful, follow that up by making it easier for folks to discover them in the first place. 

We undertook a virtual "listening tour", where we heard from contributors with a variety of experience levels on Talk Pages share what their interactions there were like. From this, we identified four initial opportunities to improve the Talk Page experience that I will walk you through today. Our hypothesis was that addressing these problems would mean that contributors have a more positive and productive experience. 

## Problem 1: There’s no clear way to engage

If you look at this discussion page here, you can see that it’s very challenging to identify what to even click to reply to these discussions. 

<figure>
  <img src="{{ "/assets/uploads/talk-is-cheap/edit-link.png" | relative_url }}" alt="The way to reply to comments currently is to click an “edit” link.">
  <figcaption>The way to reply to comments currently is to click an “edit” link.
	</figcaption>
</figure>

You need to click the “edit” button to reply. Not obvious. What you’d expect here is a clear call to action, something that says “reply” on it that you can press and initiate the workflow for writing back to someone in a conversation. So that’s what we did. We made a minimal, non-invasive change, which was to add inline links with a more obvious word: "Reply".

<figure>
  <img src="{{ "/assets/uploads/talk-is-cheap/reply-link.png" | relative_url }}" alt="Using words that readers expect to see in discussion spaces such as “reply”  as calls to action can be helpful.">
  <figcaption>Using words that readers expect to see in discussion spaces such as “reply”  as calls to action can be helpful.</figcaption>
</figure>

Though this one change seems simple, it was hugely technically challenging to implement within the constraints that the Wikipedia software gives us. Previous approaches had been hamstrung, either by making trivial systems that don't work for all the hundreds of language communities that are already part of the Wikimedia movement, or by trying to replace discussion pages and all the functionalities that our communities have built into them over the decades that Wikimedia has been going.

As Principal Engineer Ed Sanders puts it, “Existing wikitext talk pages are completely unstructured. That means that all the information is thrown together in what we've been calling a wikitext soup. And while humans may be able to parse it out by looking at the structure of the conversation, it's not easy for the software to do this.” For us to extract useful information from the page we needed to build a new tool which we called the Comment Parser. 

The Comment Parser works by breaking up that flat page into structured data. There are lots of edge cases to consider here: hundreds of timestamp formats, multi-line comments with mixed indentation, strange username links. By rolling this out slowly to different communities we've been able to identify more edge cases and improve the accuracy of the parser. It helps us to know where comments start and end so we can add the individual reply links to conversations. It also allows us to insert your reply in the correct place with the correct amount of indentation.

For those who had used the Structured Discussions system, a key difference is this implementation approach is that, according to Ed, “all the information is <strong>extracted from the page, and not the tool,</strong> so we can apply this insight to edits made with the full page editor.” The Editing Team's Product Manager noted that “a key requirement when we spoke to the community was compatibility with existing workflows, so being agnostic about which editor was used means we can do things like show notifications regardless of what editing interface people are using to trigger them.”

## Problem 2: The interface for writing is confusing

With the reply button, you now have a nice entry point into the workflow. That said, actually writing a reply was still confusing for a handful of reasons, including the fact that there’s manual threading, the ability to edit other people's comments by accident, edit-centric language, and you needed to know the wikitext conventions for signing and dating your posts.  

<figure>
  <img src="{{ "/assets/uploads/talk-is-cheap/sign-name.png" | relative_url }}" alt="To sign your name and add a date you need to write four tildas “~~~~”">
  <figcaption>To sign your name and add a date you need to write four tildas “~~~~”</figcaption>
</figure>

The same problems also applied to starting new topics:

<figure>
  <img src="{{ "/assets/uploads/talk-is-cheap/new-topics.png" | relative_url }}" alt="Having to add basic contact information via wikitext isn’t intuitive to most contributors.">
  <figcaption>Having to add basic contact information via wikitext isn’t intuitive to most contributors.</figcaption>
</figure>

We addressed this by making it possible to reply and sign your name automatically. This alone would have made a huge difference, because it’s frankly a real pain to have to write “ ~~~~ “ after every single post. We built upon this moment to reduce the complexity of mentioning another Wikipedian, formatting your response, and identifying your comment in the discussion. Again, we made this change inline and more contextual, so that it just felt like an organic conversation experience.

For adding new topics we made a similar, more obvious workflow: 

<figure>
  <img src="{{ "/assets/uploads/talk-is-cheap/new-design.png" | relative_url }}" alt="Point, click, type and add:the new design for adding new topics. ">
  <figcaption>Point, click, type and add:the new design for adding new topics.</figcaption>
</figure>

## Problem 3: Missing Notifications

As a contributor, you were now in the situation where you could start and reply to topics, but in terms of getting notified if someone replied to you, well you got nothing, unless that person knew to use one of the many user-generated templates to @-mention you. 

In fact it was even worse than nothing – you would sometimes get a small amount of notifications based on a  set of rules so confusing that you'd have no idea if the other person is getting notified. So, we fixed this with a series of iterations on notifications. We created topic subscriptions, so you can choose if and how you want to be informed about activity within the conversation that you are in. If you've used the Structured Discussions tool, you'll be familiar with these, but you will now get notifications for normal talk page edits, even if the other contributor isn't using our tools.

Once we validated the effectiveness of that feature, we heard from contributors that there are just some conversations that they want to be automatically added to, so that’s what we’ve been working on recently. We have the technology in place and are still checking with test users to ensure that the tools aren’t over-communicating to contributors in such a way that it feels noisy and unwelcome. 

<figure>
  <img src="{{ "/assets/uploads/talk-is-cheap/subscribe-link.png" | relative_url }}" alt="Subscribing you to a particular topic will give you timely updates about discussions that you deem important.">
  <figcaption>Subscribing you to a particular topic will give you timely updates about discussions that you deem important.</figcaption>
</figure>

<figure>
  <img src="{{ "/assets/uploads/talk-is-cheap/updates.png" | relative_url }}" alt="Updates will be integrated directly into your notifications inbox on wiki, and if email (depending on your preferences).">
  <figcaption>Updates will be integrated directly into your notifications inbox on wiki, and if email (depending on your preferences).</figcaption>
</figure>

## Problem 4: Talk pages look like articles.

In English there’s a metaphorical idiom of “<a href="https://en.wikipedia.org/wiki/Elephant_in_the_room?useskin=vector-2022" target="_blank">the elephant in the room</a>,” which means that there’s something very important that needs to be discussed but it’s probably going to be a little awkward to talk about it. For talk pages, that elephant is the fact that article pages look very similar to talk pages, and it confuses people who are new to the concept of a talk page. Headings are the same, the table of contents is the same, and there’s no other indication that this is a place where people can have conversations. This is where we are now. We are beginning to explore ways to make it more obvious what this page is all about by emphasizing elements on the page so that you can easily see what conversations are active, who is talking in them, and how you can get involved in them. This will be addressed in a future release.

# Feedback

We’ve heard a lot of positive feedback about these improvements. Here are some nice quotes:

> "...I like the fact that it's very stripped down and doesn't feel data intense… The colors are pleasing to the eye. Simple to navigate interface. Overall, it works the way I'd expect it to."

– Usability Test Participant
 
> "I think this is the best new feature since years and finally an approach to simplify discussion pages without breaking the workflow of experienced users. So thank you very much for your effort."

– <strong>User:Hgzh,</strong> German Wikipedia

This feedback is crucial to the success of these tools. Peter explained that “As a fundamentally social and community-driven project, conversation is a core part of Wikipedia. It is a core practice that shapes Wikipedia's policies, culture and ultimately, the knowledge that is and is NOT represented within it.” 

I want testers and skeptics to try these tools out so that I can refine and if necessary rethink the design proposal. What’s particularly great about having a beta release channel is that it offers an opportunity to get things wrong and then quickly throw up a new proposal for review. Try out the tools yourself by going into <a href="https://www.mediawiki.org/wiki/Beta_Features?useskin=vector-2022" target="_blank">Beta</a> or global preferences and turning on Discussions Tools. <a href="https://www.mediawiki.org/wiki/Talk_pages_project?useskin=vector-2022" target="_blank">Let us know what you think</a>, it’s a discussion, afterall.

# Epilogue

Through the help of the Roosevelt Island Operating Corporation, I was successfully able to add the image of The Girl Puzzle to <a href="https://commons.wikimedia.org/wiki/File:Nellie_Bly_-_The_Girl_Puzzle.jpg" target="_blank">Wikimedia Commons</a> and <a href="https://en.wikipedia.org/wiki/Nellie_Bly?useskin=vector-2022" target="_blank">Wikipedia</a>. 

_Thanks to: Ed Sanders, Sherry Snyder, Peter Pelberg, James Forrester, Bethany Gerdemann, David Lynch, David Chan, Bartosz Dziewoński, Val Puffet-Michel and Esther Akinloose_

<small>Unless otherwise credited, all images in this post are licensed under CC-BY-SA-4.0.</small>