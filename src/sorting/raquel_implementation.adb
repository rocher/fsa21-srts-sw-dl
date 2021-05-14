package body Raquel_Implementation is

   overriding
   procedure Sort (Self : Raquel_Sorting_Algorithm;
                   List : in out List_Of_Integers)
   is
   begin
      null;
   end;

   overriding
   procedure Inject_Error (Self  : Raquel_Sorting_Algorithm;
                           List  : in out List_Of_Integers;
                           Which : Error_Name)
   is
   begin
      null;
   end;

end Raquel_Implementation;
