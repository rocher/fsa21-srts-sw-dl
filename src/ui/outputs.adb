with Ada.Text_IO; use Ada.Text_IO;

package body Outputs is

   procedure Print_Results (Solution : Solution_Of_Voting) is
   begin
      Put_Line ("Solution: " & Solution.Kind'Image);
      Put ("  List : ");
      for I in 1 .. Solution.List.Length loop
         Put (Solution.List.Elements(I)'Image & ", ");
      end loop;
      Put_Line ("  Length = " & Solution.List.Length'Image);
   end Print_Results;

end Outputs;
