SELECT COUNT(*) AS total_transactions
FROM fraud_anomaly_transactions;



SELECT COUNT(*) AS total_anomalies
FROM fraud_anomaly_transactions
WHERE is_anomaly = 1;


SELECT COUNT(*) AS high_risk_transactions
FROM fraud_anomaly_transactions
WHERE risk_level = 'High';


SELECT
    category,
    COUNT(*) AS total_transactions,
    SUM(is_anomaly) AS anomalies,
    AVG(is_anomaly) AS anomaly_rate
FROM fraud_anomaly_transactions
GROUP BY category
ORDER BY anomaly_rate DESC;



SELECT
    city,
    COUNT(*) AS total_transactions,
    SUM(is_anomaly) AS anomalies,
    AVG(is_anomaly) AS anomaly_rate
FROM fraud_anomaly_transactions
GROUP BY city
HAVING COUNT(*) >= 50
ORDER BY anomaly_rate DESC;


SELECT
    hour,
    COUNT(*) AS total_transactions,
    SUM(is_anomaly) AS anomalies,
    AVG(is_anomaly) AS anomaly_rate
FROM fraud_anomaly_transactions
GROUP BY hour
ORDER BY anomaly_rate DESC;


SELECT
    trans_num,
    trans_date_trans_time,
    merchant,
    category,
    amt,
    city,
    state,
    distance_km,
    transactions_last_1h,
    transactions_last_24h,
    anomaly_score,
    risk_level
FROM fraud_anomaly_transactions
WHERE risk_level = 'High'
ORDER BY anomaly_score DESC
LIMIT 20;