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
├── main.tex               # Main LaTeX source
├── references.bib         # Bibliography (BibLaTeX / APA style)
├── figures/               # Figures directory
├── workflow/              # Replication package
│   ├── unifund-project-workflow.json   # n8n workflow export
│   └── README.md          # Setup and import instructions
└── .latexmkrc             # latexmk configuration
```

## Compilation

The document uses **pdfLaTeX + Biber**. The simplest way is:

```bash
make
```

Or manually:

```bash
pdflatex main.tex
biber main
pdflatex main.tex
pdflatex main.tex
```

## Replication Package

The n8n workflow export and setup instructions are in the [`workflow/`](workflow/) folder. See [`workflow/README.md`](workflow/README.md) for import instructions, required credentials, and how to adapt the company database to a different portfolio.
