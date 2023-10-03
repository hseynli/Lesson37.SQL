--***************************************************************************
--                    T-SQL də tarix və zamanla olan tiplər
--***************************************************************************

------------------------------------ DateTime -------------------------------

-- DateTime. 
-- diapazon 1 yanvar 1753 ildən 31 dekabr 9999-ci ilə kimi.

PRINT 'DateTime'

-- CAST (expression AS data_type) - tiplərin çevrilə funksiyasıdır,
-- burda sətir tipi DateTime tipinə çevrilir.

DECLARE @datetime DateTime = CAST('2007-05-08 12:35:29.123' AS DateTime);
PRINT @datetime;  

SET @datetime = CURRENT_TIMESTAMP; -- Cari tarix və zaman
PRINT @datetime;

------------------------------------ DateTime2 ------------------------------

-- DateTime2. 
-- diapazon 1 yanvar 1-ci ildən 31 dekabr 9999-ci ilə kimidir.

-- DateTime2(n) kimi yazılır, 
-- burada n - 100ns-ə kimi dəqiqliyi müəyyən edir ( 0<n<7 )

PRINT 'DateTime2';

DECLARE @datetime2 DateTime2(5) = CAST('2007-05-08 12:35:29.1234567' AS DateTime2)
PRINT @datetime2;  

SET @datetime2 = CURRENT_TIMESTAMP; -- Cari tarix və zaman
PRINT @datetime2;


-------------------------------- SmallDateTime ------------------------------

-- SmallDateTime. 
-- diapazon 1 yanvar 1900 ildən 6 iyun 2079-ci ilə kimidir.

PRINT 'SmallDateTime';

DECLARE @smalldatetime SmallDateTime = CAST('2007-05-08 12:35:29' AS SmallDateTime)
PRINT @smalldatetime;  

SET @smalldatetime = CURRENT_TIMESTAMP; -- Cari tarix və zaman
PRINT @smalldatetime;

-------------------------------- DateTimeOffSet ------------------------------

-- DateTimeOffSet.
-- Özündə tarix və zamanı saxlayır. 
-- diapazon 1 yanvar 1-ci ildən 31 dekabr 9999-ci ilə kimidir.

-- Zaman və tarixin tipi DateTimeOffSet(n) kimi qeyd olunur, 
-- burada n - 100ns-ə kimi dəqiqliyi müəyyən edir ( 0<n<7 )

PRINT 'DateTimeOffSet';

DECLARE @dateTimeOffSet DateTimeOffSet(5) = CAST('2007-05-08 12:35:29.1234567 +12:15' AS DateTimeOffSet)
PRINT @dateTimeOffSet;  

SET @dateTimeOffSet = CURRENT_TIMESTAMP; -- Текущая дата и время
PRINT @dateTimeOffSet;

------------------------------------ Date -----------------------------------

-- Date. 
-- diapazon 1 yanvar 1-ci ildən 31 dekabr 9999-ci ilə kimidir.

PRINT 'Date';

DECLARE @date Date = CAST('2007-05-08 12:35:29.1234567' AS Date)
PRINT @date;  

SET @date = CURRENT_TIMESTAMP; -- Текущая дата и время
PRINT @date;

------------------------------------ Time -----------------------------------

-- Time. 
-- ancaq zamanı özündə saxlayır Time(n), 
-- burada n - 100ns-ə kimi dəqiqliyi müəyyən edir ( 0<n<7 )

PRINT 'Time';

DECLARE @time Time(5) = CAST('2007-05-08 12:35:29.1234567' AS Time);
PRINT @time;  

SET @time = CURRENT_TIMESTAMP; 
PRINT @time;

-----------------------------------------------------------------------------