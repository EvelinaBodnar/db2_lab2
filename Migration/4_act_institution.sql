INSERT INTO Institution(Institution_Name, Institution_Type, loc_id, Institution_Parent)
SELECT DISTINCT ON (allEduInfo.eduName)
	allEduInfo.eduName, 
	tbl_zno_data.Institution_Type, 
	Location.loc_id,
	tbl_zno_data.Institution_Parent
FROM (
    -- інформація про всі навчальні заклади: назва та місцезнаходження
    select distinct * 
    FROM (
        SELECT DISTINCT EOName, EOTerName, EOAreaName, EORegName FROM tbl_zno_data
        UNION SELECT DISTINCT ukrPTName,  ukrPTTerName,  ukrPTAreaName,  ukrPTRegName  FROM tbl_zno_data
        UNION SELECT DISTINCT mathPTName, mathPTTerName, mathPTAreaName, mathPTRegName FROM tbl_zno_data
        UNION SELECT DISTINCT histPTName, histPTTerName, histPTAreaName, histPTRegName FROM tbl_zno_data
        UNION SELECT DISTINCT physPTName, physPTTerName, physPTAreaName, physPTRegName FROM tbl_zno_data
        UNION SELECT DISTINCT chemPTName, chemPTTerName, chemPTAreaName, chemPTRegName FROM tbl_zno_data
        UNION SELECT DISTINCT bioPTName,  bioPTTerName,  bioPTAreaName,  bioPTRegName  FROM tbl_zno_data
        UNION SELECT DISTINCT geoPTName,  geoPTTerName,  geoPTAreaName,  geoPTRegName  FROM tbl_zno_data
        UNION SELECT DISTINCT engPTName,  engPTTerName,  engPTAreaName,  engPTRegName  FROM tbl_zno_data
        UNION SELECT DISTINCT fraPTName,  fraPTTerName,  fraPTAreaName,  fraPTRegName  FROM tbl_zno_data
        UNION SELECT DISTINCT deuPTName,  deuPTTerName,  deuPTAreaName,  deuPTRegName  FROM tbl_zno_data
        UNION SELECT DISTINCT spaPTName,  spaPTTerName,  spaPTAreaName,  spaPTRegName  FROM tbl_zno_data
    ) as temp
) AS allEduInfo (eduName, TerName, AreaName, RegName)
-- join tbl_zno_data, щоб додати інформацію про тип навчального закладу та про EOParent
LEFT JOIN tbl_zno_data ON 
	allEduInfo.EduName = tbl_zno_data.Institution_Name
-- join Location, щоб додати інформацію про loc_id
LEFT JOIN Location ON
	allEduInfo.TerName = Location.Territory_Name AND
	allEduInfo.AreaName = Location.Area AND
	allEduInfo.RegName = Location.Region
WHERE allEduInfo.eduName IS NOT NULL;