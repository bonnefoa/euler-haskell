GHCi, version 6.12.1: http://www.haskell.org/ghc/  :? for help
Loading package ghc-prim ... linking ... done.
Loading package integer-gmp ... linking ... done.
Loading package base ... linking ... done.
Loading package ffi-1.0 ... linking ... done.
Prelude> :load "/home/sora/travail/haskell/num.hs"
[1 of 1] Compiling Main             ( /home/sora/travail/haskell/num.hs, interpreted )

/home/sora/travail/haskell/num.hs:7:2:
    The last statement in a 'do' construct must be an expression
Failed, modules loaded: none.
Prelude> :load "/home/sora/travail/haskell/num.hs"
[1 of 1] Compiling Main             ( /home/sora/travail/haskell/num.hs, interpreted )

/home/sora/travail/haskell/num.hs:7:5: parse error on input `<-'
Failed, modules loaded: none.
Prelude> :load "/home/sora/travail/haskell/num.hs"
[1 of 1] Compiling Main             ( /home/sora/travail/haskell/num.hs, interpreted )

/home/sora/travail/haskell/num.hs:19:9:
    parse error (possibly incorrect indentation)
Failed, modules loaded: none.
Prelude> :load "/home/sora/travail/haskell/num.hs"
[1 of 1] Compiling Main             ( /home/sora/travail/haskell/num.hs, interpreted )

/home/sora/travail/haskell/num.hs:18:29:
    parse error (possibly incorrect indentation)
Failed, modules loaded: none.
Prelude> :load "/home/sora/travail/haskell/num.hs"
[1 of 1] Compiling Main             ( /home/sora/travail/haskell/num.hs, interpreted )

/home/sora/travail/haskell/num.hs:18:31:
    parse error (possibly incorrect indentation)
Failed, modules loaded: none.
Prelude> :load "/home/sora/travail/haskell/num.hs"
[1 of 1] Compiling Main             ( /home/sora/travail/haskell/num.hs, interpreted )

/home/sora/travail/haskell/num.hs:18:31:
    parse error (possibly incorrect indentation)
Failed, modules loaded: none.
Prelude> :load "/home/sora/travail/haskell/num.hs"
[1 of 1] Compiling Main             ( /home/sora/travail/haskell/num.hs, interpreted )

/home/sora/travail/haskell/num.hs:18:31:
    parse error (possibly incorrect indentation)
Failed, modules loaded: none.
Prelude> :load "/home/sora/travail/haskell/num.hs"
[1 of 1] Compiling Main             ( /home/sora/travail/haskell/num.hs, interpreted )
Ok, modules loaded: Main.
*Main> main
Loading package array-0.3.0.0 ... linking ... done.
Loading package filepath-1.1.0.3 ... linking ... done.
Loading package old-locale-1.0.0.2 ... linking ... done.
Loading package old-time-1.0.0.3 ... linking ... done.
Loading package unix-2.4.0.0 ... linking ... done.
Loading package directory-1.0.1.0 ... linking ... done.
Loading package process-1.0.1.2 ... linking ... done.
Loading package time-1.1.4 ... linking ... done.
Loading package random-1.0.0.2 ... linking ... done.
Loading package haskell98 ... linking ... done.
Give me a number (0 to stop)
3
Give me a number (0 to stop)
0
[3]
*Main> main
Give me a number (0 to stop)
1
Give me a number (0 to stop)
2
Give me a number (0 to stop)
321
Give me a number (0 to stop)
4
Give me a number (0 to stop)
1
Give me a number (0 to stop)
0
[1,2,321,4,1]
*Main> :load "/home/sora/travail/haskell/num.hs"
[1 of 1] Compiling Main             ( /home/sora/travail/haskell/num.hs, interpreted )

/home/sora/travail/haskell/num.hs:22:29:
    Couldn't match expected type `[Char]'
           against inferred type `(a -> b -> b) -> b -> [a] -> b'
    In the second argument of `(++)', namely `(foldr + 0 list)'
    In the first argument of `putStrLn', namely
        `("The sum is " ++ (foldr + 0 list))'
    In the expression: putStrLn ("The sum is " ++ (foldr + 0 list))
Failed, modules loaded: none.
Prelude> :load "/home/sora/travail/haskell/num.hs"
[1 of 1] Compiling Main             ( /home/sora/travail/haskell/num.hs, interpreted )

/home/sora/travail/haskell/num.hs:15:12:
    No instance for (Num [Char])
      arising from the literal `0'
                   at /home/sora/travail/haskell/num.hs:15:12
    Possible fix: add an instance declaration for (Num [Char])
    In the second argument of `(==)', namely `0'
    In the expression: num == 0
    In the expression:
        if num == 0 then
            return []
        else
            do { rest <- askNumber;
                 return (num : rest) }
Failed, modules loaded: none.
Prelude> :load "/home/sora/travail/haskell/num.hs"
[1 of 1] Compiling Main             ( /home/sora/travail/haskell/num.hs, interpreted )

/home/sora/travail/haskell/num.hs:15:11:
    No instance for (Num [Char])
      arising from the literal `0'
                   at /home/sora/travail/haskell/num.hs:15:11
    Possible fix: add an instance declaration for (Num [Char])
    In the second argument of `(==)', namely `0'
    In the expression: num == 0
    In the expression:
        if num == 0 then
            return []
        else
            do { rest <- askNumber;
                 return (num : rest) }
Failed, modules loaded: none.
Prelude> :load "/home/sora/travail/haskell/num.hs"
[1 of 1] Compiling Main             ( /home/sora/travail/haskell/num.hs, interpreted )

/home/sora/travail/haskell/num.hs:15:12:
    No instance for (Num [Char])
      arising from the literal `0'
                   at /home/sora/travail/haskell/num.hs:15:12
    Possible fix: add an instance declaration for (Num [Char])
    In the second argument of `(==)', namely `0'
    In the expression: num == 0
    In the expression:
        if num == 0 then
            return []
        else
            do { rest <- askNumber;
                 return (num : rest) }
Failed, modules loaded: none.
Prelude> :load "/home/sora/travail/haskell/num.hs"
[1 of 1] Compiling Main             ( /home/sora/travail/haskell/num.hs, interpreted )
Ok, modules loaded: Main.
*Main> :load "/home/sora/travail/haskell/num.hs"
[1 of 1] Compiling Main             ( /home/sora/travail/haskell/num.hs, interpreted )

/home/sora/travail/haskell/num.hs:15:12:
    No instance for (Num [Char])
      arising from the literal `0'
                   at /home/sora/travail/haskell/num.hs:15:12
    Possible fix: add an instance declaration for (Num [Char])
    In the second argument of `(==)', namely `0'
    In the expression: num == 0
    In the expression:
        if num == 0 then
            return []
        else
            do { rest <- askNumber;
                 return (num : rest) }
Failed, modules loaded: none.
Prelude> :load "/home/sora/travail/haskell/num.hs"
[1 of 1] Compiling Main             ( /home/sora/travail/haskell/num.hs, interpreted )
Ok, modules loaded: Main.
*Main> main
Give me a number (0 to stop)
1
Give me a number (0 to stop)
33
Give me a number (0 to stop)

*** Exception: Prelude.read: no parse
*Main> 4
4
*Main> main
Give me a number (0 to stop)
9
Give me a number (0 to stop)
3
Give me a number (0 to stop)
0
[9,3]
The sum is 
*Main> :load "/home/sora/travail/haskell/num.hs"
[1 of 1] Compiling Main             ( /home/sora/travail/haskell/num.hs, interpreted )
Ok, modules loaded: Main.
*Main> main
Give me a number (0 to stop)
3
Give me a number (0 to stop)
34
Give me a number (0 to stop)
0
[3,34]
The sum is 37
*Main> :load "/home/sora/travail/haskell/num.hs"
[1 of 1] Compiling Main             ( /home/sora/travail/haskell/num.hs, interpreted )
Ok, modules loaded: Main.
*Main> main
Give me a number (0 to stop)
3
Give me a number (0 to stop)
4
Give me a number (0 to stop)
0
[3,4]
The sum is 7
The product is 12
*Main> :load "/home/sora/travail/haskell/num.hs"
[1 of 1] Compiling Main             ( /home/sora/travail/haskell/num.hs, interpreted )

/home/sora/travail/haskell/num.hs:15:12:
    No instance for (Num Char)
      arising from the literal `0'
                   at /home/sora/travail/haskell/num.hs:15:12
    Possible fix: add an instance declaration for (Num Char)
    In the second argument of `(==)', namely `0'
    In the expression: num == 0
    In the expression:
        if num == 0 then
            return []
        else
            do { rest <- askNumber;
                 return (num : rest) }
Failed, modules loaded: none.
Prelude> :load "/home/sora/travail/haskell/num.hs"
[1 of 1] Compiling Main             ( /home/sora/travail/haskell/num.hs, interpreted )
Ok, modules loaded: Main.
*Main> main 
Give me a number (0 to stop)
13
Give me a number (0 to stop)
431
Give me a number (0 to stop)
5
Give me a number (0 to stop)
0
[13,431,5]
The sum is 449
The product is 28015
[6227020800,98899541575273690211311587178750488674070743954531076993655888856538845925093950939064298856333164496819601556872940391759674078084420738928171600731431103885749123543007244079053826614630059599313988473385209281495189216092759061626702833456662836079422976456093897202617926728749735293562007353672746990151294485133915372781325211796653624250124791035855277744654823913550883345974608966384648096768003716383208441771608438459443805394565696517356479043127793860501653911164335801723345159060799414230867234101341857160836600413812313184634138627850597769544668758327453096833778230540262947536073760255278751082251442902948281554127212417463791830399303417955172151850639768168529069490165181762478840849925949327932953424681605587623218213781161051609850627623304720343914593349131324655618069532101562065831080259150200927756672124929966080000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000,120]
*Main> 