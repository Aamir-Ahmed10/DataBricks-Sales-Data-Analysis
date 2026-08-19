## 🧞 AI Genie — "Talk to Sales"

As part of the AI Analytics module, I built a Databricks Genie space that lets users query sales data using natural language.

### Setup
- Uploaded four data files — `customers`, `orders`, `products`, and `stores`
- Created a Genie space named **"Talk to Sales"**; Databricks auto-generated an initial description of the data
- Joined `orders` ↔ `customers` and `orders` ↔ `products` so Genie could answer cross-table questions

### Instructions given to Genie
```
- When a user asks for performance, they are interested in sales (total_amount).
- If other specification exists, round all decimals to two places.
- Only for text values, replace nulls with "unknown".
```

### Testing & validation

I tested Genie with a range of questions — from basic schema understanding to business KPIs and trend analysis — then reviewed each answer for accuracy. Some of the strongest responses were added back into Genie's instructions to improve future results, directly applying the "Validate and improve AI Genie results" lesson from the course.

<!-- Add screenshots for each question below the corresponding summary -->

***1. "Describe the dataset and explain what each table contains"***

Genie correctly summarized all four tables — `customers` (ID, name, email, location), `orders` (product, customer, store, pricing, timestamps), `products` (name, brand, category, pricing, launch date), and `stores` (name, type, location, opening date) — confirming it understood the schema and the joins.

***2. "Provide a summary of key business KPIs"***

| Metric | Value |
|---|---|
| Total Sales | $1,829,662.23 |
| Number of Orders | 4,494 |
| Number of Customers | 800 |
| Number of Products | 250 |
| Number of Stores | 20 |
| Number of Countries | 10 |
| Number of Years | 4 |
| Average Order Value | $407.13 |
| Total Quantity Sold | 8,222 |

***3. "Show the list of all unique countries"***

Returned 10 country codes (AT, CH, DE, ES, FR, IT, NL, PL, SE, UK). Genie also asked a clarifying follow-up — whether I wanted countries from customers only, stores only, or both — showing it recognized ambiguity in the request.

***4. "Show the full country name next to the country codes"***

Genie mapped all 10 codes to full names (e.g., AT → Austria, UK → United Kingdom), applying general knowledge on top of the raw data.

***5. "Show total number of customers by country"***

France had the most customers (107), followed by Italy (103); Switzerland had the fewest (50).

***6. "What is the average number of orders per category?"***

Apparel had the highest average (21.37 orders/product), Sports the lowest (14.77).

***7. "Show sales performance over time"***

Returned 47 months of data showing consistent upward growth with strong seasonal spikes every December, peaking at $328,202.05 in December 2025. I manually reviewed and edited this response to surface the top-performing months.

### What this demonstrates
- Designing a Genie space with correct joins across `orders`, `customers`, and `products`
- Writing custom instructions to resolve ambiguous business terms (e.g., "performance" → sales)
- Validating AI-generated answers against the underlying schema and business logic
- Iterating on Genie's setup by feeding strong responses back into its instructions

