+++
title = "Delayed Impact of Fair Machine Learning"
authors = "Liu et al."
year = 2018
+++

## Notes

Fairness in ML has typically been studied under _static_ assumptions, i.e.
without considering how the underlying data changes over time.

The authors study how fairness criteria interact with indicators of well-being
over time. They find that even in a one-step feedback model, fairness criteria
do not promote improvement over time, and can actually harm in cases where an
unconstrained (from a fairness POV) objective would not.

The authors consider equal selection rates and equal true positive rates as
their fairness criteria.

The authors then consider three possible outcomes as consequence of a selection
policy: decline, stagnation and long term improvement, based on the expected
difference in mean score of a given group.

For both fairness criteria, all possible outcomes can occur: (_stagnation_),
_long-term improvement_ and _decline_ (aka _active harm_) of the expected
difference between two groups.

The authors also consider alternatives to hard fairness constraints, such as
fairness as a regularization term and optimizing for group score improvement
directly.

They also perform simulations to evaluate their findings.

Incredibly boring paper

## Questions to ask

- page 1: three criteria, but I can only find two?
- page 3: "our results also go through if ∆μj (τ ) simply refers to an abstract
  change in well-being", how/why?

## Questions to answer

- **What is the claimed contribution of the paper?**
  - one-step feedback model that allows for the quantification of long-term
    impact of classification on different groups within a population
  - the _outcome curve_, which can be used to visualize when a given criterion
    is preferable to others
  - find that measurement error affects fairness criteria
  - evaluation of alternatives to hard fairness constraints
- **Given your experience in other courses (e.g., NLP, Computer Vision...), can
  you foresee this approach being applied in other domains?**
  - i have a hard time seeing how this could be applied beyond binary
    classifications of group of people
- **Do you see any obvious weakness in the method?**
  - it only looks at one-step changes.
  - its fairness criteria are somewhat arbitrary/reductive
- **Do the experiments make sense?**
  - i think so
- **If applicable, do the baselines seem solid enough for evaluation?**
  - no baselines presented
- **Do you think the results validate the claims made at the beginning of the
  paper?**
  - not sure tbh
