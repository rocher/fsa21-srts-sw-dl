package body Voter is

   function Is_Sorted (List : List_Of_Integers) return Boolean is
   begin
      return True;
   end Is_Sorted;

   function Compute_Solution (Three_Lists : Named_Lists_Of_Integers)
                              return Solution_Of_Voting
   is
      Solution : Solution_Of_Voting :=
                   (Kind => Cannot_Decide,
                    List =>
                      (Length   => 0,
                       Elements => (others => 0)),
                    Errors => (others => None));
   begin
      --  check that all lists are of the same size
      --  check that all lists are sorted

      return Solution;
   end;

end Voter;
