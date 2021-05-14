with Types; use Types;
with Implementation_Interface; use Implementation_Interface;

package Raquel_Implementation is

   type Raquel_Sorting_Algorithm is new Sorting_Algorithm with null record;

   overriding
   procedure Sort (Self : Raquel_Sorting_Algorithm;
                   List : in out List_Of_Integers);

   overriding
   procedure Inject_Error (Self  : Raquel_Sorting_Algorithm;
                           List  : in out List_Of_Integers;
                           Which : Error_Name);

end Raquel_Implementation;
