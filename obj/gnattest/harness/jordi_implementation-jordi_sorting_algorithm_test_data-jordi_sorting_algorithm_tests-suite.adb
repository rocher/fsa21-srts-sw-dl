--  This package has been generated automatically by GNATtest.
--  Do not edit any part of it, see GNATtest documentation for more details.

--  begin read only
with AUnit.Test_Caller;
with Gnattest_Generated;

package body Jordi_Implementation.Jordi_Sorting_Algorithm_Test_Data.Jordi_Sorting_Algorithm_Tests.Suite is

   use AUnit.Test_Suites;

   package Runner_1 is new AUnit.Test_Caller
     (GNATtest_Generated.GNATtest_Standard.Jordi_Implementation.Jordi_Sorting_Algorithm_Test_Data.Jordi_Sorting_Algorithm_Tests.Test_Jordi_Sorting_Algorithm);

   Result : aliased AUnit.Test_Suites.Test_Suite;

   Case_1_1_Test_Sort_573feb : aliased Runner_1.Test_Case;
   Case_2_1_Test_Inject_Error_7e0b0c : aliased Runner_1.Test_Case;

   function Suite return AUnit.Test_Suites.Access_Test_Suite is
   begin

      Runner_1.Create
        (Case_1_1_Test_Sort_573feb,
         "jordi_implementation.ads:8:4:",
         Test_Sort_573feb'Access);
      Runner_1.Create
        (Case_2_1_Test_Inject_Error_7e0b0c,
         "jordi_implementation.ads:12:4:",
         Test_Inject_Error_7e0b0c'Access);

      Add_Test (Result'Access, Case_1_1_Test_Sort_573feb'Access);
      Add_Test (Result'Access, Case_2_1_Test_Inject_Error_7e0b0c'Access);

      return Result'Access;

   end Suite;

end Jordi_Implementation.Jordi_Sorting_Algorithm_Test_Data.Jordi_Sorting_Algorithm_Tests.Suite;
--  end read only
