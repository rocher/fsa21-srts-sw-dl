with Types; use Types;
with Implementation_Interface; use Implementation_Interface;

package Francesc_Implementation is

   type Francesc_Sorting_Algorithm is new Sorting_Algorithm with null record;

   overriding
   procedure Sort (Self : Francesc_Sorting_Algorithm;
                   List : in out List_Of_Integers);

   overriding
   procedure Inject_Error (Self  : Francesc_Sorting_Algorithm;
                           List  : in out List_Of_Integers;
                           Which : Error_Name);

end Francesc_Implementation;
