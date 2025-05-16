-- ==========================
-- Step 1: Measure performance BEFORE creating indexes
-- ==========================

-- Example query to test filtering by user_id before index
EXPLAIN ANALYZE
SELECT \* FROM bookings WHERE user_id = 123;

-- Example query to test filtering by property_id before index
EXPLAIN ANALYZE
SELECT \* FROM bookings WHERE property_id = 456;

-- Example query to test filtering by created_at before index
EXPLAIN ANALYZE
SELECT \* FROM bookings WHERE created_at > '2024-01-01';

-- Example query to test filtering user by email before index
EXPLAIN ANALYZE
SELECT \* FROM users WHERE email = 'example@example.com';

-- Example query to test filtering properties by city before index
EXPLAIN ANALYZE
SELECT \* FROM properties WHERE city = 'New York';

```sql
-- ==========================
-- Step 2: Create indexes to optimize queries
-- ==========================

CREATE INDEX idx_bookings_user_id ON bookings(user_id);

CREATE INDEX idx_bookings_property_id ON bookings(property_id);

CREATE INDEX idx_bookings_created_at ON bookings(created_at);

CREATE UNIQUE INDEX idx_users_email ON users(email);

CREATE INDEX idx_properties_city ON properties(city);

-- ==========================
-- Step 3: Measure performance AFTER creating indexes
-- ==========================

EXPLAIN ANALYZE
SELECT * FROM bookings WHERE user_id = 123;

EXPLAIN ANALYZE
SELECT * FROM bookings WHERE property_id = 456;

EXPLAIN ANALYZE
SELECT * FROM bookings WHERE created_at > '2024-01-01';

EXPLAIN ANALYZE
SELECT * FROM users WHERE email = 'example@example.com';

EXPLAIN ANALYZE
SELECT * FROM properties WHERE city = 'New York';
```
