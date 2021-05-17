--  This package has been generated automatically by GNATtest.
--  Do not edit any part of it, see GNATtest documentation for more details.

--  begin read only
with AUnit.Test_Caller;
with Gnattest_Generated;

package body Implementation_Interface.Test_Data.Tests.Suite is

   use AUnit.Test_Suites;

   package Runner_1 is new AUnit.Test_Caller
     (GNATtest_Generated.GNATtest_Standard.Implementation_Interface.Test_Data.Tests.Test);

   Result : aliased AUnit.Test_Suites.Test_Suite;

   Case_1_1_Test_Swap_73e4ff : aliased Runner_1.Test_Case;
   Case_2_1_Test_Print_de0572 : aliased Runner_1.Test_Case;
   Case_3_1_Test_Is_Sorted_20b63d : aliased Runner_1.Test_Case;
   Case_4_1_Test_Exist_Duplicates_8964fa : aliased Runner_1.Test_Case;

   function Suite return AUnit.Test_Suites.Access_Test_Suite is
   begin

      Runner_1.Create
        (Case_1_1_Test_Swap_73e4ff,
         "implementation_interface.ads:8:4:",
         Test_Swap_73e4ff'Access);
      Runner_1.Create
        (Case_2_1_Test_Print_de0572,
         "implementation_interface.ads:9:4:",
         Test_Print_de0572'Access);
      Runner_1.Create
        (Case_3_1_Test_Is_Sorted_20b63d,
         "implementation_interface.ads:10:4:",
         Test_Is_Sorted_20b63d'Access);
      Runner_1.Create
        (Case_4_1_Test_Exist_Duplicates_8964fa,
         "implementation_interface.ads:11:4:",
         Test_Exist_Duplicates_8964fa'Access);

      Add_Test (Result'Access, Case_1_1_Test_Swap_73e4ff'Access);
      Add_Test (Result'Access, Case_2_1_Test_Print_de0572'Access);
      Add_Test (Result'Access, Case_3_1_Test_Is_Sorted_20b63d'Access);
      Add_Test (Result'Access, Case_4_1_Test_Exist_Duplicates_8964fa'Access);

      return Result'Access;

   end Suite;

end Implementation_Interface.Test_Data.Tests.Suite;
--  end read only
