#import "../../template.typ": project

#show: project.with(
  title: "Evaluation Framework: The Lab Muffin Matrix",
  doc_id: "11.05",
)

To determine if a skincare product is a "scam" or "science," Dr. Michelle Wong (Lab Muffin Beauty Science) proposes a matrix to evaluate evidence across two axes: *Ingredients* and *Specific Formulas*.

== The Lab Muffin Matrix

#table(
  columns: (1fr, 1fr),
  inset: 10pt,
  [*Axis 1: Ingredient Evidence*], [*Axis 2: Formula Evidence*],
  [
    - *Theoretical Evidence:* Does the molecule possess properties to penetrate the skin? Does it have a known mechanism of action (e.g., binds to RARs)?
    - *In Vivo Evidence:* Has the ingredient been tested on actual people (even if in small trials)?
  ],
  [
    - *Theoretical Stability:* Is the ingredient stable in this specific delivery system (e.g., encapsulated retinol vs. open jar)?
    - *Actual Testing:* Has this *specific brand's* formula been tested? (Look for companies that invest in R&D).
  ]
)

== Levels of Evidence for Retinol

#table(
  columns: (auto, auto, 1fr),
  inset: 10pt,
  [*Type of Evidence*], [*Confidence Level*], [*Examples*],
  [Mechanistic], [Very High], [Conversion Path: Retinol -> Retinal -> Tretinoin],
  [Biological Markers], [High], [Increased Collagen, CRABP-II mRNA, EGF activation],
  [Clinical (Small N)], [Moderate], [J&J study ($N=40$), double-blind, placebo-controlled],
  [Clinical (Large N)], [Low (Sparse)], [Very few large-scale cosmetic trials exist]
)

== Practical Conclusion

It is unscientific to claim an ingredient "doesn't work" simply because it lacks large-scale medical-grade trials. For retinol, the combination of *pharmacological mechanism*, *biopsy data*, and *consistent small-scale trials* builds a compelling case for its efficacy in treating photoaging and hyperpigmentation.
