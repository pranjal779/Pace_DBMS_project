SELECT p.Property_Owner_ID, a.Is_Air_Condition, a.Is_Central_Heating, a.Are_Pets_Allowed, p.Property_Status, p.Available_Date
FROM amenities a
JOIN property p on a.Property_ID = p.Property_ID
WHERE Are_Pets_Allowed = 'Y' 
	AND p.Property_Status = 'Available';