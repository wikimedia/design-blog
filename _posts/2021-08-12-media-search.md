---
layout: post
title: "Improving search on Wikimedia Commons"
image: /assets/uploads/Search_on_Wikimedia_Commons.jpg
excerpt: The new search experience on Wikimedia Commons
date: 2021-08-12T07:30:00.585Z
---

_By [Matthew Williams](https://twitter.com/derrellwilliams)_

Many people don't realize that along with Wikipedia, the <a href="https://wikimediafoundation.org/">Wikimedia Foundation</a> hosts a number of other projects, ranging from reference projects like <a href="https://en.wiktionary.org/wiki/Wiktionary:Main_Page">Wiktionary</a> to software projects like <a href="https://www.mediawiki.org/wiki/MediaWiki">MediaWiki</a>. These projects belong to everyone and like Wikipedia, are free to use to further our goal of providing the essential infrastructure for free knowledge <a href="https://commons.wikimedia.org/wiki/Main_Page">Wikimedia Commons</a> is one of these projects and is the world's largest free-to-use library of illustrations, photos, drawings, videos, and music. Wikimedia Commons hosts more than 71 million freely usable media files<sup><a href="#note-1" id="ref-1">[1]</a></sup> to which anyone can contribute. It also hosts and organizes a majority of the media you encounter on Wikipedia. 

Recently, one of the tasks of the structured data team, a cross-functional product team at the Wikimedia Foundation, was to focus on how to improve the search experience on Wikimedia Commons to better surface all of the media files contributed by people from around the world. One of the key tenets of this work was making the experience less intimidating, in particular to those not familiar with Wikimedia Commons. Being able to support a wide range of use-cases, from power users like museums digitizing their photography collection to a high school student using Wikimedia Commons for the first time to find free usable media to complete a science project, was critical to building a successful search experience.

One obvious area the team focused on was ways to improve search accuracy since it doesn’t matter what you do with the presentation if the actual results aren’t mapping to the expectations of the searcher. However, this article, being written by the designer on the team, will be focused on the work that was done to ensure a much better experience that was created to complement these improved search results.

# Baseline research

<figure>
  <img src="{{ "/assets/uploads/Special_Search_on_Commons.jpeg" | relative_url }}" alt="Special Search on Commons">
  <figcaption>Largely untouched in its 17-year history, a screenshot of search on Wikimedia Commons before we started this project. | <a href="https://commons.wikimedia.org/wiki/File:Special_Search_on_Commons.jpg">Special Search on Commons</a> | Public Domain</figcaption>
</figure>

We kicked this project off with a round of research to get a more honest understanding of the strengths and weaknesses of search on Wikimedia Commons. With only a few quotes from the participants of this research, you can see what we were up against:

> There is so much text and details, it was hard to find what I was looking for.

> It was frustrating to find all of the advanced search options, I figured it out after a while but didn’t expect to find them where I did.

> It doesn’t feel like a very nice display of results...difficult to see the details and evaluate the results with such small images.

> It feels complicated and the images are hard to see.

> It’s extra work to  navigate back and forth between the file page and search to get everything I need.

> I don’t trust it.

As you can read, there was room for improvement. We needed to make the search experience more familiar and easy to use. Image search on the web is not a novel problem but the uniqueness of search on Wikimedia Commons was detrimental to casual users and those not intimately familiar with the project. With over 3 million daily page views<sup><a href="#note-2" id="ref-2">[2]</a></sup> on Wikimedia Commons, it's more than obvious we needed to build a tool that made sense to everyone and aligned closer to their expectations.

We also knew that our most passionate contributors to the Wikimedia Commons project needed certain features and tools to help with their work. Would it be possible to make an experience that both catered to those unfamiliar with Wikimedia Commons and those that use it every day?

## Creating a more functional and familiar interface

<figure>
  <img src="{{ "/assets/uploads/Search_on_Wikimedia_Commons.jpg" | relative_url }}" alt="A screenshot of the search experience on Wikimedia Commons">
  <figcaption>Upon clicking of a result, you can see more information in a “quick view panel” | <a href="https://commons.wikimedia.org/wiki/File:Search_on_Wikimedia_Commons.jpg">Search on Wikimedia Commons with Quick View</a> | By Matthew Williams | <a href="https://creativecommons.org/licenses/by-sa/4.0/deed.en">CC BY-SA 4.0</a></figcaption>
</figure>

After working through a myriad of wireframes, ideas, and approaches with the team, we began to arrive at some key areas we were going to focus on. One of the more visually obvious changes we started with was moving towards a grid layout that more effectively uses the space and highlights the media shown. Even with images around twice as large, we are able to show around three times as many results before needing to scroll. With as many results as we have, this helped users more quickly parse what Wikimedia Commons has to offer. Other interface improvements included surfacing all the different media types available upfront, making filters easier to find and use, and adding more information to a “quick view panel” upon clicking to eliminate the need to leave the page as often.

<figure>
  <img src="{{ "/assets/uploads/Media_Search_and_Other_File_Types.jpeg" | relative_url }}" alt="Screenshots of Media Search while searching for other file types">
  <figcaption>Examples of the different search experiences per file type | <a href="https://commons.wikimedia.org/wiki/File:Media_Search_and_Other_File_Types.jpg">Media Search and Other File Types.jpg</a> | <a href="https://creativecommons.org/licenses/by-sa/4.0/deed.en">CC BY-SA 4.0</a></figcaption>
</figure>

We also separated the different types of media files into tabs. It became clear throughout the conversations with research participants that combining all file types into one result set was overwhelming, especially when the majority of visitors just wanted to search for images.

<figure>
  <img src="{{ "/assets/uploads/Media_Search_on_Mobile_Web.jpeg" | relative_url }}" alt="Screenshots of the search experience of Commons on Mobile Web">
  <figcaption>Screenshot of the new search on Wikimedia Commons on mobile web | <a href="https://commons.wikimedia.org/wiki/File:Media_Search_on_Mobile_Web.jpg">Media Search on Mobile Web</a> | <a href="https://creativecommons.org/licenses/by-sa/4.0/deed.en">CC BY-SA 4.0</a></figcaption>
</figure>

With 30% of all Wikimedia Commons usage<sup><a href="#note-3" id="ref-3">[3]</a></sup> on mobile web, we also wanted to make sure that all of these improvements were considered and easy to use on a mobile device.

## Community Input

It was clear from research and usability studies that we were making progress with those less familiar with Wikimedia Commons, but what about those who use it the most frequently, like the countless contributors and volunteers, galleries, libraries, and museums?

This new search experience was designed and built with these communities’ involvement from the ground up, with Wikimedia Commons contributors involved from conception and design to prototyping to the final push for feature completion prior to launch. The team planned a robust feedback cycle for sharing, bringing in information, iterating, and communicating with the community.

Community involvement began in May 2020 with sharing the ideas and designs, and by June the community was using a prototype. Over the next nine months, the development team would go through six distinct feedback cycles, with a total of 24 community members participating and leaving detailed ideas, comments, concerns, and questions to improve the product. 

Initial feedback was positive and helped us refine many aspects of the new experience. For example, one of the many pieces of useful feedback was a request for a filter that was able to search specifically for images that had received an assessment. Assessments are a system that the community has created to recognize important contributions across Wikimedia Commons, with groupings such as featured pictures, valued images, quality images, and picture of the day. This filter in particular was an excellent suggestion that we were able to implement that really sets Wikimedia Commons apart from other image searching tools with its human-powered curation at scale. 


# Results
After making significant progress, we completed a wide array of usability tests to understand if the answers and changes we had applied from the initial baseline research were actually improving the experience. Here are some of the quotes from those interviews:

> Much clearer and simpler to use. I prefer this version because the images are bigger. There were so many details in the old search that it was hard to see what was going on.

> It is comparatively much simpler and clearer to understand, with less space wasted in this format.

> It feels easier because it requires less clicking and the options are more visible. It also had more images to see at once.

> It is more intuitive, user friendly and easier to navigate

> This feels much easier to operate and it is comfortable to use. It was much simpler in style.


We also conducted a survey in late December 2020/early January 2021, asking users directly if they had a preference for the new search experience or legacy search. We received 40 responses, again showing a preference for the new search.

Using the evidence from that research and analysis, as well as the qualitative and quantitative feedback from the community, we decided to make this new search experience the default search on Wikimedia Commons. 

With this update, we hope to have made finding and discovering this amazing treasure trove of freely usable media on the internet just a bit easier while honoring all of the hard work and contributions people around the world have made to Wikimedia Commons.

<footer>
<p id="note-1"><small><a href="#ref-1">[1]</a><a href="https://commons.wikimedia.org/wiki/Special:Statistics">https://commons.wikimedia.org/wiki/Special:Statistics</a>
</small></p>

<p id="note-2"><small><a href="#ref-2">[2]</a><a href="https://pageviews.toolforge.org/siteviews/?platform=all-access&source=pageviews&agent=user&range=latest-20&sites=commons.wikimedia.org">https://pageviews.toolforge.org/siteviews/?platform=all-access&source=pageviews&agent=user&range=latest-20&sites=commons.wikimedia.org</a></small></p>

<p id="note-3"><small><a href="#ref-3">[3]</a><a href="https://pageviews.toolforge.org/siteviews/?platform=mobile-web&source=pageviews&agent=user&range=latest-20&sites=commons.wikimedia.org">https://pageviews.toolforge.org/siteviews/?platform=mobile-web&source=pageviews&agent=user&range=latest-20&sites=commons.wikimedia.org</a></small></p>
</footer>
