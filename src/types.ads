package Types is

   --  name of the algorithms / participants
   type Algorithm_Name is (Raquel, Jordi, Francesc);

   --  type of possible injected errors
   type Error_Name is (None, Wrong_Order, Duplication, Omission);

   --  length of lists to sort must be less or equal to 10
   subtype List_Length is Natural range 0 .. 10;

   --  list of integers to sort
   type Array_Of_Integers is array (1 .. List_Length'Last) of Integer;

   --  input data for the sorting algorithms
   type List_Of_Integers is record
      Length   : List_Length;
      Elements : Array_Of_Integers;
   end record;

   --  N sorted lists for the voter to choose the solution from
   type Named_Lists_Of_Integers is array (Algorithm_Name) of List_Of_Integers;

   --  errors injected or detected by the voter
   type List_Of_Errors is array (Algorithm_Name) of Error_Name;

   --  type of solution provided by the voter
   type Type_Of_Solution is (Ok, Cannot_Decide);

   --  solution given by the voter
   type Solution_Of_Voting is record
      Kind   : Type_Of_Solution;
      List   : List_Of_Integers;   --  the most voted list
   end record;

end Types;
