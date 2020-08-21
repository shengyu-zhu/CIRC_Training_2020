use http://www.stata-press.com/data/r13/census5
tabulate region
summarize marriage_rate divorce_rate median_age if state!="Nevada"
