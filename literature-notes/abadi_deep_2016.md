+++
title = "Deep Learning with Differential Privacy"
authors = "Abadi et al."
year = 2016
+++

## Notes

- Neural Networks have found success in part thanks to very large, often
  crowdsourced datasets.
- These datasets can often contain sensitive private information, that the
  trained models _should not_ expose.
- Authors approach offers protection against strong adversaries with full
  knowledge of the training mechanism and access to the model parameters.
  - this is attractive in particular to embedded ML, where while privacy is
    preserved via the lack of communication to a central server, the model
    parameters are still vulnerable to local attacks.
- Differential privacy, defined on page 2
- Differential privacy has useful properties
  - **composability**
    - enables modular design of mechanisms
    - if all components of a mechanism are differentially private, then so is
      their composition
  - **group privacy**
  - **robustness to auxiliary information**: privacy guarantees are not affected
    by side information available to adversary
- additive noise is a common paradigm for approximating a real-value function
  with a differentially private mechanism
  - Gaussian noise mechanism is largely used.
- The authors add noise to the gradients computed in SGD and take a step in the
  (opposite) direction of the resulting noisy gradient
  - before adding noise, the gradient is clipped.
  - they claim this is a more sophisticated approach.
- For studying the privacy loss, the authors invent a stronger accounting method
  with a tighter resulting bound. They refer to this new accountant as the
  "moments accountant".
  - this accountant computes the log moments of the privacy loss random
    variable, which are the composed linearly
  - along with the Markov inequality, these can be bound and used to obtain the
    privacy loss
- page 4: definition of moment and its properties
- differential private SGD helps model generalization.
- They get decent accuracy on MNIST and CIFAR, but worse than non-private
  methods. Although the gap is not massive

## Questions to answer

- **What is the claimed contribution of the paper?**

  - can obtain tighter estimates on the overall privacy loss, empirically and
    asymptotically
  - improve computational efficiency of differentially private training by
    introducing new techniques
  - demonstrate that privacy protection can be achieved in deep learning at a
    modest cost

- **Given your experience in other courses (e.g., NLP, Computer Vision...), can
  you foresee this approach being applied in other domains?**

  - yes, because it acts on SGD, which is generally used across all domains

- **Do you see any obvious weakness in the method?**

  - not immediately

- **Do the experiments make sense?**

  - yes, although I'm surprised they don't have an equivalent of Fig. 5 for
    privacy loss instead of accuracy

- **If applicable, do the baselines seem solid enough for evaluation?**

  - what do you mean

- **Do you think the results validate the claims made at the beginning of the
  paper?**
  - yes
  - but didn't say much about computational efficiency in terms of results.

## Questions to ask

- page 2: what is epsilon in epsilon-delta differential privacy?
- page 4: what is the moment of a random variable?
- page 4, equation 1: what is c in c(0, M, aux, etc..) ?
- section 5 and in general: have hard time interpreting delta and epsilon values
  of differential privacy
