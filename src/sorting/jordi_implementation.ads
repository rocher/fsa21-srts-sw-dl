with Types; use Types;
with Implementation_Interface; use Implementation_Interface;

package Jordi_Implementation is

   type Jordi_Sorting_Algorithm is new Sorting_Algorithm with null record;

   overriding
   procedure Sort (Self : Jordi_Sorting_Algorithm;
                   List : in out List_Of_Integers);

   overriding
   procedure Inject_Error (Self  : Jordi_Sorting_Algorithm;
                           List  : in out List_Of_Integers;
                           Which : Error_Name);

end Jordi_Implementation;
