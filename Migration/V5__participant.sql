INSERT INTO Participant (ID, birthday, Sex_Type, loc_id, 
    Type_of_part, ClassProfile, Language, Institution_Name)
SELECT DISTINCT ON (OutID) OutID, birth, SexTypeName, loc_id, 
    RegTypeName, ClassProfileName, ClassLangName, EOName
FROM tbl_zno_data INNER JOIN Location
ON tbl_zno_data.TerTypeName = Location.Territory_Type
    AND tbl_zno_data.TerName = Location.Territory_Name
    AND tbl_zno_data.AreaName = Location.Area
    AND tbl_zno_data.RegName = Location.Region;
