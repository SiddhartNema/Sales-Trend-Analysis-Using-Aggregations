# Sales-Trend-Analysis-Using-Aggregations


This report analyzes 2023 sales trends by aggregating order volume and revenue from the `online_sales` table.

### ✅ Key Insights:
- Most active month by orders: [e.g., June]
- Highest revenue month: [e.g., November]
- Seasonal spikes noticed in Q2 and Q4
- Insights help optimize inventory and marketing

### 🧠 Metrics Used:
- Total Orders = COUNT(DISTINCT InvoiceNo)
- Revenue = SUM(UnitPrice * Quantity)
- Grouped by YEAR, MONTH
