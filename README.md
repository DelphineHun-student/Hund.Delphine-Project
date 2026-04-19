# Social Perception of Body Morphology in Sports Students  
## Pilot Study

Master of Science (MSc) — Engineering and Ergonomics of Physical Activity  
Faculty of Sports and Health Sciences (UFR STAPS)  
University of Montpellier  

**Author:** Delphine Hund (Master 1 IEAP Digimove)  
**Supervisors:** Ludovic Marin, Mathilde Parisi, Stéphane Raffard, Rachel F. Rodgers  
**Course:** Python, R and Git for Data Analysis  
**Academic Year:** 2025–2026  
**Date of Defense:** Tuesday 17 March 2026  

---

## Project Overview

This project aims to validate a set of animated avatars representing different body morphology categories.  
The pilot study evaluates whether participants’ perceptual judgments match the intended morphology labels before inclusion in a larger experimental protocol.
The analysis is implemented through a fully reproducible pipeline using R and renv.

---

## Repository Structure
<pre>
.
├── DAT/
│   ├── raw/
│   └── clean/
├── PRG/
│   ├── 01_preprocessing.R
│   ├── 01.1_preprocessing.R
│   ├── 02_statistics.Rmd
│   └── 02.1_statistics.Rmd
├── RES/
│   ├── plots_avatar/
│   ├── plots_avatar_new/
│   ├── tables/
│   ├── tables_new/
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
- Execute `01_preprocessing.R`, `01.1_preprocessing.R`, `02_statistics.Rmd` and `02.1_statistics.Rmd`  
- Generate all outputs in the `RES/` folder  

### Outputs
<pre>
DAT/
└── clean/
     ├── pre_manip_ratings.xlsx
     ├── pre_manip_ratings.csv
     └── pre_manip_ratings.rdata
RES/
├── plots_avatar/   # Statistical plots (one per avatar)
├── tables/         # Descriptive statistics tables
├── 02_statistics.html
└── 02.1_statistics.html
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
<br>
Vocks, S., Legenbauer, T., Rüddel, H., & Troje, N. F. (2007).
**Static and dynamic body image in bulimia nervosa: Mental representation of body dimensions and biological motion patterns**,
International Journal of Eating Disorders, 40(1), 59–66.
https://doi.org/10.1002/eat.20336

