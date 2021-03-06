with Ada.Text_IO; use Ada.Text_IO;
with Ada.Numerics.Discrete_Random;

package body Francesc_Implementation is

   --  This is the implementation of the slowsort algorithm. It uses the
   --  "multiply and surrender" paradigm (completely the opposite of the "divide
   --  and conquer" paradigm). Even in the best case, slowsort is worst than
   --  bubble sort.
   --
   --  Refs: • "Pessimal Algorithms and Simplexity Analysis",
   --          https://www.mipmip.org/tidbits/pasa.pdf
   --
   --        • https://en.wikipedia.org/wiki/Slowsort
   --
   procedure Slow_Sort (A : in out Array_Of_Integers; I, J : Integer)
   is
      M : Integer;
   begin
      if I < J then
         --
         --  recursively sort both halves of the array  (multiply)
         --
         M := Integer (Float'Floor (Float (I + J) / 2.0));

         Slow_Sort (A, I, M);
         Slow_Sort (A, M+1, J);

         --
         --  select the minimum of both halves as A(I)  (surrender)
         --
         if A (I) > A (M+1) then
            Swap (A (I), A(M+1));
         end if;

         --
         --  continue slowsorting the array to find the next element A (I+1)
         --
         Slow_Sort (A, I+1, J);

      end if;
   end Slow_Sort;

   overriding
   procedure Sort (Self : Francesc_Sorting_Algorithm;
                   List : in out List_Of_Integers) is
   begin
      if 2 <= List.Length then
         Slow_Sort (List.Elements, 1, List.Length);
      end if;
   end;

   overriding
   procedure Inject_Error (Self  : Francesc_Sorting_Algorithm;
                           List  : in out List_Of_Integers;
                           Which : Error_Name)
   is
      subtype Index_Range is Natural range 1 .. List.Length;
      package Random_Index is new Ada.Numerics.Discrete_Random (Index_Range);
      use Random_Index;

      Index : Index_Range;
      RNG   : Random_Index.Generator;
   begin
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
      Put_Line ("Francesc's List:");
      Print (List);
   end;

end Francesc_Implementation;
