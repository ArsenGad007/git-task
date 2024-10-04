begin
  var year := ReadInteger('Введите год:');
  Assert(year > 0);
  
  var res := False;
  
  if year mod 4 = 0 then
    if year mod 100 <> 0 then
      res := True
    else if year mod 400 = 0 then
      res := True;
  
  Println($'Год является високосным - {res}');
  
  var (day1, month1) := ReadInteger2('Введите день и месяц первой даты:');
  var (day2, month2) := ReadInteger2('Введите день и месяц второй даты:');
  Assert((day1 in 1..31) and (day2 in 1..31));
  Assert((month1 in 1..12) and (month2 in 1..12));
  
  var res2 := 1;
  
  if month1 = month2 then
    if day1 < day2 then
      res2 := 2
  else if month2 > month1 then
    res2 := 2;
 
  Println(res2);
  
  if res then
    Println('Кол-во дней в году 366')
  else
    Println('Кол-во дней в году 365');
end.