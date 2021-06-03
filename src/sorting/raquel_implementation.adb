with Ada.Text_IO; use Ada.Text_IO;
with Ada.Numerics.Discrete_Random;

package body Raquel_Implementation is

   --  This is the implementation of the Counting sort algorithm. This algorithm 
   --  gets the maximum and minimium values of the input list to build a new  
   --  list ordered in increasing order from the minimum to the maximum value; 
   --  and another list with the number of times each element of the ordered 
   --  list is contained in the input one. The output list is built copying from
   --  the elements of the ordered list the number of times they appear in the 
   --  input list.
   --
   --  Refs: • https://en.wikipedia.org/wiki/Counting_sort
   --
   
   procedure count_elements (Input_Arr: Array_Of_Integers; 
                             Number, Input_Length: Integer; 
                             result : out Integer)
   is
   begin
      result := 0;
      for I in 1..Input_Length loop
         if Number = Input_Arr(I) then
            result := result +1;
         end if;
      end loop;
   end;
   
   procedure Counting_Sort (Input_Arr: in out Array_Of_Integers; 
                            Array_length, Max_val, Min_val : Integer)
   is
      Intermediate_List, Counting_List : array (0..Max_val+1) of Integer;
      Index, Final_Index, counts : Integer;
   begin
            
      --
      -- Build one array with all the values from the Minimum to the Maximum and 
      -- another array with the number of times each value is in the input array
      --
      Index := 1;
      for I in Min_val..Max_val loop
         Intermediate_List(Index) := I;         
         count_elements(Input_Arr, I, Array_length, counts);
         Counting_List(Index) := counts;
         Index := Index + 1;
      end loop;
      
      --
      -- Copy the elements of Intermediate_List to the output list as many times
      -- as indicated in count_elements
      --
      Final_Index := 0;
      for I in 1..Index-1 loop
         while Counting_List(I) > 0 loop
            Final_Index := Final_Index +1;
            Input_Arr(Final_Index) := Intermediate_List(I);            
            Counting_List(I) := Counting_List(I) - 1;
         end loop;
      end loop; 
   end;
      
   procedure Sort (Self : Raquel_Sorting_Algorithm;
                   List : in out List_Of_Integers)
   is
      Max_val, Min_val : Integer;
   begin
      --
      -- Get the Maximum and Minimum values of the input array
      --
      Max_val := 0;
      Min_val := Integer'Last;
      for I in 1..List.Length loop
         if Max_val < List.Elements(I) then
            Max_val := List.Elements(I);
         end if;
         if Min_val > List.Elements(I) then
            Min_val := List.Elements(I);
         end if;
      end loop;
      Counting_Sort(List.Elements, List.Length, Max_val, Min_val);
   end;

   overriding
   procedure Inject_Error (Self  : Raquel_Sorting_Algorithm;
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
               when 2 => null;
               when 5 => Swap (List.Elements (4), List.Elements (1));
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
   end;

end Raquel_Implementation;
