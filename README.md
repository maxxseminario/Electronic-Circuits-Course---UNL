# ECEN 222: Electronics and Circuits II-CE – University of Nebraska–Lincoln

**Instructor & Course Developer:** Maxx Seminario  
**First Offered:** Spring 2026  
**Contact:** mseminario2@huskers.unl.edu

> **About the Instructor:**  
> Maxx Seminario is a PhD student studying integrated circuit design at the University of Nebraska–Lincoln. He developed and instructs ECEN 222: Electronics and Circuits II. 

This repository contains open-source course materials for ECEN 222, including LaTeX source code for lectures, assignments, labs, and quizzes. 

---

## Course Description

ECEN 222 is the second course in the circuits sequence for Computer Engineering students at UNL, building upon the foundational concepts from Circuits I (ECEN 221). This course bridges the gap between basic circuit theory and modern electronic systems by focusing on semiconductor devices and their applications in both analog and digital circuits.

Students will learn the physics and operation of diodes, BJTs, and MOSFETs, and apply this knowledge to design amplifiers, bias circuits, and digital logic gates. The course emphasizes both theoretical understanding and practical skills through hands-on laboratory work and SPICE simulation.

---

## Learning Objectives

By the end of this course, you will be able to:

1. Understand the **physics and operation** of semiconductor devices (diodes, BJTs, MOSFETs)
2. Analyze the **nonlinear I-V characteristics** of these devices
3. Design and analyze **DC bias circuits** for transistors
4. Perform **small-signal analysis** for amplifier applications
5. Design **single-stage amplifiers** with specified gain and impedance
6. Understand **transistor switching** and digital logic circuits
7. Build and test circuits in the laboratory
8. Use **SPICE simulation** tools for circuit analysis

---

## Topics Covered

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

## Prerequisites

### Required
- **ECEN 221: Circuits I** (or equivalent) – Basic circuit analysis, Kirchhoff's laws, Thévenin/Norton equivalents, AC/DC analysis
- **Calculus** – Differential and integral calculus
- **Differential Equations** (recommended)

### Expected Background
- DC and AC circuit analysis
- Kirchhoff's laws
- Thévenin and Norton equivalent circuits
- Transient and steady-state circuit analysis
- Basic understanding of complex numbers and phasors

---

## Repository Structure

```
├── lectures/          # Lecture notes in sequential order
├── assignments/       # Homework and project assignments
├── labs/              # Laboratory assignments for hands-on experience
├── quiz/              # Quiz materials and practice problems
└── docs/              # Compiled PDF documents
```

### Lectures
All lecture materials are provided in sequential order corresponding to the nine course units listed above. 

### Quizzes
Quiz materials may be compiled with `showresults = true` to include solutions. 

---

## Textbook

**Primary Reference:**  
Sedra, A. S., & Smith, K. C. *Microelectronic Circuits* (7th or 8th Edition)

**Reading assignments are provided for each unit:**
- Unit 1: Chapter 1
- Unit 2: Chapter 2
- Unit 3: Chapter 3 (Sections 3.1-3.2)
- Unit 4: Chapter 3
- Unit 5: Chapter 4
- Unit 6: Chapter 5
- Unit 7: Chapters 6-7
- Units 8-9: Chapters 10-11

---

## Building the Materials

### Requirements
- LaTeX distribution (TeX Live, MiKTeX, MacTeX, etc.)
- Recommended:  Beamer package for lecture slides
- [List any other specific packages if needed]

### To Compile
```bash
# Navigate to the desired directory
cd lectures

# Compile LaTeX documents
pdflatex lecture-01-introduction.tex

# For documents with references
pdflatex filename.tex
bibtex filename
pdflatex filename.tex
pdflatex filename.tex
```

Compiled PDFs are also available in the `docs/` directory.

---

## Course Information

- **Course Number:** ECEN 222
- **Course Title:** Electronics and Circuits II-ce
- **Credit Hours:** 4 credits (3 lecture, 1 lab)
- **Intended Audience:**
  - Undergraduate Computer Engineering students (primary)
  - Undergraduate Electrical Engineering students
- **Institution:** University of Nebraska–Lincoln 
- **Typical Offering:** Spring semester
- **Format:** Lectures, laboratory sessions, and SPICE simulation exercises

---

## For Instructors at Other Institutions

Instructors are welcome to use and adapt these materials for their own courses. You may fork this repository and modify it to suit your specific needs and institutional requirements.

### Exams and Secure Materials

A separate private repository contains exam materials and secure quiz content. Instructors at other universities who wish to access these resources may contact the author to request read permissions.

---

## For Students

This repository provides complete course materials that you can use to: 
- Review lecture content
- Prepare for exams
- Complete assignments and labs
- Practice with quiz problems
- Learn SPICE simulation techniques

Students taking this course at UNL or similar courses elsewhere are encouraged to use these materials as study aids. 

---

## Contributing

Contributions are welcome! If you find errors, typos, or have suggestions for improvement: 

1. **Open an issue** describing the problem or enhancement
2. **Submit a pull request** with proposed changes
3. Ensure LaTeX code compiles before submitting
4. Follow existing formatting and style conventions

Types of contributions appreciated:
- Typo and error corrections
- Clarifications to lecture content
- Additional practice problems
- Circuit simulation examples
- Laboratory procedure improvements

---

## License

This work is licensed under MIT License.  See the LICENSE file for details.

You are free to:
- Share — copy and redistribute the material
- Adapt — remix, transform, and build upon the material

Under the following terms:
- Attribution — You must give appropriate credit
- ShareAlike — If you remix, you must distribute under the same license

---

## Software Tools

This course utilizes: 
- **SPICE simulation** (Multisim)
- Laboratory equipment for circuit testing and measurement

---

**Questions?** Contact Maxx Seminario at mseminario2@huskers.unl.edu

---

*Last updated: January 2026*

<!-- # Electronic Circuits Course – University of Nebraska–Lincoln

**Author:** Maxx Seminario   
**Instructor:** Maxx Seminario    
**First Taught:** Spring 2026  
>**About the Author:**   
>Maxx Seminario is a PhD student studying integrated circuit design at the University of Nebraska–Lincoln, and is responsible for creating and curating this course - Electronics and Circuits I - ECEN 222.  
**Author Contact:** mseminario2@huskers.unl.edu  

This repository contains LaTeX code and course materials for ECEN 222: Electronics and Circuits I, offered at the University of Nebraska–Lincoln. The course is organized into lectures, assignments, labs, and quizzes.

---

## Repository Structure

- **lectures/**  
  Contains all lecture notes in sequential order:
  1. Introduction


- **assignments/**  
  Homework and project assignments for the course.

- **labs/**  
  Laboratory assignenmets for gaining hands on experince regarding topics studied in lecture.  


- **quiz/**  
  Quiz materials and practice problems.  
  *Quizzes may be compiled with `showresults = true` to include solutions with the results.*

- **docs/**
  All compiled pdf documents of the course.

---

## Course Information

- **Language:** LaTeX
- **Intended Audience:**
  - Undergraduate students in Computer Engineering
  - Undergraduate students in Electrical Engineering

- **Institution:** University of Nebraska–Lincoln

---

Feel free to use, adapt, and contribute to these materials for educational purposes.

---

## Disclaimer

Any other instructors at other universities, or students in any regard, are welcome to use this material in any way they see fit. You are also welcome to branch this repository and make edits as needed to suit your course or study needs.

---

## Exams and Quizzes Repository

Please note that there is a separate, private repository containing exams and secure quiz materials. Instructors at other universities who wish to access these resources may contact the author to request read permissions.

---

Feel free to use, adapt, and contribute to these materials for educational purposes. -->