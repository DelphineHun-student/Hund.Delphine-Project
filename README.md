# Social Perception of Body Morphology in Sports Students  
## Pre-manipulation Study

Master of Science (MSc) — Engineering and Ergonomics of Physical Activity  
Faculty of Sports and Health Sciences (UFR STAPS)  
University of Montpellier  

**Author:** Delphine Hund (Master 1 IEAP Digimove)  
**Supervisors:** Ludovic Marin, Mathilde Parisi, Stéphane Raffard, Rachel R. Rodgers  
**Course:** Python, R and Git for Data Analysis  
**Academic Year:** 2025–2026  
**Date of Defense:** Tuesday 17 March 2026  

---

## Project Overview

This project aims to validate a set of animated avatars representing different body morphology categories.  
The study evaluates whether participants’ perceptual judgments match the intended morphology labels before inclusion in a larger experimental protocol.

---

## Repository Structure
<pre>
.
├── DAT/
│   ├── raw/
│   └── clean/
├── PRG/
│   ├── 01_preprocessing.R
│   └── 02_statistics.Rmd
├── RES/
│   ├── plots_avatar/
│   └── stimulus set/
├── main.Rmd
├── main.Rproj
|–– Hund.Delphine.html
├── assets/
│   └── header.html
├── renv.lock
|── renv/
|–– LICENSE
└── README.md
</pre>

## Reproducibility

This project uses **renv** to ensure reproducible package versions.

To reproduce the analyses:

1. Open `main.Rproj`
2. Run `main.Rmd`

This will:  
- Execute `01_preprocessing.R` and `02_statistics.Rmd`  
- Generate all outputs in the `RES/` folder  

### Outputs
<pre>
DAT/
└── clean/
     ├── pre_manip_ratings.xlsx
     ├── pre_manip_ratings.csv
     └── pre_manip_ratings.rdata
RES/
├── 02_statistics.html
└── plots_avatar/
</pre>

### Scientific report
The scientific report describing the study design, analyses and results is available in:
`Hund.Delphine.html`

---

## Final Stimulus Set (F and M)

![](RES/stimulus%20set/stimulus_set_F_VF.png)

![](RES/stimulus%20set/stimulus_set_M_VF.png)

## References

Voges MM, Giabbiconi C-M, Schöne B, Waldorf M, Hartmann AS and Vocks S (2019).  
*Gender Differences in Body Evaluation: Do Men Show More Self-Serving Double Standards Than Women?*  
Frontiers in Psychology, 10:544.  
https://doi.org/10.3389/fpsyg.2019.00544
<br>
Amanda Baker, Arnd Florack (2021).     
*Uncovering men’s stereotype content (warmth and competence) associated with a representative range of male body size categories*,    
Body Image, Volume 37, Pages 148-161, ISSN 1740-1445.     
https://doi.org/10.1016/j.bodyim.2021.02.007.