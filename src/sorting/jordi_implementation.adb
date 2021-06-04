with Ada.Text_IO; use Ada.Text_IO;
with Ada.Numerics.Discrete_Random;

package body Jordi_Implementation is

   --  This is the implementation of the Gnome sort algorithm.
   --  The algorithm works with one item at a time but gets the
   --  item to the proper place by a series of swaps,
   --
   --  Refs: • https://en.wikipedia.org/wiki/Gnome_sort
   --
   procedure Gnome_Sort (A : in out Array_Of_Integers; L : Integer)
   is
      pos : Integer;
   begin
      pos := 1;

      while pos <= L loop
         if pos = 1 then
            pos := pos+1;
         else
            if A (pos) >= A (pos-1) then
               pos := pos+1;
            else
               Swap (A (pos), A (pos-1));
               pos := pos-1;
            end if;
         end if;
      end loop;
   end Gnome_Sort;

   overriding
   procedure Sort (Self : Jordi_Sorting_Algorithm;
                   List : in out List_Of_Integers)
   is
   begin
      if 2 <= List.Length then
         Gnome_Sort (List.Elements, List.Length);
      end if;
   end;

   overriding
   procedure Inject_Error (Self  : Jordi_Sorting_Algorithm;
                           List  : in out List_Of_Integers;
                           Which : Error_Name)
   is
      subtype Index_Range is Natural range 1 .. List.Length;

      Index : Index_Range;
   begin
      --Print(List);
      case Which is
         when Wrong_Order =>
            case List.Length is
               when 0 => null;
               when 1 => null;
               when others =>
                  Swap (List.Elements (List.Length-1), List.Elements (List.Length));
            end case;

         when Duplication =>
            if 1 <= List.Length and List.Length < Array_Of_Integers'Last then
               Index := List.Length;
               List.Length := List.Length + 1;
               for I in reverse Index+1 .. List.Length loop
                  List.Elements (I) := List.Elements (I-1);
               end loop;
            end if;

         when Omission =>
            if 0 < List.Length then
               Index := List.Length;
               for I in Index .. List.Length-1 loop
                  List.Elements (I) := List.Elements (I+1);
               end loop;
               List.Elements (List.Length) := 0;
               List.Length := List.Length - 1;
            end if;

         when None => null;
      end case;
      Put_Line ("Jordi's List: ");
      Print (List);
   end;

end Jordi_Implementation;
