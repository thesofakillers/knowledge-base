+++
title = "Bad Seeds: Evaluating Lexical Methods for Bias Measurement"
authors = "Antoniak et al."
year = 2021
+++

In NLP, 'bias' generally refers to _harmful prejudices_ in the data or models
being considered.

To address the issue of bias, it is important to be able to measure it.

Typically most bias measurement procedures rely on lexicon of _seed_ terms that
specify stereotypes or other dimensions of interest relevant to bias.

However, the choice of these seeds is often unclear. The authors of this work
investigate whether the choice of seeds can itself harbour cognitive and
cultural biases that could trickle upstream and downstream.

In particular, the authors

1. explore how seeds are selected and from which sources they are drawn

   - borrowed from social sciences
   - crowd-sourced
     - hard to control for crowd demographics
     - can result in stereotypes being hard-coded into the seeds
   - population derived
     - vulnerable to reductive definition of concepts such as gender
   - adapted from lexical resources
     - do not guarantee validity on new domains
   - corpus derived
     - similar risks to crowd-sourcing
   - curated
     - relies in authors corrections of their own biases
   - re-used

2. explore which features of seeds can cause instability in terms of bias
   - definitional factors
   - lexical factors
   - set factors

The authors focus on static embeddings since these are easier to analyze, but
claim that their results should extend to contextual embedding methods (SPACE
FOR EXPLORATION?).

Authors focus on unigram embeddings, leaving bigram seeds to future work (SPACE
FOR EXPLORATION?)

for each dataset, they train a skip-gram model and compute PCA, WEAT and
coherence metrics.

## Questions

- confused about quantifying variation from seeds (section 6)
- do they even do anything for section 7? Sounds like its a literature review
