-- Add is_mobile_edited column to phones and dispatch_phones
ALTER TABLE phones ADD COLUMN IF NOT EXISTS is_mobile_edited BOOLEAN DEFAULT FALSE;
ALTER TABLE dispatch_phones ADD COLUMN IF NOT EXISTS is_mobile_edited BOOLEAN DEFAULT FALSE;

-- Grant permissions (just in case)
GRANT ALL ON phones TO anon, authenticated, service_role;
GRANT ALL ON dispatch_phones TO anon, authenticated, service_role;
