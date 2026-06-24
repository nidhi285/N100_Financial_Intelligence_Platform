CREATE TABLE companies (
    company_id INTEGER PRIMARY KEY,
    ticker TEXT NOT NULL,
    company_name TEXT NOT NULL
);

CREATE TABLE stock_prices (
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

CREATE TABLE profitandloss (
    pnl_id INTEGER PRIMARY KEY,
    company_id INTEGER,
    year INTEGER,
    revenue REAL,
    net_profit REAL,
    FOREIGN KEY (company_id) REFERENCES companies(company_id)
);

CREATE TABLE cashflow (
    cf_id INTEGER PRIMARY KEY,
    company_id INTEGER,
    year INTEGER,
    operating_cashflow REAL,
    free_cashflow REAL,
    FOREIGN KEY (company_id) REFERENCES companies(company_id)
);

CREATE TABLE analysis (
    analysis_id INTEGER PRIMARY KEY,
    company_id INTEGER,
    year INTEGER,
    roe REAL,
    roce REAL,
    FOREIGN KEY (company_id) REFERENCES companies(company_id)
);

CREATE TABLE financial_ratios (
    ratio_id INTEGER PRIMARY KEY,
    company_id INTEGER,
    year INTEGER,
    pe_ratio REAL,
    pb_ratio REAL,
    FOREIGN KEY (company_id) REFERENCES companies(company_id)
);

CREATE TABLE sectors (
    sector_id INTEGER PRIMARY KEY,
    sector_name TEXT NOT NULL
);

CREATE TABLE documents (
    document_id INTEGER PRIMARY KEY,
    company_id INTEGER,
    document_name TEXT,
    document_url TEXT,
    FOREIGN KEY (company_id) REFERENCES companies(company_id)
);

CREATE TABLE prosandcons (
    pc_id INTEGER PRIMARY KEY,
    company_id INTEGER,
    pros TEXT,
    cons TEXT,
    FOREIGN KEY (company_id) REFERENCES companies(company_id)
);