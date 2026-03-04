# A Multi-Agent Orchestration Framework for Venture Capital Due Diligence

**Authors:** Grigorios Alexandrou, Katerina Pramatari  
**Affiliation:** Department of Management Science and Technology, Athens University of Economics and Business (AUEB)  
**Date:** March 2026

## Overview

This repository contains the LaTeX source for a research paper presenting a fully automated, multi-agent workflow for corporate due diligence and market analysis in the venture capital context.

The system integrates Large Language Models (LLMs) with dynamic OSINT retrieval and a specialized extraction module for the Greek Business Registry (Γ.Ε.ΜΗ.), combining programmatic API queries, OCR-based PDF parsing, and structural fallback mechanisms to ensure data integrity.

## Repository Structure

```
.
├── main.tex          # Main LaTeX source
├── references.bib    # Bibliography (BibLaTeX / APA style)
├── figures/          # Figures directory (add images here)
└── .latexmkrc        # latexmk configuration
```

## Compilation

The document uses **pdfLaTeX + Biber**. Run in order:

```bash
pdflatex main.tex
biber main
pdflatex main.tex
pdflatex main.tex
```

Or configure your editor to use the included `.latexmkrc`.

## Replication Package

The n8n workflow files, technical documentation, and a video walk-through are available in the project's supplementary repository (see the *Data and Workflow Availability* section of the paper).
