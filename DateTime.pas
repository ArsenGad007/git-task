begin
  var year := ReadInteger('Введите год:');
  Assert(year > 0);
  
  var res := False;
  
  if year mod 4 = 0 then
    if year mod 100 <> 0 then
      res := True
    else if year mod 400 = 0 then
      res := True;
  
  Print($'Год является високосным - {res}');
end.