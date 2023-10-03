--***************************************************************************
--                       T-SQL dilində sətr tipləri
--***************************************************************************

-------------------------------------- Char ---------------------------------

-- Mətn tipləri Char olaraq müəyyən edilir,
-- icazə verilən simvol sayı 1 - 8000 aralığındadır. 

-- Mətn tipləri Char(n) kimi qeyd olunur, 
-- burada n - simvol sayıdır (maksimal ola biləcək simvol sayı: n = 8000).

PRINT 'Char'

DECLARE @char char(5)= 'Hello';
PRINT @char;

SET @char = '1234dfghdf'; -- Sətrin "fghdf" hissəsi yazılmayacaq, çünki icazə verilən sətir sayı 5-dir 
PRINT @char;

-------------------------------------- VarChar ------------------------------

-- VarChar,
-- diapazon 1 - 2^31 simvol. 

-- VarChar(n/max) kimi yazıla bilər, 
-- burada n - simvol sayıdır,
-- və ya n-nin yerinə burada max yaza bilərik, bu halda simvolların maksimal sayı 2^31 olacaqdır.

PRINT 'VarChar'

DECLARE @vchar varchar(max)='Hello'; -- 2^31 simvol yazmaya icazə verilib.
PRINT @vchar;

SET @vchar = '1234dfghdf';
PRINT @vchar;

-------------------------------------- NChar --------------------------------

-- Unicode kodirovkasında olan tip - NChar,
-- diapazon 1 - 4000 aralığındadır.

-- NChar(n) kimi yazılır, 
-- burada n - simvol sayıdır (maksimal n = 4000).
-- Əgər daxil edilən simvolların sayı maksimal icazə veriləndən azdırsa, onda fərq boşluqlarla doldurulacaqdır 

PRINT 'NChar'

DECLARE @Nchar Nchar(7) = 'Привет!';
PRINT @Nchar;

SET @Nchar = '1234 приехали'; -- Sətring "иехали" yazılmayacaq, çünki maksimal icazə verilən simvol sayı 7-dir
PRINT @Nchar;

------------------------------------- NvarChar ------------------------------

-- Unicode kodirovkasında olan tip - NvarChar,
-- diapazon 1 - 2^31 aralığındadır. 

-- NvarChar(n/max) kimi yazılır, 
-- burada n - simvol sayıdır,
-- və ya n-nin yerinə burada max yaza bilərik, bu halda simvolların maksimal sayı 2^31 olacaqdır.

PRINT 'NvarChar'

DECLARE @NvarChar NvarChar(max) = 'Привет Мир!';
PRINT @NvarChar;

SET @NvarChar = 'Много много много много много много много много много много много слов';
PRINT @NvarChar;

-----------------------------------------------------------------------------