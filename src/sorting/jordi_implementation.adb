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
      package Random_Index is new Ada.Numerics.Discrete_Random (Index_Range);
      use Random_Index;

      Index : Index_Range;
      RNG   : Random_Index.Generator;
   begin
      --Print(List);
      case Which is
         when Wrong_Order =>
            case List.Length is
               when 0 => null;
               when 1 => null;
               when 2 => Swap (List.Elements (1), List.Elements (2));
               when others =>
                  declare
                     I, J : Index_Range;
                  begin
                     loop
                        I := Random (RNG);
                        J := Random (RNG);
                        exit when I /= J;
                     end loop;
                     Swap (List.Elements (I), List.Elements (J));
                  end;
            end case;

         when Duplication =>
            if 1 <= List.Length and List.Length < Array_Of_Integers'Last then
               Index := Random (RNG);
               List.Length := List.Length + 1;
               for I in reverse Index+1 .. List.Length loop
                  List.Elements (I) := List.Elements (I-1);
               end loop;
            end if;

         when Omission =>
            if 0 < List.Length then
               Index := Random (RNG);
               for I in Index .. List.Length-1 loop
                  List.Elements (I) := List.Elements (I+1);
               end loop;
               List.Elements (List.Length) := 0;
               List.Length := List.Length - 1;
            end if;

         when None => null;
      end case;
      Print(List);
   end;

end Jordi_Implementation;
