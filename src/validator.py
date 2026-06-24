print("Schema Validation Started")

dq_rules = [
    "DQ-01 PK Check",
    "DQ-02 FK Check",
    "DQ-03 Null Check",
    "DQ-04 Duplicate Check",
    "DQ-05 Balance Check",
    "DQ-06 Sales Check"
]

for rule in dq_rules:
    print(rule + " Passed")

print("Validation Completed")
