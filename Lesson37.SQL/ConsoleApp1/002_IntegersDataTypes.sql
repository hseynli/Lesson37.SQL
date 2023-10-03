--***************************************************************************
--                       T-SQL dilində tam ədədlər
--***************************************************************************

-------------------------------------- Bit ----------------------------------

-- Bit tipi (diapazon 0 və ya 1). 
-- 0 və 1-dən digər ədəd mənimsədilsə, 
-- həmin ədə 1-ə çeviriləcəkdir.

PRINT 'Bit';

DECLARE @bit Bit = 0; 
PRINT @bit;

SET @bit = 1;
PRINT @bit;

SET @bit = -4; -- (-4) 1-ə çeviriləcəkdir.
PRINT @bit;    -- bit = 1

------------------------------------- TinyInt -------------------------------

-- TinyInt tipi. Diapazon 0-dan 255-ə kimi.

PRINT 'TinyInt';

DECLARE @tinyint TinyInt = 0;
PRINT @tinyint;  

SET @tinyint = 25;
PRINT @tinyint;

SET @tinyint = 256; -- Xəta.
PRINT @tinyint;     -- @tinyint dəyişəninin tipi dəyişilməz olaraq qalacaq.

----------------------------------- SmallInt --------------------------------

-- SmallInt. Diapazon: -32 768 - 32 767.

PRINT 'SmallInt';

DECLARE @smallint SmallInt = 32767;
PRINT @smallint;

SET @smallint = -32768;
PRINT @smallint;  

 -------------------------------------- Int ----------------------------------
 
 -- Int. -2 147 483 648 - 2 147 483 647.
 
PRINT 'Int'

DECLARE @int Int = 2147483647;
PRINT @int;

SET @int = -2147483648;
PRINT @int;  

------------------------------------ BigInt ----------------------------------

-- BigInt. -(2^63) - 2^63-1.

PRINT 'Bigint';

DECLARE @bigint Bigint = 9223372036854775807;
PRINT @bigint;

SET @bigint  = -9223372036854775808; 
PRINT @bigint; 

------------------------------------------------------------------------------
