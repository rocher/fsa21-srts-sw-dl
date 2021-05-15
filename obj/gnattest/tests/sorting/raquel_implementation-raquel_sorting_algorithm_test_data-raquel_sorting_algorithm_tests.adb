--  This package has been generated automatically by GNATtest.
--  You are allowed to add your code to the bodies of test routines.
--  Such changes will be kept during further regeneration of this file.
--  All code placed outside of test routine bodies will be lost. The
--  code intended to set up and tear down the test environment should be
--  placed into Raquel_Implementation.Raquel_Sorting_Algorithm_Test_Data.

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
package body Raquel_Implementation.Raquel_Sorting_Algorithm_Test_Data.Raquel_Sorting_Algorithm_Tests is

--  begin read only
--  id:2.2/01/
--
--  This section can be used to add global variables and other elements.
--
--  end read only

--  begin read only
--  end read only

--  begin read only
   procedure Test_Sort (Gnattest_T : in out Test_Raquel_Sorting_Algorithm);
   procedure Test_Sort_573feb (Gnattest_T : in out Test_Raquel_Sorting_Algorithm) renames Test_Sort;
--  id:2.2/573feb500191b7f7/Sort/1/0/
   procedure Test_Sort (Gnattest_T : in out Test_Raquel_Sorting_Algorithm) is
   --  raquel_implementation.ads:8:4:Sort
--  end read only

      pragma Unreferenced (Gnattest_T);

   begin

      AUnit.Assertions.Assert
        (Gnattest_Generated.Default_Assert_Value,
         "Test not implemented.");

--  begin read only
   end Test_Sort;
--  end read only


--  begin read only
   procedure Test_Inject_Error (Gnattest_T : in out Test_Raquel_Sorting_Algorithm);
   procedure Test_Inject_Error_7e0b0c (Gnattest_T : in out Test_Raquel_Sorting_Algorithm) renames Test_Inject_Error;
--  id:2.2/7e0b0c7d80845ac1/Inject_Error/1/0/
   procedure Test_Inject_Error (Gnattest_T : in out Test_Raquel_Sorting_Algorithm) is
   --  raquel_implementation.ads:12:4:Inject_Error
--  end read only

      pragma Unreferenced (Gnattest_T);

   begin

      AUnit.Assertions.Assert
        (Gnattest_Generated.Default_Assert_Value,
         "Test not implemented.");

--  begin read only
   end Test_Inject_Error;
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
end Raquel_Implementation.Raquel_Sorting_Algorithm_Test_Data.Raquel_Sorting_Algorithm_Tests;
