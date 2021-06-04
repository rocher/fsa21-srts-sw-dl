with Ada.Text_IO; use Ada.Text_IO;

package body Implementation_Interface is

   procedure Swap (X, Y : in out Integer)
   is
      T : Integer := X;
   begin
      X := Y;
      Y := T;
   end Swap;

   procedure Print (List : List_Of_Integers) is
   begin
      Put ("list : ");
      for I in 1 .. List.Length loop
         Put (List.Elements(I)'Image & ", ");
      end loop;
      Put (" length=" & List.Length'Image);
      Put_Line (", "
                & (if Is_Sorted (List) then "" else "not ")
                & "sorted");
   end Print;

   function Is_Sorted (List : List_Of_Integers) return Boolean is
   begin
      if 2 <= List.Length then
         for I in 1 .. List.Length-1 loop
            if List.Elements (I) > List.Elements (I+1) then
               return False;
            end if;
         end loop;
      end if;
      return True;
   end Is_Sorted;

   function Exist_Duplicates (List : List_Of_Integers) return Boolean is
   begin
      if 2 <= List.Length then
         for I in 1 .. List.Length-1 loop
            if List.Elements (I) = List.Elements (I+1) then
               return True;
            end if;
         end loop;
      end if;
      return False;
   end Exist_Duplicates;

end Implementation_Interface;
