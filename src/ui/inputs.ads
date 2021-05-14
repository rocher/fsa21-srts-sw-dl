with Types; use Types;

package Inputs is

   function Read_Array_Length return Natural;

   procedure Read_Integer_List (List : in out List_Of_Integers);

   procedure Read_Errors (Inject_Into : in out List_Of_Errors);

   function More_Loops return Boolean;

end Inputs;
