[![License: CC BY-SA 4.0](https://img.shields.io/badge/License-CC%20BY--SA%204.0-lightgrey.svg)](https://creativecommons.org/licenses/by-sa/4.0/)

# ECEN 222: Electronics and Circuits II-CE – University of Nebraska–Lincoln

**Instructor & Course Developer:** Maxx Seminario  
**First Offered:** Spring 2026  
**Contact:** mseminario2@huskers.unl.edu

> **About the Instructor:**  
> Maxx Seminario is a graduate student studying integrated circuit design at the University of Nebraska–Lincoln. He developed and instructs ECEN 222: Electronics and Circuits II for Computer Engineers. 

This repository contains open-source course materials for ECEN 222, including LaTeX source code for lectures, assignments, labs, and quizzes. 

---

## Course Description

ECEN 222 is the second course in the circuits sequence for Computer Engineering students at UNL, building upon the concepts from Circuits I. This course bridges the gap between basic circuit theory and application by focusing on semiconductor devices and their applications in both analog and digital circuits.

Students will learn the physics and operation of diodes, BJTs, and MOSFETs, and apply this knowledge to design amplifiers, bias circuits, and digital logic gates. The course emphasizes both theoretical understanding and practical skills through hands-on laboratory work and SPICE simulation.


## Learning Objectives

By the end of this course, one will be able to:

1. Understand the **physics and operation** of semiconductor devices (diodes, BJTs, MOSFETs)
2. Analyze the **nonlinear I-V characteristics** of these devices
3. Design and analyze **DC bias circuits** for transistors
4. Perform **small-signal analysis** for amplifier applications
5. Design **single-stage amplifiers** with specified gain and impedance
6. Understand **transistor switching** and digital logic circuits
7. Build and test circuits in the laboratory
8. Use **SPICE simulation** tools for circuit analysis

---

## Prerequisites

### Expected Background Knowledge
- DC and AC circuit analysis
- Kirchhoff's laws, Thévenin and Norton equivalent circuits
- Transient and steady-state circuit analysis
- Basic understanding of complex numbers and phasors
- Differential and integral calculus
- Differential Equations (Reccomeneded) 

---

## Repository Structure

```
├── lectures/          # Lecture notes in sequential order
├── assignments/       # Homework and project assignments
├── labs/              # Laboratory assignments for hands-on experience
├── quiz/              # Quiz materials and practice problems
└── docs/              # Compiled PDF documents
```

### lectures/ ###  
  Contains all lecture notes in sequential order:

  0. Introduction
  1. Electronic Signals
  2. Passive Circuit Devices
  3. Time Domain Circuit Analysis 
  4. Complex Numbers
  5. Frequency Domain Circuit Analysis 
  6. Diodes
  7. Diode Applications
  8. Operational Amplifiers
  9. Operational Amplifier Applications
  10. Operational Amplifier Specifications
  11. Crystal Structure 
  12. PN Junctions
  13. PN Junction Under External Bias
  14. MOSFET Physcial Structure
  15. MOSFET DC Analysis and Biasing
  16. MOSFET AC / Small Signal Analysis 

###  labs/ ###     

  1. Diodes
  2. Diode Rectifiers
  3. Bridge Rectifiers
  4. MOSFET IV and VTC
  4. BJT IV and VTC
  5. BJT Large Signal and Resistive Biasing
  7. Common Source Amp and Source Follower Buffering Application
  8. Common Emitter Amp and Emitter Follower Buffering Application
  9. Ring Oscillator Design for Digital Systems

### Quiz and Lecture Solutions
Quiz and lectures may be compiled with `showresults = true` to include solutions. 

---

## Quick Start

### For Students
1. Browse compiled PDFs in the `docs/` folder
2. Review lecture notes sequentially starting with lecture 0

### For Instructors
1. Fork this repository
2. Modify materials to fit your course needs
3. Compile LaTeX sources or use pre-compiled PDFs
4. Contact the author for access to secure exam materials

### For Contributors
1. Clone the repository
2. Make your changes
3. Test LaTeX compilation
4. Submit a pull request

---

## Building the Materials

### Requirements
- LaTeX distribution (TeX Live, MiKTeX, MacTeX, etc.)
- Beamer package for lecture slides


### To Compile
```bash
# Navigate to the desired directory
cd lectures

# Compile LaTeX documents
pdflatex lecture00_Intro/lecture-00-Intro.tex

# For documents with references
pdflatex filename.tex
bibtex filename
pdflatex filename.tex
pdflatex filename.tex
```

Pre-compiled PDFs are also available in the `docs/` directory.

---

## Course Information

- **Course Number:** ECEN 222
- **Course Title:** Electronics and Circuits II-CE
- **Credit Hours:** 4 credits (3 lecture, 1 lab)
- **Intended Audience:**
  - Undergraduate Computer Engineering students
  - Undergraduate Electrical Engineering students
- **Institution:** University of Nebraska–Lincoln 
- **Typical Offering:** Spring semester

---

## For Instructors at Other Institutions

Instructors are welcome to use and adapt these materials for their own courses. You may fork this repository and modify it to suit your specific needs and institutional requirements.

### Exams and Secure Materials

A separate private repository contains exam materials and secure quiz content. Instructors at other universities who wish to access these resources may contact the author to request read permissions.

---

<!-- ## Topics Covered

### Unit 1: Signals and Amplifiers
- Signal classification:  analog vs. digital
- Frequency spectra and bandwidth
- Introduction to amplifiers as circuit building blocks
- Amplifier models and parameters:  gain, input/output impedance

### Unit 2: Operational Amplifiers
- Ideal op-amp model
- Inverting and non-inverting configurations
- Op-amp applications:  summing, difference, integrator, differentiator
- Non-ideal characteristics: finite gain, bandwidth, slew rate

### Unit 3: Semiconductors
- Intrinsic and extrinsic semiconductors
- n-type and p-type doping
- Current flow:  drift and diffusion
- The pn junction and depletion region under bias
- I-V characteristics of pn junction

### Unit 4: Diodes
- Ideal diode model and diode equation
- Circuit models: ideal, constant voltage drop, small-signal
- Rectifier circuits: half-wave, full-wave, bridge
- Limiting and clamping circuits

### Unit 5: MOSFETs
- Device structure and physical operation
- I-V characteristics: cutoff, triode, saturation
- DC circuit analysis and biasing
- MOSFET as amplifier and switch
- Small-signal model and parameters (g_m, r_o)
- Single-stage amplifiers: common-source, source follower

### Unit 6: Bipolar Junction Transistors (BJTs)
- Device structure and physical operation
- Modes of operation: cutoff, active, saturation
- I-V characteristics and Ebers-Moll equations
- DC circuit analysis and biasing techniques
- Small-signal model and parameters (β, g_m, r_π)
- Single-stage amplifiers: common-emitter, emitter follower

### Unit 7: Transistor Amplifiers
- Common-source (CS) and common-emitter (CE) with loads
- Common-gate (CG) and common-base (CB) amplifiers
- Source/emitter degeneration for linearity
- Source/emitter followers as buffers
- Current mirrors and active loads
- High-frequency response and Miller effect

### Unit 8: Digital Circuits
- CMOS inverter: static and dynamic characteristics
- Voltage transfer characteristics (VTC)
- Noise margins and logic levels
- Power dissipation: static and dynamic
- Propagation delay
- NAND, NOR, and complex logic gates
- CMOS transmission gates

### Unit 9: Digital IC Design
- Logic gate design and optimization
- Pass-transistor logic
- Dynamic logic circuits
- Memory cells: SRAM and DRAM basics
- SPICE simulation of digital circuits

---
 -->

## Contributing

Contributions are welcome! If you find errors, typos, or have suggestions for improvement: 

1. **Open an issue** describing the problem or enhancement
2. **Submit a pull request** with proposed changes
3. Ensure LaTeX code compiles before submitting
4. Follow existing formatting and style conventions


## License

This work is licensed under [Creative Commons Attribution-ShareAlike 4.0 International (CC BY-SA 4.0)](https://creativecommons.org/licenses/by-sa/4.0/).

You are free to:
- **Share** — copy and redistribute the material
- **Adapt** — remix, transform, and build upon the material

Under the following terms:
- **Attribution** — You must give appropriate credit
- **ShareAlike** — If you remix, you must distribute under the same license

---

**Questions?** Contact Maxx Seminario at mseminario2@huskers.unl.edu

---

*Last updated: January 2026*
