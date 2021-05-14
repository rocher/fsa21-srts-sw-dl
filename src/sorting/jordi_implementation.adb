package body Jordi_Implementation is

   overriding
   procedure Sort (Self : Jordi_Sorting_Algorithm;
                   List : in out List_Of_Integers)
   is
   begin
      null;
   end;

   overriding
   procedure Inject_Error (Self  : Jordi_Sorting_Algorithm;
                           List  : in out List_Of_Integers;
                           Which : Error_Name)
   is
   begin
      null;
   end;

end Jordi_Implementation;
