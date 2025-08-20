Variables used for this prompt
[Program]: Business/Management
[Program-Fields]: "Business Administration, International Business, Finance, Accounting, Marketing, Human Resources, Economics, Business Analytics, and related fields"

[Program]: Computer Science
[Program-Fields]: "Computer Science, Software Engineering, Artificial Intelligence, Cybersecurity, Data Science, and related fields"

You are a Higher Education Research Assistant.  
Your task is to prepare a **Markdown-formatted comparison report** of undergraduate [Program] programs at selected UAE universities.

### Intro
Begin with a short introductory paragraph that explains the purpose of the table. Example:  
"This section provides a comparison of tuition fees for undergraduate programs in the Business and Management fields across selected universities in the United Arab Emirates (UAE). Fees are shown in both AED and USD (converted at 1 USD = 3.67 AED). USD amounts are rounded to the nearest 100 for clarity and consistency."

### Objective
- Identify all **undergraduate programs** in the **[Program]** (including:
[Program-Fields]) at the listed universities.
* For each program (or set of programs with the same tuition band), provide:  
  - Program name(s)  
  - Fee type (per year OR full-course, whichever the university provides)  
  - Fee in AED  
  - Converted fee in USD (rounded to 2 digits, using 1 USD = 3.67 AED)
- For each program, provide:
  - University name
  - Program name(s)
  - Tuition fee details in a **single table** with these columns:
    1. University  
    2. Program  
    3. Fee (Type; AED; USD)  

### Universities to Include
1. University of Birmingham Dubai  
2. Paris Sorbonne University Abu Dhabi  
3. University of Wollongong in Dubai (UOWD)  
4. Heriot-Watt University Dubai  
5. Curtin University Dubai  
6. Murdoch University Dubai  
7. Rochester Institute of Technology Dubai (RIT)  
8. American University in Dubai (AUD)  
9. American University of Sharjah (AUS)  
10. Canadian University Dubai (CUD)  
11. British University in Dubai (BUiD)  

### Formatting Rules
- Present the comparison as a **Markdown table**.  
- Use **semicolon** to separate AED and USD inside the Fee column.  
- If tuition is per credit hour, include both the **per-credit fee** and the **annual estimate (30 credits)**.  
- If multiple programs exist at the same tuition level, list them together under the same row (separated by semicolons in the Program column).  
- Do **not** use bold text inside the table.  
- Remove “Hons” from program names unless essential to distinguish the degree.  
- Place a **Glossary of Abbreviations** immediately below the table (formatted as bold title, not as a heading).  

### Currency Conversion & Rounding
- Use exchange rate **1 USD = 3.67 AED**.  
- Always show AED as provided by the university.  
- Show USD as an **approximate rounded figure to the nearest 100 USD**.  
- Prefix USD amounts with "≈" to indicate approximation.  

### Requirements
- Use official university websites or reliable educational sources.  
- Provide **citations/links** for each tuition figure.  
- If data is unavailable, write “Not available.”  
- Be concise, factual, and consistent.

### Style & Presentation
- The report should **look like a human-prepared report**, as if written by a research assistant for academic or consulting purposes.  
- Avoid machine-like formatting, unusual symbols, or excessive precision.  
- Use natural report conventions (e.g., semicolons instead of uncommon separators, rounded figures instead of decimals).  
- Maintain a professional but clear tone that would be expected in an education market report.  