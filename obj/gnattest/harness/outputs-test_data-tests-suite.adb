--  This package has been generated automatically by GNATtest.
--  Do not edit any part of it, see GNATtest documentation for more details.

--  begin read only
with AUnit.Test_Caller;
with Gnattest_Generated;

package body Outputs.Test_Data.Tests.Suite is

   use AUnit.Test_Suites;

   package Runner_1 is new AUnit.Test_Caller
     (GNATtest_Generated.GNATtest_Standard.Outputs.Test_Data.Tests.Test);

   Result : aliased AUnit.Test_Suites.Test_Suite;

   Case_1_1_Test_Print_Results_edad11 : aliased Runner_1.Test_Case;

   function Suite return AUnit.Test_Suites.Access_Test_Suite is
   begin

      Runner_1.Create
        (Case_1_1_Test_Print_Results_edad11,
         "outputs.ads:5:4:",
         Test_Print_Results_edad11'Access);

      Add_Test (Result'Access, Case_1_1_Test_Print_Results_edad11'Access);

      return Result'Access;

   end Suite;

end Outputs.Test_Data.Tests.Suite;
--  end read only
