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
  
  var min := ReadInteger('Введите кол-во минут:');
  Assert(min >= 0);
  
  Print($'Кол-во секунд: {min * 60}')
end.