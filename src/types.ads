package Types is

   --  name of the algorithms / participants
   type Algorithm_Name is (Raquel, Jordi, Francesc);

   --  type of possible injected errors
   type Error_Name is (None, Wrong_Order, Duplication, Omission);

   --  list of integers to sort
   type Array_Of_Integers is array (1 .. 10) of Integer;

   --  input data for the sorting algorithms
   --  all elements and length are set to zero, and no error injected
   type List_Of_Integers is record
      Length   : Natural;
      Elements : Array_Of_Integers;
   end record;

   --  N sorted lists for the voter to choose the solution from
   type Named_Lists_Of_Integers is array (Algorithm_Name) of List_Of_Integers;

   --  errors injected or detected by the voter
   type List_Of_Errors is array (Algorithm_Name) of Error_Name;

   --  type of solution provided by the voter
   type Type_Of_Solution is (All_Ok, One_Fails, Cannot_Decide);

   --  solution given by the voter
   type Solution_Of_Voting is record
      Kind   : Type_Of_Solution;
      List   : List_Of_Integers;   --  the most voted list
      Errors : List_Of_Errors;     --  errors detected / list
   end record;

end Types;
