+++
title = "'Why Should I Trust You?': Explaining the Predictions of Any Classifier"
authors = "Ribeiro et al."
year = 2016
+++

## Notes

The authors claim that trust is essential for users to taking action on a
prediction made by someone or a model: "if the users do not trust a model or a
prediction, they will not use it."

They propose a novel algorithm known as LIME, which is able to explain the
predictions of _any_ classifier or regressor in an interpretable and faithful
manner.

LIME achieves this by approximating the classifier _locally_ to a given
prediction with an interpretable model (e.g. a linear classifier).

See Figure 3 of the paper.

For selecting representative instances, the authors propose SP-LIME (as opposed
to RP-LIME which randomly selects instances), which makes use of sub-modular
optimization

By selecting several instances (with RP or SP LIME), the authors claim that the
trust in an entire model (rather than in an individual prediction) can be
assessed. See Section 4, algorithm 2 and equation (4).

## Questions to answer

- **What is the claimed contribution of the paper?**

  - LIME
  - SP-LIME
  - an evaluation of the impact of explanations on trust and associated tasks

- **Given your experience in other courses (e.g., NLP, Computer Vision...), can
  you foresee this approach being applied in other domains?**

  - Yes, and the authors even show this. I'm somewhat unsure how it works for
    regression though, as the authors seem to focus on classification.

- **Do you see any obvious weakness in the method?**

  - what happens if the local approximation is insufficient?
  - how do you explain less obvious problems? Interpreting image classification
    is easy

- **Do the experiments make sense?**

- **If applicable, do the baselines seem solid enough for evaluation?**

  - i think so
  - compared with Parzen, greedy, random

- **Do you think the results validate the claims made at the beginning of the
  paper?**
  - i think so

## Questions to ask

- what happens if the local approximation is insufficient?
- how do you explain less obvious problems? Interpreting image classification is
  easy
