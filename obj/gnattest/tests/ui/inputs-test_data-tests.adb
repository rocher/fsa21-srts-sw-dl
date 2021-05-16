--  This package has been generated automatically by GNATtest.
--  You are allowed to add your code to the bodies of test routines.
--  Such changes will be kept during further regeneration of this file.
--  All code placed outside of test routine bodies will be lost. The
--  code intended to set up and tear down the test environment should be
--  placed into Inputs.Test_Data.

with AUnit.Assertions; use AUnit.Assertions;
with System.Assertions;
with Ada.Text_IO; use Ada.Text_IO;

--  begin read only
--  id:2.2/00/
--
--  This section can be used to add with clauses if necessary.
--
--  end read only

--  begin read only
--  end read only
package body Inputs.Test_Data.Tests is

--  begin read only
--  id:2.2/01/
--
--  This section can be used to add global variables and other elements.
--
--  end read only

--  begin read only
--  end read only

--  begin read only
   procedure Test_Read_Array_Length (Gnattest_T : in out Test);
   procedure Test_Read_Array_Length_e9ef85 (Gnattest_T : in out Test) renames Test_Read_Array_Length;
--  id:2.2/e9ef85d6dee2aa64/Read_Array_Length/1/0/
   procedure Test_Read_Array_Length (Gnattest_T : in out Test) is
   --  inputs.ads:5:4:Read_Array_Length
--  end read only

      pragma Unreferenced (Gnattest_T);
      Length : Natural;
   begin
      Put (ASCII.ESC & "[1;31m[ TEST : enter  0 ] " & ASCII.ESC & "[0m");
      Length := Inputs.Read_Array_Length;
      AUnit.Assertions.Assert (Length = 0, "you entered " & Length'Image & " instead of 0");

      Put (ASCII.ESC & "[1;31m[ TEST : enter  5 ] " & ASCII.ESC & "[0m");
      Length := Inputs.Read_Array_Length;
      AUnit.Assertions.Assert (Length = 5, "you entered " & Length'Image & " instead of 5");

      Put (ASCII.ESC & "[1;31m[ TEST : enter 10 ] " & ASCII.ESC & "[0m");
      Length := Inputs.Read_Array_Length;
      AUnit.Assertions.Assert (Length = 10, "you entered " & Length'Image & " instead of 10");

--  begin read only
   end Test_Read_Array_Length;
--  end read only


--  begin read only
   procedure Test_Read_Integer_List (Gnattest_T : in out Test);
   procedure Test_Read_Integer_List_0b63c8 (Gnattest_T : in out Test) renames Test_Read_Integer_List;
--  id:2.2/0b63c835da9daaf7/Read_Integer_List/1/0/
   procedure Test_Read_Integer_List (Gnattest_T : in out Test) is
   --  inputs.ads:7:4:Read_Integer_List
--  end read only

      pragma Unreferenced (Gnattest_T);
      List : List_Of_Integers;
      Empty_List : constant List_Of_Integers := (Length => 0,
                                                 Elements => (others => 0));
   begin

      List := Empty_List;
      List.Length := 0;
      Read_Integer_List (List);
      AUnit.Assertions.Assert (List = Empty_List, "List is not empty");

      List := Empty_List;
      List.Length := 1;
      Put_Line (ASCII.ESC & "[1;31m[ TEST : enter 42 ] " & ASCII.ESC & "[0m");
      Read_Integer_List (List);
      AUnit.Assertions.Assert (List =
                                 List_Of_Integers'(Length => 1,
                                                   Elements => (1 => 42,
                                                                others => 0)),
                               "List is not {42}");
      List := Empty_List;
      List.Length := 5;
      Put_Line (ASCII.ESC & "[1;31m[ TEST : enter 5, 4, 3, 2, 1 ] " & ASCII.ESC & "[0m");
      Read_Integer_List (List);
      AUnit.Assertions.Assert (List =
                                 List_Of_Integers'(Length => 5,
                                                   Elements => (1 => 5,
                                                                2 => 4,
                                                                3 => 3,
                                                                4 => 2,
                                                                5 => 1,
                                                                others => 0)),
                               "List is not {5, 4, 3, 2, 1}");

--  begin read only
   end Test_Read_Integer_List;
--  end read only


--  begin read only
   procedure Test_Read_Errors (Gnattest_T : in out Test);
   procedure Test_Read_Errors_08380d (Gnattest_T : in out Test) renames Test_Read_Errors;
--  id:2.2/08380d1cf7965931/Read_Errors/1/0/
   procedure Test_Read_Errors (Gnattest_T : in out Test) is
   --  inputs.ads:9:4:Read_Errors
--  end read only

      pragma Unreferenced (Gnattest_T);
      List : List_Of_Errors;
      Empty_List : constant List_Of_Errors := (Raquel   => None,
                                               Jordi    => None,
                                               Francesc => None);
   begin

      List := Empty_List;
      Put_Line (ASCII.ESC & "[1;31m[ TEST : enter n, n, n ] " & ASCII.ESC & "[0m");
      Read_Errors (Inject_Into => List);
      AUnit.Assertions.Assert (List = Empty_List, "List is not {None, None, None}");

      List := Empty_List;
      Put_Line (ASCII.ESC & "[1;31m[ TEST : enter w, d, o ] " & ASCII.ESC & "[0m");
      Read_Errors (Inject_Into => List);
      AUnit.Assertions.Assert (List = List_Of_Errors'(Raquel  => Wrong_Order,
                                                      Jordi   => Duplication,
                                                     Francesc => Omission),
                               "List is not {Wrong_Order, Duplication, Omission}");

--  begin read only
   end Test_Read_Errors;
--  end read only


--  begin read only
   procedure Test_More_Loops (Gnattest_T : in out Test);
   procedure Test_More_Loops_f28114 (Gnattest_T : in out Test) renames Test_More_Loops;
--  id:2.2/f28114688ef2fa44/More_Loops/1/0/
   procedure Test_More_Loops (Gnattest_T : in out Test) is
   --  inputs.ads:11:4:More_Loops
--  end read only

      pragma Unreferenced (Gnattest_T);

   begin

      Put (ASCII.ESC & "[1;31m[ TEST : enter y ] " & ASCII.ESC & "[0m");
      AUnit.Assertions.Assert (More_Loops = True, "you did not enter 'y'");

      Put (ASCII.ESC & "[1;31m[ TEST : enter n ] " & ASCII.ESC & "[0m");
      AUnit.Assertions.Assert (More_Loops = False, "you did not enter 'n'");

--  begin read only
   end Test_More_Loops;
--  end read only

--  begin read only
--  id:2.2/02/
--
--  This section can be used to add elaboration code for the global state.
--
begin
--  end read only
   null;
--  begin read only
--  end read only
end Inputs.Test_Data.Tests;
