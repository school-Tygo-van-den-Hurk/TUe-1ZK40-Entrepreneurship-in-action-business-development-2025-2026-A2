#set document(
  title: "Designing & Testing Concept Solutions",
  author: (
    "Tygo van den Hurk",
    "Merve Kaya",
    "Selen Guven",
    "Simeon Delev",
    "Mike Roelofs",
  ),
)

#let TUe_color = rgb("#c81919")

// Title card up top
#{
  show title: it => text(fill: TUe_color, it)

  let orcid = (id) => box(
    height: 8pt,
    link(
      "https://orcid.org/" + id,
      image("orcid-logo.svg")
    )
  )

  let tygo = [
    #orcid("0009-0003-4182-5076")
    Tygo van den Hurk\
    t.j.f.h.v.d.hurk\@student.tue.nl\
    Eindhoven University of Technology 
  ]

  let merve = [
    Merve Kaya\
    m.kaya\@student.tue.nl\
    Eindhoven University of Technology 
  ]

  let selen = [
    Selen Guven\
    s.guven\@student.tue.nl\
    Eindhoven University of Technology 
  ]

  let simeon = [
    Simeon Delev\
    s.delev\@student.tue.nl\
    Eindhoven University of \
    Technology 
  ]

  let mike = [
    Mike Roelofs\
    m.roelofs1\@student.tue.nl\
    Eindhoven University of \
    Technology 
  ]

  let author-table = (..args) => align(center, table(
      columns: (auto, auto, auto, auto, auto),
      stroke: none,
      align: center,
      ..args
    )
  )
  
  box(width: 100%)[
    #align(center)[#title()]
    #author-table(tygo, merve, selen)
    #author-table(simeon, mike)
  ] 
}

// Set Header style
#set heading(numbering: "1.1.1")
#show heading: content => text(fill: TUe_color, content)
#set heading(numbering: (..nums) => {
  let nums = nums.pos()
  let full = nums + (0,) * (3 - nums.len())
  text(
    fill: TUe_color, 
    full.map(str).join("."),
  )
})

// Table style
#set table(
  stroke: 1pt + black,
  inset: 8pt,
)

#let vertical-table(..args) = {
  show table.cell.where(x: 0): strong
  table(
    fill: (x, y) => if x == 0 { gray.lighten(80%) },
    ..args
  )
}

#let horizontal-table(..args) = {
  show table.cell.where(y: 0): strong
  table(
    fill: (x, y) => if y == 0 { gray.lighten(80%) },
    ..args
  )
}

= Retrospective Sprint 1 

*In your sprint 2 report, you must/can (see previous slide) include in a first paragraph (titled: Retrospective Sprint 1) updates and reflection from Sprint 1. The updates and reflections can consist of:*

- *Interviews conducted after submission of your sprint 1 report;*
- *Updates to the conclusions or findings in your sprint 1 report;*
- *Reflections on learnings from sprint 1, what would you do differently next time?*

*The Retrospective paragraph will be reviewed may result in an upward adjustment of your Sprint 1 report grade (0, 1 or 2 points). Review will use the Sprint 1 Rubric as a basis.*

== Interview 1 

The following interviews were conducted after the submission of oursprint 1 report; 

#figure(
  vertical-table(
    columns: 2,
    [Name ],              [Eric van de Wiel],
    [Organization],       [Wheel Energy Services],
    [Organization type],  [Solar panel installation for homes ],
    [Role],               [Installation],
    [Interview type],     [Online, semi-strructured],
  ),
  caption: [Information about the first person we retroactively interviewed]
) <retroactive-interview-details-1>

From the interview with Eric, a view insights were gained that are relevant for our particular market segment. Firstly, Wheel Energy Services is mostly concerned with private individuals. For this segment, size becomes an important factor, which gravity-based energy storage is not suitable for. This technology is mostly applicable for large-scale industrial solutions. They were not doing much with energy storage yet, because they felt that the technologies currently available were not satisfying customer needs, and that installing a battery would not fit within their service-based business model. Gravity-based can work as a service, as we could provide case-by-case custom solutions using this technology, but we would work in a different segment anyway. 

== Interview 2 

#figure(
  vertical-table(
    columns: 2,
    [Name ],              [Alexander Tasche],
    [Organization],       [TU/e],
    [Organization type],  [Technical University],
    [Role],               [Student],
    [Interview type],     [Offline, semi-structured],
  ),
  caption: [Information about the second person we retroactively interviewed]
) <retroactive-interview-details-2>

I had an interview with Alexander Tasche a very competent mechanical engineering student who knows a lot about mechanical stress with relation to how that behaves over long spans of time with a particular fascination for mines. 

He mentioned that repurposing old mine shafts as free vertical real estate is not without risks. The largest risks failure of the parts (the cables snapping or motors failing), but also the time for return on investment talking far too long. 

He thinks that since they are idle for most of the day, the amount money you can make just simply isn’t large enough to quickly make a return on your investment. He mentioned it would probably take years or decades. In that large time is when the cables or motors could probably fail. 

So when starting out he recommended to really look for motors with the least amount of maintenance as possible, as I quote: “think that if executed well this has a good chance of making back its money and adding resilience to the energy grid. However, I don't think this project will make you rich.” 

Then there are the competitors. Alexander didn’t say this, but a conclusion I am drawing from what he said is that since it is so simple literally anyone can do this. So, if it does blow up, I think you’ll have a dozen competitors popping up out of nowhere.  

= Introduction  

== Background and Context  

The global energy transition has accelerated the spread of renewable energy sources such as wind and solar power. While these technologies are essential for reducing greenhouse gas emissions, they introduce significant challenges for electricity systems due to their weather dependency and irregularity. As a result, the ability to store excess renewable energy and release it when generation is low has become critical to support large-scale renewable energy systems.  

Energy storage technologies currently play a big role in addressing this challenge. However, widely adopted solutions such as lithium-ion batteries face increasing doubts in usage due to limitations related to safety risks, degradation over time, environmental impact, and reliance on scarce materials. These drawbacks create opportunities for alternative storage technologies that can offer long lifetimes, improved safety, and sustainable operation. 

== Gravity-Based Energy Storage as an Opportunity 

Gravity-based energy storage is an emerging energy storage technology that converts electrical energy into gravitational potential energy by lifting heavy masses and converts it back to electricity by lowering them through generators. Unlike many other energy storage technologies, gravity-based energy storage does not rely on chemical reactions, resulting in minimal degradation, high operational safety, and long system lifetimes. Furthermore, it is scalable and can be adapted to large, stationary applications where space and infrastructure constraints are manageable. 

In Assignment 1, we explored and evaluated multiple market opportunities for gravity-based energy storage. Based on this evaluation, the market opportunity of energy storage for wind and solar farms was identified as the most promising segment due to its strong problem-solution fit, large and growing market volume, and strategic importance in the renewable energy transition. 

== Focus of Assignment 2 

Building on the findings of Assignment 1, in this assignment, we focus on designing and testing a concept solution for gravity-based energy storage targeted at wind and solar farm operators. Our primary objective is to validate the selected customer segment and test whether the proposed value proposition effectively addresses the customers’ most critical jobs, pains, and gains. 

Following a customer-centric approach, we use the approach of direct engagement with potential customers through interviews, complemented by online market research. Insights from this research are then used to construct a validated customer profile, design a corresponding value map, and translate this value proposition into a minimum viable product (MVP). The MVP is then tested with potential customers to gather feedback and update the concept solution. 

= Methodology  

== Overall Approach 

The methodology used in this assignment follows a value proposition design framework, with an emphasis on customer discovery and validation. Approximately 80% of the effort was dedicated to understanding the customer through qualitative interviews and targeted market research. 

The process consisted of six sequential steps: 

- Validating the customer segment through interviews 
- Conducting online market research 
- Completing the customer profile 
- Designing the value map and MVP 
- Testing the value proposition with potential customers 
- Iterating and updating the concept solution 

Steps are described in more detail below. 

== Customer Segment Selection 

Based on the market opportunity evaluation conducted in Assignment 1, we selected our primary customer segment as the developers and operators of utility-scale wind and solar farms, including independent power producers, renewable energy developers, and energy utilities. 

This segment was chosen due to its clear and urgent need for long-duration energy storage to reduce/prevent the waste of available energy, improve grid stability, and maximize the economic value of renewable generation. Additionally, this segment operates at a scale and with the financial capacity needed to invest in infrastructure-heavy storage solutions such as gravity-based energy storage. 

== Customer Interviews  

To validate the customer problem and gain a deeper understanding of customer needs, X semi-structured interviews were conducted with individuals active in or closely connected to the wind and solar energy sector. Interviewees included professionals involved in solar installation, renewable project development, and energy storage decision-making. The interviews were designed using the Value Proposition Canvas as a guiding framework, focusing on: 

- Customer jobs (functional, economic, and strategic) 
- Key pains related to energy storage and grid integration 
- Desired gains and success criteria when evaluating energy storage solutions.  

== Online Market Research  

In parallel with the interviews, online market research was conducted to contextualize and complement the qualitative findings. This research focused on: 

- Market size and growth of wind and solar energy farms 
- The number and type of organizations operating renewable assets 
- Existing energy storage solutions used in renewable projects 
- Regulatory and policy drivers influencing storage adoption 

Sources included industry reports, academic publications, company websites, and publicly available energy market data. The insights gathered were used to strengthen the customer profile and assess the commercial relevance of the identified problems. 

== Customer profile development 

Using insights from both interviews and market research, a validated customer profile was developed. This profile systematically describes: 

- The most important jobs customers are trying to get done  
- The main pains experienced with current energy storage solutions  
- The gains customers seek when investing in energy storage  

The customer profile served as the foundation for designing a value proposition with strong problem-solution fit. 

== Value map and MVP design 

Based on the validated customer profile, a value map was created, detailing: 

- The proposed product and service offering 
- Pain relievers that address the most critical customer pains 
- Gain creators that enable desired outcomes for the customer 

This value map was then translated into a minimum viable product (MVP) in the form of a visual and conceptual representation of a gravity-based energy storage solution, designed for wind and solar farm applications. The MVP focused on communicating core functionality, value drivers, and differentiation rather than technical completeness. 

== Value proposition testing and iteration 

The MVP and value proposition were tested with X potential customers from the target segment. Feedback was collected regarding perceived value, feasibility, risks, and willingness to engage further. Key assumptions underlying the value proposition were explicitly examined during these interactions.? 

Based on the feedback received, the value map and concept solution were revised to better align with customer expectations and constraints. This iterative process ensured that the final concept reflects validated customer insights rather than untested assumptions. 

= Interview Insights 

In the table below, the characteristics of the interviewees can be seen, ranging from their organizations to roles and more:  

#figure(
  vertical-table(
    fill: (x, y) => if x == 0 { gray.lighten(80%) },
    columns: 5,
    [Name],               [Bas Hanrats ],                           [Kevin Koolen],                                                     [Marieke Groep],            [Thomas Stroess],
    [Organization],       [Solar Team Eindhoven ],                  [Van den Heuvel],                                                   [Enexis],                   [Saltes],
    [Organization type],  [Student team producing solar vehicles ], [Infrastructure projects for energy, water and telecommunication],  [Net management ],          [Producer of Salt-based thermal energy storage],
    [Role],               [Board, member acquisition ],             [Allround-employee],                                                [Training coordinator ],    [CEO & Co-founder ],
    [Interview type],     [In-person, semi-structured ],            [Online, semi-structured],                                          [Online, semi-structured],  [Online, questionnaire],
  ),
  caption: [Interviewee Characteristics  ]
) <interviews>

A few of the key insights we gained from the interviews are: 

== Knowledge about gravity-based energy storage 

From all these interviews it became apparent that none were exactly sure what gravity-based energy storage entails. This tells us that gravity-based energy storage has not been considered by these companies as an option simply due to not knowing that it exists, let alone what its benefits are. After explaining what the technology is to the interviewed people, they were mostly positive about its possibilities. This suggests that the landscape of gravity-based energy storage solutions is either not relevant for our market, or underexplored and underused. If the latter is the case, these are strong signs of a good market opportunity. 

== A wish to transition 

While all companies claim to have sustainability as a core value of their company, they still mostly rely on lithium-ion batteries for their storage solutions. This is because of their energy density and cost-effectiveness. However, many did express that they are willing to look into more sustainable options in the future, as long as they satisfy their needs. Also, this wish to transition seems to be halted, because the entire market needs to move together. Customers cannot buy sustainable solutions if producers are not making viable products, and producers will not produce such products if the customers are not willing to spend the money. If laws and regulations don't push the market, disruptive innovation is almost required to force this transition. Our technology can be this disruptive innovation, providing sustainability and a better image as a substantial gain. 

However, the focus on lithium-ion batteries also highlights one significant downside of our chosen technology: Energy density. In cases where small, lightweight batteries are required, especially on moving vehicles, our technology is simply not applicable. Thus we need to think outside the box and look at customers whose needs do not include such aspects. 

== Net under pressure 

The most important pain that can be recognized in these interviews is the immense pressure on the energy net. Industrial endeavours and data centres are asking for much more energy than the net can handle at times. This has come to the point where new companies need to wait 5 years before they can connect to the net. The most effective pain reliever in this case would be intermittent energy storage solutions close to industrial estates. Gravity-based energy storage solutions can neatly fill this hole in the market. 

A last comment that can really help us find an innovative solution, is that one person mentioned that the height required for this technology can be applied to mountainous terrain. While the Netherlands, which is famous for how flat it is, is not suited for such applications, we could look into other countries where this is the case. The natural height differences could reduce manufacturing costs and time. 

 

= Online Market Research 

To support the insights gained from the interviews, additional online market research was carried out to better understand the size, growth, and relevance of gravity-based energy storage within the renewable energy sector. This research mainly focused on utility-scale wind and solar markets, currently dominant energy storage technologies, and broader challenges within modern energy systems. 

Market data clearly shows that global wind and solar capacity is expanding at a rapid pace. This growth is driven by ambitious climate targets, falling production costs, and strong policy support. At the same time, the increasing share of renewable energy is placing growing pressure on electricity grids. In many cases, renewable energy production exceeds grid capacity, leading to curtailment and wasted energy. These developments highlight the increasing need for large-scale, long-duration energy storage solutions that can be deployed close to energy generation sites or major demand centers. 

At present, lithium-ion batteries dominate the energy storage market. Although these systems are technologically mature and widely used, both academic literature and industry reports point to several concerns. These include performance degradation over time, safety risks, environmental impact, and dependence on scarce raw materials. Such limitations are especially relevant for stationary infrastructure projects that are expected to operate reliably over long time horizons, creating opportunities for alternative storage technologies. 

Gravity-based energy storage is increasingly mentioned in both academic and industry sources as a promising solution for long-duration energy storage. It is particularly well-suited for large, stationary applications, as it offers long operational lifetimes, minimal degradation, and relies on commonly available materials. However, most existing projects are still in pilot stages or early commercialization, indicating that the market is still developing and has not yet reached maturity. 

In addition, regulatory and policy trends are shifting toward a stronger focus on grid stability, resilience, and long-duration storage rather than short-term balancing alone. This shift further increases the relevance of gravity-based energy storage for wind and solar farm operators who must meet regulatory requirements while also maximizing the economic value of their renewable energy production. 

Overall, the findings from the online market research reinforce the conclusion that gravity-based energy storage aligns well with the needs of large-scale renewable energy operators and offers a potential solution to several structural limitations associated with existing energy storage technologies. 

= Customer Profile 

After our interviews, we can narrow our customer down to industrial-scale clients that use sustainable but inconsistent energy production technology's, such as solar- or wind power. They are reliant on providing the net consistently with electricity, meeting the demands of energy consumers, such as large industrial areas and data centers. We will discuss their relevant jobs, pains and gains to inform our value map. 

== Customer Jobs 

Their jobs can be narrowed down to all thing's energy production related. Because the energy input itself is inherently inconsistent, their job is level this input to a consistent stream of energy. Secondly, they must divide this energy to meet the energy demands of their customers. A system needs to be put in place to ensure that everyone always has enough energy, not too much and not too little. This is a careful balance to keep the net safe and to maximize profits. This is especially relevant for industrial scale farms, as there are many smaller customers to keep in mind in a larger area. 

== Customer Pains 

The pains consist mostly of pressure on the net. Because every company that is connected to the grid requires more and more energy, and even more companies want to connect to the grid, the limits of what the grid can take are being reached. According to our interview with Enexis employee Marieke, the wait time can take up to 5 years for a new company to join, because they simply cannot keep up with demand. Also, they are reliant on other players in the market to provide improving technologies. The company responsible for maintaining the grid is not the same as the company producing the parts to build the grid.  This large network means that change can only happen slowly if everyone moves together, which is not always the case. 

== Customer Gains  

What our customer can gain is strongly related to sustainability and image. As we slowly move towards net zero 2050, companies want to be pioneers in sustainability. By providing them high-tech solutions, they can move towards these goals and gain positive press reviews. Next to this, energy storage solutions can futureproof the grid to take more hits and to meet beyond current demands, as our future seems to be filled with more energy intensive technologies. 

= Initial Value Map 

After completing our customer profile, we need to create a value map that alligns with our customer. We need to generally find out what our services will be like to create the gains and relieve the pains that our customers experience. 

== Products & Services 

It has become evident that our customers are unaware of gravity-based energy storage. Therefore, our first service would be to have in-house expertise on the technology and to design custom-fit solutions for our clients. Because no industrial-size energy supplier has the same conditions, our services would need to be tailor-made for that particular case. Therefore, our services consist of consultation, designing and finding the right companies to aid us in the construction of the facilities. We would design the specific products that we use in our facilities ourselves to ensure quality and compatibility. Because we will oversee the entire process from start to end, our engineers will be able to assist for maintenance or upgrading of existing systems. 

== Pain relievers 

The pressure on the net can be relieved by building energy storage facilities close to large industrial facilities. This way, the grid can deliver to this facility first, after which the division of energy can happen at the facility. This way, we can not only provide consistent energy to the customers, but the pressure on the net is now divided in smaller parts, ensuring that any outtages only affect companies locally instead of on province or national scale. 

By producing all products in-house, we remove any reliance on other players in the market. As long as our company is healthy, we can always provide our services to customers. We can also keep R&D going to determine our own pace of innovation, which our customers can reap the benefits of directly. 

== Gain creators 

By constantly innovating ourselves and by tailoring our designs to the needs of our customers, we open the door for many companies who want to be more sustainable to actually achieve their goals. By making the products ourselves, we can always ensure compatibility, so that future improvements consist of additions or replacing parts, instead of the entire system becoming obsolete once upgrades roll out. 

= MVP 

== MVP Description 

To test the validity of our value proposition of gravity-based energy storage in the utility-scale solar and wind farms, we designed a concept-level Minimum Viable Product (MVP). Since the proposed solution was massive and required much infrastructure, it was not possible to build a physical prototype. Rather, the MVP was aimed at testing our assumption with feature prioritisation. 

The MVP included both a graphical and conceptual description of the gravity-based energy storage system, along with a systematically organized discussion of the more important system characteristics. Such aspects were based on our value proposal, previous market research and interviews with the customers.  

Based on the information obtained in the interviews, we obtained the features of the system that were considered as essential, important, less important, or irrelevant. The findings of this prioritisation are summarised in the table 3. Some of the features which were commonly found to be fundamental were high reliability, long-life span of the system, regulatory compliance, high safety and reduced degradation with time. It means that the operators of solar and wind farms mainly pay attention to the robustness, stability of the operations, and mitigation of the risks as the key factors to be considered in terms of the large-scale energy storage measures. 

Characteristics of the investment needs and compatibility with the existent infrastructure were typically perceived as significant meaning that the financial and technical feasibility can have a significant impact on decision-making, but it is still likely to be outweighed by system reliability. Such characteristics like compliance with the sustainability goals and the use of recyclable materials were viewed as helpful but not paramount and so assigned with the lower priority. Lastly, features like small size or aesthetic design were mostly deemed to be irrelevant as it is a fact that solar and wind farms are usually located in locations where space is not a constraint. 

Overall, this MVP served to substantiate our basic premises regarding the priorities of our customers and proved that the concept of gravity-based storage of energy could be very efficient in the context of the needs of the operators of the large-scale renewable energy sources. The lessons learned during this MVP helped to improve our value proposition and further project phases were based on them. 

== Feature Cards

#figure(
  box(
    stroke: (x: none, y: 1pt + black),
    inset: 1pt,
    horizontal-table(
      stroke: ( x: 1pt + black, y: none ),
      columns: 4,
      table.header[Must Have][Important][Nice to Have][Irrelevant],
      table.hline(),
      // ---
      [High reliability],
      [Integration with existing infrastructure],
      [Support sustainability],
      [Compact footprint],
      // ---
      [Long-duration storage],
      [Investment requirements cape],
      [Use of recyclable materials ],
      [Aesthetic design],
      // ---
      [Low degradation over lifetime],
      [Low operation & maintenance costs],
      [Visual transparency of stored energy],
      [Portability],
      // ---
      [High safety (non-flammable)],
      [],
      [],
      [],
      // ---
      [Regulatory compliance],
      [],
      [],
      [],    
      // ---
      [Grid compatibility],
      [],
      [],
      [],
    ),
  ),
  caption: [MVP Feature Prioritisation Results – Solar and Wind Farms]
)
 

== Value proposition testing 

A use case for the MVP was as a testing ground, to see whether our proposed value proposition satisfied the critical needs of solar farm and wind farm operators. By gathering the data from our interviews, we are effectively able to validate our assumptions regarding which elements of our proposed value proposition are considered critically important, while which elements are less so, especially as far as concerns such secondary benefits as appearance or compactness, which obviously play a negligible role in this industry. 

= Value Proposition Testing & Experiments 

Given these updated values we decided to have mini interviews to figure out whether or not our value propositions were any good. The questions were based on our value map, and the downsides to our technology. The interview questions were deliberately low effort to respond to maximise responds rates among our target audience as they were busy at work, and we hoped that this would not be too much to ask from them. 

How important is it that the battery is low maintenance for you? 

15 responders averaged at around an 8 out of 10. This question was since once our battery is build it lasts decades. So, we thought it was a good quality to measure whether people find his value we offer important. 

How important is it that the battery is made from sustainable materials? 

14 responders averaged at around a 7.8 out of 10. This question was since our battery is build from any heavy material. We were thinking concrete but after some research we found out that that material is not sustainable at all. We are looking into if water might be a way of doing this as well, like in england. So, we thought it was a good quality to measure whether people find his value we offer important. 

== How important is it to you that the battery is long lasting?  

15 responders averaged at around an 8.6 out of 10.  I think we made a mistake with the phrasing of this question as we meant long lasting as “it does not break over time” however after more conversations with the people who took time out of their workday to respond we found out they thought we meant capacity. So, I don't know how useful the information is from this question as some might have understood the question the way we meant it,a dn some did not. 

== How important is efficiency to you? 

15 responders averaged at around an 7.4 out of 10. We added this question as gravity-based batteries seem to hover at around 80% efficiency compared to like 90%+ for LI batteries. So, this is a known downside for our batteries. The consensus seems to be that it is not as important as battery duration, nor maintenance. 

= Updated Value Map 

After testing our MVP with our potential customers, we came to some interesting conclusions. 

Firstly, their appreciation of long lasting options is stronger than other values. They want to ensure that their systems operate at all times, and they find this reliability more important than pure efficiency. Therefore, we will focus more on systems that provide long-lasting energy reserves 

Secondly, our gain creators of providing sustainable options can be highlighted even more, as the responders pointed out how important sustainability is to them. This is surprising, as we assumed that most companies say a lot about sustainability without actually taking much action. It is positive to find out that our assumption was wrong. 

Overall, our initial value map aligned decently well with our potential customers, but we need to shift in how we market our products & services and how we present ourselves as a company to promote sustainable, long lasting solutions that make you ready for the future 

= Conclusion 

In this assignment, we designed and tested a concept for gravity-based energy storage aimed at large wind and solar farm operators. Building on Assignment 1, our goal was to check whether this technology actually fits the needs of the chosen customer segment and solves relevant problems. 

From interviews and market research, it became clear that grid congestion, wasted renewable energy, and the need for reliable long-term storage are major challenges. While lithium-ion batteries are still the standard, concerns about sustainability, lifespan, and maintenance leave room for alternatives. Feedback showed that customers value low maintenance, long system lifetimes, and sustainable materials, even if efficiency is slightly lower. 

Overall, our findings suggest that gravity-based energy storage is a realistic and promising option for large-scale, stationary applications. Although further technical and economic validation is needed, the concept shows a good problem-solution fit and provides a solid starting point for further development and testing. 
