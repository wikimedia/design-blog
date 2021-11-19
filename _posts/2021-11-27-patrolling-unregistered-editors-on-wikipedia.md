---
layout: post
title: "Patrolling Unregistered Editors on Wikipedia"
image: /assets/uploads/patrolling-unregistered-editors-on-wikipedia/stonehenge.jpg
excerpt: Balancing the needs of patrollers and unregistered editors on the wikis
date: 2021-11-17T07:30:00.585Z
---

_By [Prateek Saxena](https://prtksxna.com/)_

On most Wikipedias, you don't need an account to make an edit. While there are benefits to making an account — such as a single place to see all communications, or a place to store articles that you're interested in — there is no requirement to make one. This reduced barrier to entry means that people around the world can contribute to our projects — whether it's a small typo fix or a new article — without ever having to make an account. 

But, it also means that it's easier to vandalize and make destructive edits to our projects. To counter this, our editors and administrators patrol edits made by registered and unregistered editors alike. These watchful editors are also known as _patrollers_. To keep out bad faith edits from our projects, patrollers need to have an understanding of who is making the edits. In the case of unregistered editors though, the information that they rely on most is their <a href="https://en.wikipedia.org/wiki/IP_address" target="_blank">IP address</a>.

An IP address is a unique address that is given to any device that is connected to a network like the Internet. When an unregistered user makes an edit, the change isn’t attributed to their name, but their device’s IP address instead. An IP address is like a home address, it cannot reveal your identity but one can deduce a lot about you by knowing where you live. So, what might seem to some as an _anonymous_ way of editing actually reveals more about them than a simple pseudonym would. 

Patrollers copy these IP addresses into external <a href="https://en.wikipedia.org/wiki/WHOIS" target="_blank">WHOIS tools</a> to understand where the editor is coming from. These tools tell them information about where the editor might be and how they’re connecting to the Internet. To reduce the extra step of copy-pasting addresses, and providing a single place to get IP  information, the Anti-Harassment Tools team started work on an _IPInfo_ tool within Wikipedia. This tool would give our patrollers the needed information right where they need it — when analyzing an unregistered user’s contributions.

# Designing IP Info

## Initial Research

First, we wanted to get a better understanding of the patrolling process and specifically how IP addresses are used while evaluating edits. To do this we conducted interviews with editors who often patrol our projects and asked them to show and talk us through their process. This gave us an overview of the different ways patrollers go about keeping our projects vandalism free. After a few rounds of feedback from design, research, engineers and Trust & Safety folks we had the following task model:

<figure>
  <img src="{{ "/assets/uploads/patrolling-unregistered-editors-on-wikipedia/ip-info-risk-vs-usefulness-matrix-wikimedia-design.jpg" | relative_url }}" alt="Task model for IP Patrolling on wikis.">
  <figcaption>Task model for IP Patrolling on wikis. See <a href="https://miro.com/app/board/o9J_lmUSH8s=/" target="_blank">Miro</a> for a full view.</figcaption>
</figure>

We understand now that IP patrolling usually starts from RecentChanges, an editor's Watchlist, or from a page that the editor knows gets vandalized often. When looking at the edits of such a page the patroller first looks for clear red flags like edit flooding (lots of minor edits in a short amount of time), no edit summary, large deletions etc. They then look for more specific on-wiki information like if the IP has a talk page, if it has ever been blocked, and its global and local contributions. 

Based on this initial fact-finding, patrollers decide if an IP is worth looking into further. If it is, they use external tools to find more information about the IP. They’re looking for details  like — location, proxy usage and organization that the IP might be linked to. This process is not completely accurate since different databases have different information on the same IP. Oftentimes, based on the location of the IP and the location of the tool the editors are using, the information provided might vary.

Finally, based on the information collected, patrollers decide which action would be most appropriate. Again, this decision takes into account various factors like the policies of that wiki, the scale of the collateral damage caused by a range block, consistency in editing patterns, etc.


## Mock-ups

The patrollers need on-wiki information about the IP before they decide to investigate it, so, we decided to add a popup that shows block and contribution information. The popup would be accessible by clicking an information icon next to the IP address on pages like RecentChanges, Watchlist and History.

<figure>
  <img src="{{ "/assets/uploads/patrolling-unregistered-editors-on-wikipedia/ip-info-popup-wikimedia-design.png" | relative_url }}" alt="The IP Info popup that’ll be accessible from pages like RecentChanges that patrollers monitor for edits.">
  <figcaption>The IP Info popup that’ll be accessible from pages like RecentChanges that patrollers monitor for edits.</figcaption>
</figure>

If the patroller decides to dig deeper into an IP address by going to their Contributions page, they'll be able to see a collapsible box that shows more IP related information.

<figure>
  <img src="{{ "/assets/uploads/patrolling-unregistered-editors-on-wikipedia/ip-info-box-wikimedia-design.png" | relative_url }}" alt="The IP Info box shown on the Contributions page gives detailed information to the patrollers.">
  <figcaption>The IP Info box shown on the Contributions page gives detailed information to the patrollers.</figcaption>
</figure>

Sharing these mocks internally brought up three questions:
1. How much information is useful? 
2. Who should have access to this information? 
3. Should some patrollers have access to partial bits of information?



# Balancing needs

Our projects have a wide variety of contributors and vary in socio-demography, accessibility and motivations. These and other factors were captured in the <a href="https://meta.wikimedia.org/wiki/Research:Knowledge_Gaps_Index/Taxonomy" target="_blank">Knowledge Gap Taxonomy</a> research, which not only looked at the gaps in Wikipedia’s content but the gaps in the contributors as well. In turn, we reframed our design questions as: 

- How might we make sure that revealing IP information doesn’t put our most marginalized contributors at risk?

- How might we ensure that access to information and tools doesn’t become a barrier to contributions for our least technically skilled contributors?

While IP information needs to be available to all, we wanted to make sure that it doesn’t put anyone at risk and it isn’t so technical & overwhelming that it becomes meaningless to most patrollers.


## Team Workshop

The Anti-Harassment Tools team and the Trust & Safety teams came together for a small workshop to discuss these items. We acknowledged that we want both non-technical and technical users to have easy access to IP information. We also acknowledged that we can’t put our unregistered editors at risk especially because some of the IP information, like location and organization, can potentially help in identifying a person.

In our discussions around accessibility for patrollers we noted questions and concerns around information overload, accuracy of information and false confidence in IP data. We also considered if having IP information more readily available might lead to its misuse. The following clusters began to form:

- <strong>Data:</strong> How might we make sure that people understand the data they’re looking at, and understand its accuracy too?

- <strong>Personal information:</strong> How might we make sure that information is accessible to those who need it, without putting unregistered editors at risk?

- <strong>Agency:</strong> How might we inform unregistered editors of the data they are leaving traces of and show them ways to protect it (create an account)?

After brainstorming on the questions we started to organize our thoughts in the following manner — we need to balance the concerns of ease of use for patrollers and risk to unregistered editors. To do this we plotted the different pieces of IP information on a graph with Risk on the Y axis and Usefulness to patrolling on the X axis.

<figure>
  <img src="{{ "/assets/uploads/patrolling-unregistered-editors-on-wikipedia/ip-info-task-model-wikimedia-design.jpg" | relative_url }}" alt="Task model for IP Patrolling on wikis.">
  <figcaption>Plotting the different pieces of IP information based on Risk (to editor) and Usefulness (to patroller). See <a href="https://miro.com/app/board/o9J_lmUSH8s=/" target="_blank">Miro</a> for a full view.</figcaption>
</figure>

This exercise was based on the learnings from research as well as the team’s experience. Two clear clusters appeared, the high risk one mostly containing information that could reveal an editor’s location.

Based on this, we are planning to show a limited set of information to most users and give access to more sensitive information to only our most trusted users — Administrators and CheckUsers.



# Gathering feedback

## Community input

Sharing our findings with the community led to some interesting <a href="https://meta.wikimedia.org/wiki/Talk:IP_Editing:_Privacy_Enhancement_and_Abuse_Mitigation/IP_Info_feature" target="_blank">conversations and feedback</a>. Some common themes were:

- Increasing or deepening the scope of a particular piece of information. IP Information is complex and having more context and data usually helps.

- Adding more data sources to get a wider picture of the IP information. This would also help in figuring out if the data being shown is reliable.

- Specific points about IP ranges and IPv6 addresses and how to deal with them.


## Usability tests

We were also able to do some usability tests with Patrollers in the community. Overall, the feature was well-received and they liked that they won’t have to rely on external tools in the future. We were given some specific feedback around:

- The distribution of information between the popup and the box. Some information is more helpful in the popup to decide whether or not to investigate further.

- Having more guidance on how to use this information.

- Showing some of this information on Diff pages so that editors have access to it while comparing revisions.


# What’s next?

The implementation is currently in the works and we’ll be rolling it out to wikis slowly as a BetaFeature, incorporating improvements based on usability testing. We’ll also be implementing feedback mechanisms in the tool so that we can learn more about how people are using the tool. To follow the updates on this feature and join the discussion, check out the project’s page on <a href="https://meta.wikimedia.org/wiki/IP_Editing:_Privacy_Enhancement_and_Abuse_Mitigation/IP_Info_feature" target="_blank">Wikimedia’s Meta-Wiki</a>.

_Cover image by Tristan J. Wilson. Taken from <a href="https://commons.wikimedia.org/wiki/File:TJDW_Stonehenge_20111107.tif" target="_blank">Commons</a>, licensed under <a href="https://creativecommons.org/publicdomain/zero/1.0/deed.en" target="_blank">CC0 1.0</a>._

_Thanks to Carolyn Li-Madeo, Rita Ho, Aida Ramirez, Jessica Klein & Niharika Kohli for your feedback and editing help._
