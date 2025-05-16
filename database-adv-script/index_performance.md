-- Create index on user_id column in bookings table for faster joins and filtering
CREATE INDEX idx_bookings_user_id ON bookings(user_id);

-- Create index on property_id column in bookings table for performance on joins and filters
CREATE INDEX idx_bookings_property_id ON bookings(property_id);

-- Create index on created_at column in bookings table for better ORDER BY or date filtering
CREATE INDEX idx_bookings_created_at ON bookings(created_at);

-- Create unique index on email column in users table for quick user lookups
CREATE UNIQUE INDEX idx_users_email ON users(email);

-- Create index on city column in properties table for location-based filtering
CREATE INDEX idx_properties_city ON properties(city);
