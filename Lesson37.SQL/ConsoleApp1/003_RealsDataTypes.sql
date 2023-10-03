--***************************************************************************
--					      T-SQL dilində tam ədədlər
--***************************************************************************

------------------------------------- Float ---------------------------------

-- Float. 
-- diapazon -1.79≈+308 - 1.79≈+308.

-- Float(n) kimi yazılır, 
-- burada n - dəqiqliyi müəyyən edir (default olaraq n = 53)

-- Float tipi üçün dəqiqliyin iki növü var: nöqtədən sonra 7 и 15 simvol.
-- 7 simvol - 1 - 24 diapazonu üçün nəzərdə tutulub; (4 bayt yer tutur)
-- 15 simvol - 25 - 53 diapozonunda; (8 bayt yer tutacaqdır)

PRINT 'Float'

DECLARE @float float(24) = 1214782.123;		
PRINT @float;
							
SET @float = 2147482435234412412.4321523598746737654;
PRINT @float;  

------------------------------------ Decimal --------------------------------

-- Decimal (Numeric). 
-- diapazon -10^38+1 - 10^38-1.

-- Decimal(p, s) kimi yazılır, 
-- burada p - dəqiqliyi müəyyən edir tam - tam ədəd maksimum neçə simvoldan ibarət ola bilər
-- (default olaraq p = 18, maksimal olaraq p = 38, minimal isə p = 1 ola bilər),
-- s - isə vergüldən sonra maksimal neçə simvol ola bilər.

PRINT 'Decimal / Numeric'

DECLARE @decimal Decimal(5, 3);   -- p = 5, s = 3

SET @decimal = 1.42;
PRINT @decimal; 
 
SET @decimal = 2.234654; -- yuvarlaqlanma baş verəcəkdir.
PRINT @decimal;

SET @decimal = 41.12345; -- yuvarlaqlanma baş verəcək, çünki vergüldən sonra 3-dən çox simvol var.
PRINT @decimal;

---------------------------------- SmallMoney -------------------------------

-- SmallMoney. 
-- diapazon -214 748.3648 - 214 748.3647

PRINT 'SmallMoney';

DECLARE @smoney SmallMoney = 214748.3647;
PRINT @smoney;

SET @smoney = -214748.3648;
PRINT @smoney;  

------------------------------------- Money ---------------------------------

-- Money. 
-- diapazon -2^63 - 2^63-1

PRINT 'Money';

DECLARE @money Money = 1.4234;
PRINT @money;

SET @money = 2.234954;
PRINT @money;

-----------------------------------------------------------------------------