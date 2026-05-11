# Replication Package — n8n Workflow

This folder contains the exported n8n workflow for the system described in:

> Alexandrou, G. & Pramatari, K. (2026). *A Multi-Agent Orchestration Framework for Venture Capital Due Diligence.* Athens University of Economics and Business.

## File

| File | Description |
|------|-------------|
| `unifund-project-workflow.json` | Full n8n workflow export (all nodes, connections, and logic) |

## Requirements

### Platform
- [n8n](https://n8n.io) — self-hosted (recommended) or n8n Cloud
- Tested on n8n v1.x

### Required credentials (configured inside n8n)

| Credential | Used by | Where to obtain |
|------------|---------|-----------------|
| OpenAI API key | All AI agent nodes | [platform.openai.com](https://platform.openai.com) |
| Perplexity API key | Market & competitive intelligence agents | [perplexity.ai](https://www.perplexity.ai/settings/api) |
| Gmail OAuth2 | Report delivery node | Google Cloud Console — OAuth 2.0 client |
| Marker API key | PDF OCR extraction | [marker.datalab.to](https://www.datalab.to/) |

> Credentials are **not** stored in the workflow JSON. You must configure them in your n8n instance under **Settings → Credentials** before activating the workflow.

## Import Instructions

1. Open your n8n instance.
2. Go to **Workflows → Import from File**.
3. Select `unifund-project-workflow.json`.
4. In the imported workflow, open each credential-dependent node and assign the appropriate credential from your instance.
5. Update the **Code** node's `allCompanies` array with your own portfolio company data (name, sector, website, founders, Γ.Ε.ΜΗ. registration number, etc.).
6. Activate the workflow and note the Webhook URL shown in the Webhook trigger node.
7. Point your HTML intake form's `action` attribute to that Webhook URL.

## Company Database

The `allCompanies` array in the **Code** node acts as the system's portfolio database. Each entry has the following schema:

```json
{
  "name": "Company Name",
  "link": "https://fund-portfolio-page-url",
  "founders": ["Founder One", "Founder Two"],
  "website": "companywebsite.com",
  "founded": "2020",
  "sector": "FinTech",
  "first_investment": "2022",
  "hq": "Athens, GR",
  "description": "One-paragraph company description.",
  "gemi_number": "123456789000"
}
```

Set `gemi_number` to `null` for companies not incorporated in Greece — these will be automatically routed to the alternative financials branch (Crunchbase / Dealroom).

## Γ.Ε.ΜΗ. Endpoint Access

The financial extraction module reverse-engineers the Greek Business Registry frontend. No authenticated API credentials are required — the workflow mimics browser HTTP requests to the public backend endpoints. For details, see Section 3.3 of the paper and the referenced open-source work ([Drakakis, 2025](https://summerofcode.withgoogle.com/programs/2025/projects/dKzwxQT9)).

## Citation

If you use this workflow in your research, please cite the paper and this repository:

```bibtex
@software{alexandrou2026due,
  author    = {Alexandrou, Grigorios},
  title     = {A Multi-Agent Framework for Automated Due Diligence: n8n Workflow and Documentation},
  year      = {2026},
  publisher = {GitHub},
  url       = {https://github.com/gregalexan/ai-researcher-latex}
}
```
