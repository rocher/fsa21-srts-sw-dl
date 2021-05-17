--  This package has been generated automatically by GNATtest.
--  You are allowed to add your code to the bodies of test routines.
--  Such changes will be kept during further regeneration of this file.
--  All code placed outside of test routine bodies will be lost. The
--  code intended to set up and tear down the test environment should be
--  placed into Implementation_Interface.Test_Data.

with AUnit.Assertions; use AUnit.Assertions;
with System.Assertions;

--  begin read only
--  id:2.2/00/
--
--  This section can be used to add with clauses if necessary.
--
--  end read only

--  begin read only
--  end read only
package body Implementation_Interface.Test_Data.Tests is

--  begin read only
--  id:2.2/01/
--
--  This section can be used to add global variables and other elements.
--
--  end read only

--  begin read only
--  end read only

--  begin read only
   procedure Test_Swap (Gnattest_T : in out Test);
   procedure Test_Swap_73e4ff (Gnattest_T : in out Test) renames Test_Swap;
--  id:2.2/73e4fff887823ebb/Swap/1/0/
   procedure Test_Swap (Gnattest_T : in out Test) is
   --  implementation_interface.ads:8:4:Swap
--  end read only

      pragma Unreferenced (Gnattest_T);

   begin

      AUnit.Assertions.Assert
        (Gnattest_Generated.Default_Assert_Value,
         "Test not implemented.");

--  begin read only
   end Test_Swap;
--  end read only


--  begin read only
   procedure Test_Print (Gnattest_T : in out Test);
   procedure Test_Print_de0572 (Gnattest_T : in out Test) renames Test_Print;
--  id:2.2/de0572c423018467/Print/1/0/
   procedure Test_Print (Gnattest_T : in out Test) is
   --  implementation_interface.ads:9:4:Print
--  end read only

      pragma Unreferenced (Gnattest_T);

   begin

      AUnit.Assertions.Assert
        (Gnattest_Generated.Default_Assert_Value,
         "Test not implemented.");

--  begin read only
   end Test_Print;
--  end read only


--  begin read only
   procedure Test_Is_Sorted (Gnattest_T : in out Test);
   procedure Test_Is_Sorted_20b63d (Gnattest_T : in out Test) renames Test_Is_Sorted;
--  id:2.2/20b63d8b08fccf7a/Is_Sorted/1/0/
   procedure Test_Is_Sorted (Gnattest_T : in out Test) is
   --  implementation_interface.ads:10:4:Is_Sorted
--  end read only

      pragma Unreferenced (Gnattest_T);

   begin

      AUnit.Assertions.Assert
        (Gnattest_Generated.Default_Assert_Value,
         "Test not implemented.");

--  begin read only
   end Test_Is_Sorted;
--  end read only


--  begin read only
   procedure Test_Exist_Duplicates (Gnattest_T : in out Test);
   procedure Test_Exist_Duplicates_8964fa (Gnattest_T : in out Test) renames Test_Exist_Duplicates;
--  id:2.2/8964fac096063667/Exist_Duplicates/1/0/
   procedure Test_Exist_Duplicates (Gnattest_T : in out Test) is
   --  implementation_interface.ads:11:4:Exist_Duplicates
--  end read only

      pragma Unreferenced (Gnattest_T);

   begin

      AUnit.Assertions.Assert
        (Gnattest_Generated.Default_Assert_Value,
         "Test not implemented.");

--  begin read only
   end Test_Exist_Duplicates;
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
end Implementation_Interface.Test_Data.Tests;
