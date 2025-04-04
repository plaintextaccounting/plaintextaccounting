% Eco accounting

Eco accounting means taking account of all impacts on surrounding ecologies - particularly environment and society.
Let's make this a no-brainer everywhere - please help.

*This page is currently hosted at https://wiki.plaintextaccounting.org/Eco-accounting (on github), 
uses Plain Text Accounting in examples, and is a small view of the topic from the PTA perspective.
Of course the topic is large, not PTA-specific, and deserves its own site, but since I found no 
https://ecoaccounting.org I have set up that domain to redirect here. Domainers, the domain is not for sale.
Respected environmental organisations with a better use for this domain, feel free to chat.*

## Reference
A small random list of background resources:

- How To Avoid A Climate Disaster, Bill Gates - useful definitions of carbon emissions
- https://en.wikipedia.org/wiki/Greenhouse_gas_emissions
- https://en.wikipedia.org/wiki/Carbon_footprint
- https://en.wikipedia.org/wiki/Carbon_accounting
- https://en.wikipedia.org/wiki/Environmental_accounting
- https://en.wikipedia.org/wiki/Environmental_economics
- https://en.wikipedia.org/wiki/Ecological_economics

## Environmental Cost-Benefit Report

In current times, most human endeavours should maintain and publish an environmental cost/benefit report. 
The naming might vary in english; "Environment Impact Report" is familiar, but can sound more dull and scary.
"Climate Impact Report" is more punchy, but also less general.

"Cost" means some environmental impact such as resources used (energy, water, land..)
or undesirable waste generated (carbon dioxide, toxins, heat, noise, harm..).

No matter how approximate, any such report is better than nothing; 
it builds awareness and know-how, it allows comparison and trend analysis, and it can be continually improved.

## Carbon accounting

Rough estimates are better than nothing. Other estimation procedures welcome!

### Estimate total carbon footprint
Carbon footprint correlates roughly with economic activity.
Estimate yours by your total regular (carbon-emitting) expenses,
minus any clearly carbon-offsetting expenses (such as carbon offsets purchased).
Optionally convert this by some rate, which can be estimated by comparing with online carbon footprint calculators periodically. The rate will probably be relatively stable over time.

```
; estimate that one dollar spent generates 2 "C", approximate carbon emission unit
P 2022-01-01 $ 2 C
```

then

`hledger bal expenses not:tag:carbon-offset -X C`
minus
`hledger bal expenses tag:carbon-offset -X C`

### Estimate carbon footprint from air travel
When recording flight purchases, also record the flight distance as a tag.
Optionally modify that number based on the flight's efficiency rating.
(These can be seen in flight planners such as Google's.)

We need a way to use that tag as the amount (or an amount modifier. `--amount 'amount * tag(carbon)'` ?)

## Waste accounting

- [Waste and recycling tracking](https://www.flypig.co.uk/waste) 
  - [A Year Being Human: Inputs and Outputs](https://www.flypig.co.uk/list?&list_id=830&list=blog), 2023

## Solar energy value

- [Solar Energy Value](https://tackler.e257.fi/docs/examples/solar-energy-value)
