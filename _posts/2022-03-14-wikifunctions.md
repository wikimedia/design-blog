---
layout: post
title: "Designing Wikifunctions, brick by brick."
image: /assets/uploads/wikifunctions/header.jpg
excerpt: Wikifunctions will be a collaboratively edited multilingual library of functions.
date: 2022-03-14T07:30:00.585Z
---

_By [Aishwarya Vardhana](https://www.aishwaryavardhana.com)_

# What is Wikifunctions

Wikifunctions will be a collaboratively edited multilingual library of functions. It will be the first platform The Wikimedia Foundation launches since <a href="https://en.wikipedia.org/wiki/Wikidata" target="_blank">Wikidata</a> in 2012, and part of a bigger vision towards an Abstract Wikipedia, which you can read about at <a href="https://meta.wikimedia.org/wiki/Abstract_Wikipedia" target="_blank">Abstract Wikipedia on meta-wiki</a>.  

## A function and its parts

If you’re not a programmer you might not be familiar with what a function needs to be usable, or to use technical-speak “to run”. A function takes an input (e.g. the population of a city) and provides an output (e.g. the acres of watershed needed to supply residents with water). It can do this calculation over and over again for different cases. 

A function has three parts. The function definition (part 1), the implementation (part 2), and a test (part 3) to validate. These three components – the definition, implementation, and tests – are what a function needs to perform and be usable.

A definition defines the functions behavior. What type of inputs does it accept? How many? What will it output? An implementation is the set of instructions that transforms an input into an output. A test is what validates the implementation and ensures it performs correctly. 

<figure>
  <img src="{{ "/assets/uploads/wikifunctions/function-model.png" | relative_url }}" alt="Function model">
</figure>

## What can functions do? 

For starters, you might use a function to wake up in the morning. Let’s say you want to sleep 8 hours tonight, you could ask a function, *“If I go to sleep at 10 P.M. what time should I wake up to get 8 hours of sleep?”*

### Examples of general questions that could be answered by functions:
- What is the distance from my house in northern Sao Paulo, Brazil to the nearest beach?
- If I took out a $240,000 loan and my loan term is 30-year fixed with a 4% interest rate, what is my monthly mortgage?
- If the omicron variant has a transmission rate of 25% among vaccinated people, how quickly could it spread in a city with 2,059 people per square kilometer, 95% of whom are vaccinated?
- When in the next ten years will my birthday fall on a Saturday if I was born March 28, 1954?

### Examples of Wikimedia-related questions that could be answered by functions:
- Given the dates of birth and death of a person, how old did the person get?
- Given a population and an area, what is the population density?
- Given an image on Commons, crop it and run it through a filter
- Given two images on Commons, which one is more red?
- Based on Wikidata, how are Queen Elizabeth II and Barack Obama related to each other?

Functions are ubiquitous in modern life, from the apps we use daily (e.g. maps and search) to the analyses made by scientists, doctors, journalists, and financial advisors, functions enable our activities by efficiently and precisely making meaning through calculations. 

Functions will provide the code that translates language-independent articles from Abstract Wikipedia into natural language Wikipedia articles. This will theoretically allow more people to share more knowledge in more languages! 

**This blog post is about how to create, view, and edit functions in Wikifunctions, and the design process behind making this happen.**

# Our audience

Similar to other Wikimedia projects, our hope and aim is for Wikifunctions to be inviting, accessible to, and available to all people across the world. This is why we are designing a **multilingual platform that is mobile friendly**. 

There are several roles for people within the Wikifunctions ecosystem. There are “answer seekers”, or people who simply want to learn about functions and use them. A level deeper are those who edit or materially contribute to Wikifunctions in some capacity. They could be function patrollers, programmers who write implementations, translators, admins who approve of proposed implementations and tests, or test writers who QA implementations. These folks will maintain functions and documentation. Among these editors there will be technical and nontechnical folks. Leading up to launch and post-launch, **our team aims to increase the agency of the nontechnical folks and “junior” techies** by creating pathways for them to contribute meaningfully. 

Part of creating these pathways is simplifying a complicated process. Functions are not simple. They are complex in that they require computational thinking and well-written documentation. When designing the creation experience, our objective was to design an editor interface that looks and feels friendly to nontechnical people and radically simplifies a complex process.

# Our approach

We explored different mental models for Wikifunctions such as collaborative coding, a structured Q&A forum, a homework helper, infrastructure for Abstract Wikipedia, and a ‘generic library of functions’. **We settled on the structured Q&A model, where we conceive of functions as tools which can answer structured questions**. 

<figure>
  <img src="{{ "/assets/uploads/wikifunctions/our-approach.png" | relative_url }}" alt="Our approach">
</figure>

WMF’s mission is to unlock knowledge and help all people share in it, freely. The Abstract Wikipedia team believes that functions can play a key role in unlocking knowledge, and sees Wikifunctions as a crucial player in moving all of us towards this mission. 

It is a source of power to know how to write and use functions. It gives the person the power of knowledge creation. Our objective when designing the function creation experience was to make it as friendly, intuitive, and simple as possible so that more people can have access to this power. 

### Our design principles

1. Conceptual simplicity: Given the complex nature of this project, our team aims to radically simplify the concepts involved so that we might be inclusive of all people, especially those who are less familiar with functions, code, natural language processing, or lexicographic knowledge. 
2. Intuitive interface: We want to build a system with a shallow onramp, one that anyone can figure out and engage with in meaningful ways. We wish for there to be little gap between a newcomer’s existing knowledge (i.e. current knowledge) and the knowledge they need to operate the product (i.e. target knowledge). Our interface will provide community members with an uninterrupted experience, where they are well-supported to complete tasks with relative ease and confidence. 
3. Multilingual: In a world where all people can share in the sum of all knowledge, it is critical that Wikimedia products are designed as multilingual interfaces and experiences. From the beginning, the Abstract Wikipedia team will prioritize designing for and testing in the native languages of our community-members. Our objective is to move at the speed of trust with all populations, but especially with small Wikis and underrepresented groups. 
4. Balance: We wish to acknowledge that many of our community members will be veterans of Wikipedia, Wikidata, or any of the movement’s other projects. Many of them will be highly-skilled at navigating technical interfaces and desire customizability similar to Wikipedia or other open source projects. The challenge before us is prioritizing the needs of non-programmers and those with little-to-no coding experience while keeping in mind the expectations of veterans. This will require flexibility and openness in our designs, and filtering design decisions through multiple lenses in order to ensure that we are not locked into any one particular user experience. 

### We have implemented these principles by doing the following:
- Intentionally minimizing the use of technical jargon and providing a glossary of terms 
- Providing tooltips and informative microcopy on every interface
- Focused attention on information hierarchy so as not to overwhelm users with information
- User testing with nontechnical people and iterating to meet their needs and expectations 
- User testing with technical people to ensure we are not causing irritation or creating unnecessary roadblocks to their progress
-Multilingual design and usability testing (testing is in the planning process)

# How to use Wikifunctions

## Creating a function

Let’s say we wanted to create a function that determined if two words rhymed. The “two words” are two inputs of type <a href="https://en.wikipedia.org/wiki/String_(computer_science)" target="_blank">string</a>, and the output is a single “yes or no”, which is a type <a href="https://en.wikipedia.org/wiki/Boolean_data_type" target="_blank">Boolean</a>. To create a function that could do this, we would need to tell the system, “Hey this function **<em>accepts two inputs</em>**, both have to be **<em>strings</em>**, and the function’s output will be a **<em>Boolean</em>**.”

**This process is known as “defining” the function, and it is the first step in creating a function.**

Our team believes that the UI and UX for defining a function must be as inclusive as possible because, technically, anyone can do it. It requires no coding or composition writing. Defining a function can be thought of as a request: *“Hey I want a function that does X”* translates to *“the function accepts this input, returns this output”*. We also provide a way to add documentation so that the user can further explain what they’re looking for. 

## Design challenge 1: The function editor

We initially planned to design a “function editor” that provided an end-to-end experience, meaning users could define, implement, and test in one environment. Since we were designing for **technical and nontechnical people**, we hypothesized that unifying the experience would:
- Simplify the concept of what a function needs
- Provide a contextual experience which would be helpful for nontechnical users 
- Keep related tasks together
- Allow more senior editors to move in and out of the process as they pleased
- Not slow down the technical audience from using the editor as they wanted, while providing guardrails for nontechnical users

Early drafts and variations of an end-to-end function editor

<figure>
  <img src="{{ "/assets/uploads/wikifunctions/early-draft01.png" | relative_url }}" alt="Early draft 1">
</figure>

<figure>
  <img src="{{ "/assets/uploads/wikifunctions/early-draft02.png" | relative_url }}" alt="Early draft 2">
</figure>

<figure>
  <img src="{{ "/assets/uploads/wikifunctions/early-draft03.png" | relative_url }}" alt="Early draft 3">
</figure>

The UX was inspired by <a href="https://dribbble.com/tags/miro" target="_blank" rel="noopener">Miro</a>, <a href="https://dribbble.com/figma" target="_blank" rel="noopener">Figma</a>, <a href="https://wd-query-builder.toolforge.org/" target="_blank" rel="noopener">Wikidata query builder</a>, and <a href="https://dribbble.com/tags/typeform" target="_blank" rel="noopener">Typeform</a>.

**Pivoting –** we tested these mockups with technical non-Wikimedians and Wikimedians, and the results were overwhelmingly positive. However, as our developers were building this design, **we realized that the underlying design of the system was incompatible with this approach.** Function definitions, implementations, and tests are all separate objects in Wikifunctions, and each object can refer to other objects within it, such as data types (e.g. strings, Booleans, or other functions). **Due to the complexity allowed for each object, we decided it’s best to keep each creation experience separate.** Objects also have their own pages, so any object you create automatically publishes as a Page.  

Today the function editor is a place only for defining the function, in other words part one of creating a function.

<figure>
  <img src="{{ "/assets/uploads/wikifunctions/creating-function.png" | relative_url }}" alt="Creating a function">
</figure>

<figure>
  <img src="{{ "/assets/uploads/wikifunctions/creating-function-steps.png" | relative_url }}" alt="Steps in creating a function">
</figure>

The function editor as it currently exists today

<figure>
  <img src="{{ "/assets/uploads/wikifunctions/function-editor.png" | relative_url }}" alt="function editor">
</figure>

## Design challenge 2: A function page

When you publish a function that you’ve defined, it is saved and published as a function page. **This is the page where all parts of a function live.** We framed this page as an entry point for the community to learn about, use, and/or edit a function. The goal of this page is to help people progressively edit a function or simply engage with one. The challenge of this page, and a Wikifunctions motif, is that the page must appeal to both non-technical and technical people.

### Our short term goals were to 
- Help all users **UNDERSTAND** the function so that they can edit or use it
- **ENCOURAGE** users with coding backgrounds to make technical contributions
- **ENCOURAGE** users who are not coders to make non-technical contributions
- Usability test a Figma prototype of the product solution with people who have a strong coding background

### Our hopes and dreams were to 
- Encourage everyone that views a function to try using it
- Support coders who want to make technical contributions
- Encourage users who don’t code to make non-technical contributions because functions need names, aliases, translations of the name/input labels, and documentation

### We aimed to avoid
- Confusing, discouraging, overwhelming, or intimidating non-coders 
- Unintentionally signaling to non-coders that this isn’t a space for them 
- Irritating coders by slowing them down or hiding important actions

The function page as it currently exists today. A user lands on a function page’s ‘About’ tab and can toggle between ‘About’ and ‘Details’.

<figure>
  <img src="{{ "/assets/uploads/wikifunctions/function-page.png" | relative_url }}" alt="function page">
</figure>

A user can learn more about the technical details of the function on the ‘Details’ tab, such as how many available implementations and verified testers it has, and what the definition is.

<figure>
  <img src="{{ "/assets/uploads/wikifunctions/function-details.png" | relative_url }}" alt="function details">
</figure>

## How to get involved with Wikifunctions

- Subscribe to our <a href="https://lists.wikimedia.org/postorius/lists/abstract-wikipedia.lists.wikimedia.org/" target="_blank">mailing list</a> to get weekly updates from our product lead Denny Vrandecic. <a href="https://meta.wikimedia.org/wiki/Abstract_Wikipedia/Updates" target="_blank">Read past newsletters on Meta-wiki</a>!
- Join our <a href="https://t.me/Wikifunctions" target="_blank" rel="noopener">Telegram community</a> or our <a href="https://kiwiirc.com/nextclient/irc.libera.chat/#wikipedia-abstract" target="_blank" rel="noopener">IRC channel</a> (mirrored) for in-depth conversations on Wikifunctions
- Follow us on <a href="https://twitter.com/Wikifunctions" target="_blank">Twitter</a> for team and product updates
- Email me (<a href="mailto:avardhana@wikimedia.org">avardhana@wikimedia.org</a>) if you’re interested in product testing 

<br>
_Thank you to Nicolas Ayoub, Amin Al Hazwani, Sudhanshu Gautam, Genoveva Galarza Heredero, David Martin, Nick Wilson, and Denny Vrandečić for their contributions!_