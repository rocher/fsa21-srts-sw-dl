with Types; use Types;

package Implementation_Interface is

   type Sorting_Algorithm is interface;

   procedure Sort (Self : Sorting_Algorithm;
                   Data : in out List_Of_Integers)
   is abstract;

   procedure Inject_Error (Self  : Sorting_Algorithm;
                           Data  : in out List_Of_Integers;
                           Which : Error_Name)
   is abstract;

end Implementation_Interface;
