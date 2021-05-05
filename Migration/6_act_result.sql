INSERT INTO TestResult (OutID, Test_Name, Year, Language, TestResult,
    Mark_DPA, Mark_100, Mark_12, Mark, Adapt, PTName)
SELECT OutID, ukrTest, Year, NULL, ukrTestStatus, NULL, 
    ukrBall100, ukrBall12, ukrBall, ukrAdaptScale, UkrPTName
FROM tbl_zno_data
WHERE ukrTest IS NOT NULL;


INSERT INTO TestResult (OutID, Test_Name, Year, Language, TestResult,
    Mark_DPA, Mark_100, Mark_12, Mark, Adapt, PTName)
SELECT OutID, histTest, Year, histLang, histTestStatus, NULL, 
    histBall100, histBall12, histBall, NULL, histPTName
FROM tbl_zno_data
WHERE histTest IS NOT NULL;


INSERT INTO TestResult (OutID, Test_Name, Year, Language, TestResult,
    Mark_DPA, Mark_100, Mark_12, Mark, Adapt, PTName)
SELECT OutID, mathTest, Year, mathLang, mathTestStatus, NULL, 
    mathBall100, mathBall12, mathBall, NULL, mathPTName
FROM tbl_zno_data
WHERE mathTest IS NOT NULL;


INSERT INTO TestResult (OutID, Test_Name, Year, Language, TestResult,
    Mark_DPA, Mark_100, Mark_12, Mark, Adapt, PTName)
SELECT OutID, physTest, Year, physLang, physTestStatus, NULL, 
    physBall100, physBall12, physBall, NULL, physPTName
FROM tbl_zno_data
WHERE physTest IS NOT NULL;


INSERT INTO TestResult (OutID, Test_Name, Year, Language, TestResult,
    Mark_DPA, Mark_100, Mark_12, Mark, Adapt, PTName)
SELECT OutID, chemTest, Year, chemLang, chemTestStatus, NULL, 
    chemBall100, chemBall12, chemBall, NULL, chemPTName
FROM tbl_zno_data
WHERE chemTest IS NOT NULL;


INSERT INTO TestResult (OutID, Test_Name, Year, Language, TestResult,
    Mark_DPA, Mark_100, Mark_12, Mark, Adapt, PTName)
SELECT OutID, bioTest, Year, bioLang, bioTestStatus, NULL, 
    bioBall100, bioBall12, bioBall, NULL, bioPTName
FROM tbl_zno_data
WHERE bioTest IS NOT NULL;


INSERT INTO TestResult (OutID, Test_Name, Year, Language, TestResult,
    Mark_DPA, Mark_100, Mark_12, Mark, Adapt, PTName)
SELECT OutID, geoTest, Year, geoLang, geoTestStatus, NULL, 
    geoBall100, geoBall12, geoBall, NULL, geoPTName
FROM tbl_zno_data
WHERE geoTest IS NOT NULL;


INSERT INTO TestResult (OutID, Test_Name, Year, Language, TestResult,
    Mark_DPA, Mark_100, Mark_12, Mark, Adapt, PTName)
SELECT OutID, engTest, Year, NULL, engTestStatus, engDPALevel, 
    engBall100, engBall12, engBall, NULL, engPTName
FROM tbl_zno_data
WHERE engTest IS NOT NULL;


INSERT INTO TestResult (OutID, Test_Name, Year, Language, TestResult,
    Mark_DPA, Mark_100, Mark_12, Mark, Adapt, PTName)
SELECT OutID, fraTest, Year, NULL, fraTestStatus, fraDPALevel, 
    fraBall100, fraBall12, fraBall, NULL, fraPTName
FROM tbl_zno_data
WHERE fraTest IS NOT NULL;


INSERT INTO TestResult (OutID, Test_Name, Year, Language, TestResult,
    Mark_DPA, Mark_100, Mark_12, Mark, Adapt, PTName)
SELECT OutID, deuTest, Year, NULL, deuTestStatus, deuDPALevel, 
    deuBall100, deuBall12, deuBall, NULL, deuPTName
FROM tbl_zno_data
WHERE deuTest IS NOT NULL;


INSERT INTO TestResult (OutID, Test_Name, Year, Language, TestResult,
    Mark_DPA, Mark_100, Mark_12, Mark, Adapt, PTName)
SELECT OutID, spaTest, Year, NULL, spaTestStatus, spaDPALevel, 
    spaBall100, spaBall12, spaBall, NULL, spaPTName
FROM tbl_zno_data
WHERE spaTest IS NOT NULL;