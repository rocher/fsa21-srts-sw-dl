package body Voter is

   function Compare_Lists (A, B : List_Of_Integers) return Boolean
   is
      Result: Boolean := True;
   begin
      if A.Length = B.Length then
         for I in 1 .. A.Length loop
            if A.Elements (I) /= B.Elements (I) then
               return False;
            end if;
         end loop;
      else
         return False;
      end if;

      return Result;
   end Compare_Lists;

   function Compute_Solution (Three_Lists : Named_Lists_Of_Integers)
                              return Solution_Of_Voting
   is
      Solution : Solution_Of_Voting :=
                   (Kind => Cannot_Decide,
                    List =>
                      (Length   => 0,
                       Elements => (others => 0)));
   begin
      if Compare_Lists (Three_Lists (Raquel), Three_Lists (Jordi)) then
         Solution.Kind := Ok;
         Solution.List := Three_Lists (Raquel);
      elsif Compare_Lists (Three_Lists (Raquel), Three_Lists (Francesc)) then
         Solution.Kind := Ok;
         Solution.List := Three_Lists (Raquel);
      elsif Compare_Lists (Three_Lists (Jordi), Three_Lists (Francesc)) then
         Solution.Kind := Ok;
         Solution.List := Three_Lists (Jordi);
      end if;

      return Solution;

   end;

end Voter;
