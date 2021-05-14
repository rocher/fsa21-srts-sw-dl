with Ada.Text_IO;         use Ada.Text_IO;
with Ada.Integer_Text_IO; use Ada.Integer_Text_IO;

package body Inputs is

   function Read_Array_Length return Natural
   is
      Number : Natural;
   begin
      Put ("Enter array lenght (0 .. 10): ");
      Get (Number);
      return Number;
   end Read_Array_Length;

   procedure Read_Integer_List (List : in out List_Of_Integers) is
   begin
      Put_Line ("enter" & List.Length'Image & " integers:");
      for I in 1 .. List.Length loop
         Put ("   " & I'Image & ": ");
         Get (List.Elements (I));
      end loop;
   end Read_Integer_List;

   procedure Read_Errors (Inject_Into : in out List_Of_Errors)
   is
      Char : Character;
   begin
      Put_Line ("enter errors to inject into the algorithms");
      Put_Line ("use a single character for (n)one, (w)rong order, (d)uplication or (o)mission");

      for Algorithm in Algorithm_Name loop
         Put ("  inject error into " &
                Algorithm'Image &
                "'s algorithm (n/w/d/o): ");
         Get (Char);
         case Char is
            when 'n' => Inject_Into (Algorithm) := None;
            when 'w' => Inject_Into (Algorithm) := Wrong_Order;
            when 'd' => Inject_Into (Algorithm) := Duplication;
            when 'o' => Inject_Into (Algorithm) := Omission;
            when others => null;
         end case;
      end loop;
   end Read_Errors;

   function More_Loops return Boolean
   is
      Y_Or_N : Character;
   begin
      Put_Line (ASCII.LF & "---------------------------------");
      Put ("Continue sorting lists (y/n)? : ");
      Get (Y_Or_N);
      Put_Line ("---------------------------------" & ASCII.LF);
      return Y_Or_N = 'y';
   end More_Loops;

end Inputs;
