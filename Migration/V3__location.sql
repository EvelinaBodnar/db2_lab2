INSERT INTO Location (Territory_Name, Area, Region)

SELECT DISTINCT       Territory_Name,       Area,       Region       FROM tbl_zno_data

UNION SELECT DISTINCT EOTerName,     EOAreaName,     EORegName     FROM tbl_zno_data

UNION SELECT DISTINCT ukrPTTerName,  ukrPTAreaName,  ukrPTRegName  FROM tbl_zno_data
UNION SELECT DISTINCT mathPTTerName, mathPTAreaName, mathPTRegName FROM tbl_zno_data
UNION SELECT DISTINCT histPTTerName, histPTAreaName, histPTRegName FROM tbl_zno_data
UNION SELECT DISTINCT physPTTerName, physPTAreaName, physPTRegName FROM tbl_zno_data
UNION SELECT DISTINCT chemPTTerName, chemPTAreaName, chemPTRegName FROM tbl_zno_data
UNION SELECT DISTINCT bioPTTerName,  bioPTAreaName,  bioPTRegName  FROM tbl_zno_data
UNION SELECT DISTINCT geoPTTerName,  geoPTAreaName,  geoPTRegName  FROM tbl_zno_data
UNION SELECT DISTINCT engPTTerName,  engPTAreaName,  engPTRegName  FROM tbl_zno_data
UNION SELECT DISTINCT fraPTTerName,  fraPTAreaName,  fraPTRegName  FROM tbl_zno_data
UNION SELECT DISTINCT deuPTTerName,  deuPTAreaName,  deuPTRegName  FROM tbl_zno_data
UNION SELECT DISTINCT spaPTTerName,  spaPTAreaName,  spaPTRegName  FROM tbl_zno_data;

DELETE FROM Location WHERE Territory_Name IS NULL;

UPDATE Location 
SET Territory_Type = tbl_zno_data.Territory_Type
FROM tbl_zno_data 
WHERE tbl_zno_data.Territory_Name  = Location.Territory_Name AND
    tbl_zno_data.Area   = Location.Area AND
    tbl_zno_data.Region    = Location.Region;
