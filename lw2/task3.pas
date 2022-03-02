PROGRAM PrintHello(INPUT, OUTPUT);
USES
  DOS;
VAR
  Int: STRING;
  Number: INTEGER;
BEGIN
  WRITELN('Content-Type: text/plain');
  WRITELN;
  Int := GetEnv('QUERY_STRING');
  IF Int = ''
  THEN
    WRITELN('Hello Anonymous!')
  ELSE
    BEGIN
      WRITE('Hello dear, ');
      Number = Pos('&', Int);
      IF (Number = 0)
      THEN
      WRITELN(Copy(Int, 6, Length(Int)))
      ELSE
      WRITELN(Copy(Int, 6, Number - 6))
    END
END.
