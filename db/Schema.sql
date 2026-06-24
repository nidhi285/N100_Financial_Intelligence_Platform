CREATE TABLE companies (
    company_id INTEGER PRIMARY KEY,
    ticker TEXT NOT NULL,
    company_name TEXT NOT NULL
);

CREATE TABLE prices (
    price_id INTEGER PRIMARY KEY,
    company_id INTEGER,
    trade_date DATE,
    close_price REAL,
    FOREIGN KEY (company_id) REFERENCES companies(company_id)
);

CREATE TABLE balance_sheet (
    bs_id INTEGER PRIMARY KEY,
    company_id INTEGER,
    year INTEGER,
    total_assets REAL,
    total_liabilities REAL,
    FOREIGN KEY (company_id) REFERENCES companies(company_id)
);

CREATE TABLE profit_loss (
    pl_id INTEGER PRIMARY KEY,
    company_id INTEGER,
    year INTEGER,
    revenue REAL,
    net_profit REAL,
    FOREIGN KEY (company_id) REFERENCES companies(company_id)
);