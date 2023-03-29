---
layout: post
title: "Improving search on Wikipedia"
image: "/assets/uploads/improving-search-wikipedia/featured.webp"
image-caption: "<a href='https://commons.wikimedia.org/wiki/File:JKC_Stadtbibliothek_Fassade.jpg'>Facade of the new City Library in Stuttgart, Germany</a> | By JKCarl | <a href='https://creativecommons.org/licenses/by-sa/3.0/'>CC BY-SA 2.0</a>"
excerpt: "A journey of arriving at the search improvements for Wikipedia"
date: 2023-03-17
---

_By [Sneha Patel](mailto:spatel@wikimedia.org)_

Wikipedia’s mission is to enable every single person on the planet free access to the sum of all human knowledge in the language of their choice.

But how does one go about finding what they are looking for on Wikipedia? Today most of our readers come across Wikipedia content through Google and other external search engines. But Wikipedia also has its own search that often goes unnoticed by readers. So what is the purpose of having search on Wikipedia when it is so easy to use external search engines to find content on Wikipedia? The Search Platform team has a [summary](https://www.mediawiki.org/wiki/Wikimedia_Search_Platform/Why_Search_is_Important?useskin=vector-2022) of some reasons why search on Wikipedia is important. Privacy, safety, sharing and preserving knowledge, and caring about all language communities regardless of profitability, are some of the principles that govern search on Wikipedia.

It is not our goal to have Wikipedia replace popular search engines. However, it is important for search on-wiki to keep up with the key features that readers expect from search and serve those who are specifically looking for content on Wikipedia. After all, how difficult could it be to find things in the world's largest encyclopedia? With the enormous amounts of great content added by our volunteers, not just on Wikipedia but all of its [sister projects](https://en.wikipedia.org/wiki/Wikipedia:Wikimedia_sister_projects?useskin=vector-2022), improving the search and discovery of content is of vital importance.

## Origins of the project

One of the initiatives to improve finding and discovery of content is the [Structured Data Across Wikimedia](https://www.mediawiki.org/w/index.php?title=Structured_Data_Across_Wikimedia&useskin=vector-2022) program, which aims to structure existing Wikipedia content so that it is machine-recognizable. Making our content machine recognizable or in other words adding metadata to organize unstructured data & media, makes searching easier and content more discoverable.

The [Search Improvements project](https://www.mediawiki.org/w/index.php?title=Structured_Data_Across_Wikimedia/Search_Improvements&useskin=vector-2022), with the help of structured content, aims to provide a more inviting and more efficient way to search and find content on the Wikipedias.

This post is a reflection on how we arrived at the improvements we made for search.

## Understanding reader behaviour

The design process began with research to better understand how people use search on Wikipedia. We reviewed the analytics, did UX analysis of current search, and ran qualitative interviews with readers. These research inquiries led us to general understanding on how readers are using our search and what might be blocking them from using its full potential.

We learnt that most of the research participants followed a general path to Wikipedia’s content.

1.  Most participant’s usual route to knowledge on Wikipedia begins in Google.
2.  Once the participant arrived on Wikipedia, a few would use the search bar on Wikipedia to initiate another search.
3.  When an article match is found the participants were redirected to that article.
4.  When the desired content (in this case, an article) was not found (or not served in the auto suggestions in the search box), participants abandoned their search on Wikipedia.

However, not finding the desired content on Wikipedia is often a discovery problem rather than a content problem.

## What influences the current behavior?

The current search box does an excellent job of finding article title matches. e.g. if one types _“Nicaragua”_ the article name will be suggested in the dropdown.

{% include figure.html
  src="image7.webp"
  alt="Screenshot of Wikipedia showing matched article suggestions in search box"
  caption="Matched article suggestions in search box"
%}

But when one searches for _“rainfall in Nicaragua”_, because there is no article with that title, there are no suggested articles displayed.

{% include figure.html
  src="image6.webp"
  alt="Screenshot of Wikipedia showing empty results in search box"
  caption="Empty results in search box"
%}

This is because article suggestions in the search bar are not the result of a robust search over the entire text of Wikipedia articles, but are instead a result of a quicker process of matching the search query with only the title of an article.

However, as the typical reader doesn’t know this, their usual reaction is that the information they are looking for does not exist on Wikipedia. And this is when readers are likely to abandon searching on Wikipedia.

## Other ways to search on Wikipedia

In such cases, even though an article matching the reader’s search term does not exist, it is likely that the information the reader seeks is hidden but available under [sections or articles with different names](https://en.wikipedia.org/w/index.php?title=Geography_of_Nicaragua&useskin=vector-2022#Rainfall) or in sister projects like [Wikimedia commons](https://commons.wikimedia.org/wiki/File:Rain_Shower_outside_Cafe_Campestre_-_Balgue_-_Ometepe_Island_-_Nicaragua_(31604033052).jpg?useskin=vector-2022) or [Wikivoyage](https://en.wikivoyage.org/wiki/Nicaragua?useskin=vector-2022#Climate) and other sources within our ecosystem. However, those places are not easily discoverable for readers.

{% include figure.html
  src="image5.webp"
  alt="Screenshot of Wikipedia showing Rainfall section in the article named Geography of Nicaragua"
  caption="Rainfall section in the article named Geography of Nicaragua"
%}

If the readers were to click on the link in the search box that says “Search for pages containing rainfall in Nicaragua” it would take them to the [Search page](https://en.wikipedia.org/w/index.php?search=rainfall+in+nicaragua&title=Special%3ASearch&ns0=1&useskin=vector-2022), which performs a more thorough search, resulting in other articles that may contain the desired information. The discovery of this page was missed consistently by the participants due to it being a bit hidden away in the UI. And the function of this page was not obvious for those who were shown the page.

{% include figure.html
  src="image3.webp"
  alt="Screenshot of Wikipedia showing link to search page from the search bar and the search page"
  caption="Link to search page from the search bar"
%}

## Search bar vs Search page

Can the aforementioned more thorough search be made available in the search bar? Certainly. But only to some extent so that we don’t bloat the lightweight search bar with too much information. Including this level of broader search in the search bar would also require significant technological infrastructure improvements to maintain performance and latency. And while we could work on making the search bar more responsive to such queries, that would require a huge effort in both time and resources in building what already exists on the search page.

However, we found that the search page was difficult to use for readers based on our initial research. Improving this page would both encourage more usage and highlight the already existing functionality. Which is why for this project, we decided to focus on addressing the problems on the search page.

## What problems did we discover on the Search page?

### Problem 1: Search UI reinforced mental models that prevented participants from exploring the search results.

Due to the learnt behaviours on the Search bar, participants had a strong mental model that if the article is not suggested in the drop down it was a failed search – even if the Search page would show a wide variety of relevant results for the same search query. The current messaging that appears at the top of the results (a highly salient location) indicating “article not found”, reinforced this mental model.

We found out that a lot of these messages were customized by their respective communities with the intention of being one of the main ways in which users were taught to start their [article creation process](https://en.wikipedia.org/wiki/Wikipedia:How_to_create_a_page?useskin=vector-2022#Method_1:_searching). Altering this message would cause more disruption in the short to medium term, so we concentrated on other immediate opportunities for improvement instead.

{% include figure.html
  src="image8.webp"
  alt="Screenshot of Wikipedia showing 'no page found' message"
  caption="No page found message often caused readers to abandon a search with relevant results"
%}

### Problem 2: Lack of proper visual design

There were several visual design issues identified on the search page:

- The page lacked visual content which made scanning and locating information on a text heavy page more difficult.
- The colors on the page were in-appropriately used and drew attention to less important things for e.g. green to highlight metadata, thereby taking the focus away from the content.
- The page column layout was not consistent with other pages on Wikipedia. The ultimate goal for this page would be to use our new design grid system, the benefits of which are explained in this [blog post](https://design.wikimedia.org/blog/2023/01/25/designing-single-grid-system.html).

{% include figure.html
  src="image9.webp"
  alt="Screenshot of Wikipedia showing search page before redesign"
  caption="Search page before redesign"
%}

### Problem 3: Lack of context for a given result.

The snippets that appear on the search page help readers discover content within the article’s sections. However, most of the snippets are partial sentences that do not provide users with enough context of the article’s information. To read more of the snippet, the user would have to click through to the article and find that snippet on the page manually, increasing the amount of time it would take to find the information they are looking for, and leading them away from other potentially relevant results.

{% include figure.html
  src="image4.webp"
  alt="Screenshot of Wikipedia highlighting snippets in the search results on search page"
  caption="Snippets shown in the search results on search page"
%}

### Problem 4: Search results from other projects were either not discovered or misinterpreted.

Most participants did not notice or pay attention to the second column of the search results which shows results from other [projects](https://en.wikipedia.org/wiki/Wikipedia:Wikimedia_sister_projects?useskin=vector-2022) that are part of the Wikimedia ecosystem. Participants assumed them to be ads due to the similar location of ads on other search engines. Ads are, in fact, against the principles that govern [WMF](https://en.wikipedia.org/wiki/Wikimedia_Foundation?useskin=vector-2022) products, but readers were not aware or conscious of this fact enough during their search to overcome their initial assumptions. We found that due to the general unawareness of these other WMF projects, the value of seeing search results from these projects was not made clear with our current page design.

{% include figure.html
  src="image1.webp"
  alt="Screenshot of Wikipedia highlighting search results in sister projects"
  caption="Search results in sister projects"
%}

Fixing some of the above problems and creating new opportunities for discovering content would pave the way for future search enhancements.

## Choosing an audience for search improvements

The Search page would especially be beneficial when an article title match is not found in the search bar. This may happen more often while searching for content in emerging language Wikipedias that often have fewer articles. Hence, we saw a great opportunity in improving this page for emerging language Wikipedias. A better broader search would allow searchers on smaller wikis to discover content within articles and in other Wikimedia projects, and not entirely rely on an article title match in the search bar.

By focusing on Portuguese, Russian and Indonesian Wikipedias, we could also build on the existing relationships between those communities and our team’s (Structured Data) community ambassadors in those wikis, allowing for better facilitations in receiving feedback from the community.

## User Stories

By this point we had a fairly good idea of what problem and opportunities we were going to go after. Which brings me to our next steps in the process: drafting user stories.

User stories help articulate the user needs and allows us to have a better understanding of why users want a certain functionality. It also ensures that the team remains on the same page when ideating on solutions. It serves as not only a tool for understanding user needs but also a tool for better collaboration.

The following user stories were written to provide focus areas for the search page improvements.

### User Story 1

`When` I am looking at search results on the Special:Search page

`I want to` be able to easily scan the page,

`so that` I can quickly locate the information I am looking for.

### User Story 2

`When` I am looking at the results on the Special:Search page

`I want to` be able to see key information,

`so that` I can evaluate the relevance of various search results and find the information I was seeking..

### User Story 3

`When` going through search on special:search page

`I want to` be able to see links to relevant content like linked galleries, wikiquotes etc,

`so that` I can discover and explore other Wikimedia projects for relevant content.

## Proposed design improvements

After a series of team activities, design sessions, and feedback rounds we settled on the following improvements for the Search page.

### Article thumbnails

To address the user needs presented in the user story \#1, we introduced article thumbnail images in search results. They were added to serve as a visual navigational aid in an otherwise text heavy page. Thumbnails can also assist searchers in finding information quickly: e.g. if one only knew roughly how a yellow daisy looked, thumbnails can easily help that user [locate the right name](https://en.wikipedia.org/w/index.php?search=flower+daisy+yellow&title=Special:Search&profile=advanced&fulltext=1&ns0=1&useskin=vector-2022) for the flower. Adding visuals proved to be useful to the research participants we showed these designs to.

{% include figure.html
  src="image10.webp"
  alt="Screenshot of Wikipedia showing redesigned search page with thumbnail images"
  caption="Redesigned search page with thumbnail images"
%}

#### Design considerations

- A few different [explorations](https://phabricator.wikimedia.org/T307034#7939730) were discussed before we settled on a square sized thumbnail. One of our goals was to provide an efficient way to scan information and varying sizes of images would come in the way of this goal. Another design rationale in support of not showing the full size of the images was that these images were supportive of the content users searched and not the content itself. Since this was not an image search we did not think showing the full size of images was serving our core purpose.

- While we thought thumbnails were a good addition for readers, some editors found them to adversely affect their workflow so we added a [specific preference](https://en.wikipedia.org/wiki/Help:Preferences) to turn it off in the settings.

- We decided to not show thumbnails for mobile devices due to data and bandwidth considerations of a portable device.

We also used this opportunity to fix some of the other visual design problems mentioned earlier in the post. Since we felt that most readers would benefit from all these changes, we released this across all Wikipedias.

### Search preview - Desktop

Search Preview was introduced to address the needs presented in user story \#2 and \#3. Its purpose was to surface key information pertaining to the result and provide necessary context, so that the user could evaluate the relevance of search results without leaving the results page. Previews also help the readers go directly to the section of an article that they are interested in, thereby reducing the amount of the time it would take the user to find information within articles. Search previews also serve as a space to surface relevant content from other Wikimedia projects for users to explore – such as related images from [Wikimedia Commons](https://commons.wikimedia.org/wiki/Main_Page?useskin=vector-2022). These designs were well received by readers in user tests and were reviewed with community members.

{% include video.html
  src="image12.webm"
  alt="Screen capture of Wikipedia showing search preview on Desktop"
  caption="Search preview on Desktop"
  mode="gif"
%}

#### Design considerations

- Preview design was partly inspired by [Wikimedia Commons search previews](https://commons.wikimedia.org/w/index.php?search=golden+crowned+kinglet&title=Special:MediaSearch&useskin=vector-2022&type=image) and [Wikipedia page previews](https://www.mediawiki.org/wiki/mw:Page_Previews?useskin=vector-2022). We did not want the search preview to feel like a completely new element introduced to our system and so we tried to follow the existing patterns and visual look while only differing in places where we needed to differ.

- Several [solutions](https://www.figma.com/proto/DCrbEdMqur0yfgwducTMQ4/Search-Prototypes?node-id=103%3A4687&scaling=min-zoom&page-id=0%3A1&starting-point-node-id=271%3A7230&hotspot-hints=0&hide-ui=1){:target="_blank" rel="nofollow"} for opening a preview were explored before we settled on something [simpler](https://www.figma.com/proto/DCrbEdMqur0yfgwducTMQ4/Search-Prototypes?node-id=1%3A2834&scaling=min-zoom&page-id=0%3A1&starting-point-node-id=271%3A7230&hotspot-hints=0&hide-ui=1){:target="_blank" rel="nofollow"} where the visual affordance (arrow) for discovering previews would only appear upon hover and the users would be made aware of the feature through a first time tutorial. We tested this approach and once the user tried it, the interaction became intuitive very quickly.

- To decide what content should appear in previews we went back to our user story \#2. The following key information would provide users with enough context to decide whether to further explore a particular result or not.
  - Lead image of the article
  - Expanded snippets
  - Sections of the article

- Expanding snippets turned out to be more complicated than expected. A rudimentary solution was suggested [here](https://phabricator.wikimedia.org/T316397) and several ideas were captured [here](https://phabricator.wikimedia.org/T329230) for improving the expansion of snippets in the future.

- In order to address the user story \#3 related to the discovery of relevant content in other Wikimedia projects, the following content was also added to search previews.
  - Relevant images from [Wikimedia Commons](https://commons.wikimedia.org/wiki/Main_Page?useskin=vector-2022).
  - Links to other relevant pages in other [Wikimedia projects](https://wikimediafoundation.org/our-work/wikimedia-projects/#a1-reference)

Due to the experimental nature of these solutions we decided to launch in Portuguese, Russian and Indonesian wikis after a few rounds of community consultation. We plan to learn from the usage of these features before launching it to other language wikis.

### Search preview - Mobile

The process of defining what search preview on mobile would look like was more nuanced than just taking the desktop preview and designing it to fit the mobile screen.

#### Design considerations

If we were to take the desktop design as is and put it on mobile it would have resulted in a new page that the user would have to navigate to. This would defeat the purpose of having a quick glance at the contents of the article. If users have to go to a new page to see a preview they may as well go to the article itself.

We had to go back to the drawing board to see what would work for mobile. After several [design explorations](https://wikimediadesign.notion.site/Search-results-preview-on-mobile-99b8becb8a6a47f8a96a2316c97d8808) and feedback rounds, we settled on the following carousel design which when tested worked well with our users.

{% include video.html
  src="image11.webm"
  alt="Screen capture of Wikipedia showing search preview on Mobile"
  caption="Search preview on Mobile"
  mode="gif"
%}

## Challenges and learnings

- The challenge that the product teams face in an open source environment is that many things are customizable. In our project we found there were elements on search pages customized by the editor community for their specific workflows. So ensuring the newer better UI is adopted by all communities is not always guaranteed.

- While we want to design for casual readers, changes can be disruptive for existing editor workflows. The needs of both types of users need to be constantly balanced: e.g. thumbnails in search proved very useful for the readers while some editors found them distracting.

- Engaging with the community early in the process is important. However, sometimes not everyone will discover or notice the proposed changes until it is released. Extra time needs to be budgeted in the project to account for unforeseen feedback coming in after the feature is released.

- There can be different values and perspectives amongst the community – even when working on the same mission – as illustrated in this [discussion](https://en.wikipedia.org/wiki/Wikipedia_talk:Non-free_content?useskin=vector-2022) of whether to allow non-free images as thumbnails or not. This demonstrates the diversity of our community and making constructive compromises is inherent to how we create products at the foundation.

## Next steps

A few things we would like to do in the future to continue improving the search experience:

- Find ways in which the Search page can be made more discoverable. Now that we have improved the Search page a bit, we want more people to enjoy making use of its full power! In order to do this, we want to raise its visibility and awareness.

- Use learnings from the improvements on this page to improve search in the top of the search experience funnel: i.e. most searches begin with the search bar, and we believe there is also a lot of potential to improve this feature.

- Do research on the editor needs of search. Our data indicates that 20% of users end up on the Search page on English Wikipedia. However, we do not know if these are casual readers or editors. Since the research we did with readers suggested that they were unaware of the Search page, our assumption was that the vast number of people using this page might be editors. While for this project we focused our efforts on reader experience, as a next step we would like to understand how to improve search for editors.

- Figure out the high impact areas for search improvement. There is a lot we can do to improve search but we cannot do it all given the resources we have. For that reason it would be good to identify what changes will have the most positive impact on the experience and prioritize those.

- Continue to learn about reader behaviour and find opportunities for improvement. We have only started uncovering some of the basic problems with search but there are way more undiscovered opportunities out there.

If you are part of one of the wikis where these features are released ([Portuguese](https://pt.wikipedia.org/w/index.php?search=&title=Especial:Pesquisar&useskin=vector-2022), [Russian](https://ru.wikipedia.org/w/index.php?search=&title=%D0%A1%D0%BB%D1%83%D0%B6%D0%B5%D0%B1%D0%BD%D0%B0%D1%8F:%D0%9F%D0%BE%D0%B8%D1%81%D0%BA&profile=advanced&fulltext=1&ns0=1&useskin=vector-2022) and [Indonesian](https://id.wikipedia.org/w/index.php?search=&title=Istimewa:Pencarian&profile=advanced&fulltext=1&ns0=1&useskin=vector-2022)) I hope you will try it out and provide feedback on the *[community page](https://www.mediawiki.org/w/index.php?title=Structured_Data_Across_Wikimedia/Search_Improvements&useskin=vector-2022).*

_Thanks to Rita Ho & Matthew Williams for their design mentorship throughout the project; Michael Raish for helping with initial phases of design research; Rita Ho, Carolyn Li-Madeo, & Mike Pham for thoughtful edits and feedback on this post; and not to mention the Structured Data team for building these features & the Search platform team for providing technical support._
