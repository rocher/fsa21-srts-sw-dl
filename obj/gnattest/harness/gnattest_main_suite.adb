--  This package has been generated automatically by GNATtest.
--  Do not edit any part of it, see GNATtest documentation for more details.

--  begin read only
with Francesc_Implementation.Francesc_Sorting_Algorithm_Test_Data.Francesc_Sorting_Algorithm_Tests.Suite;
with Jordi_Implementation.Jordi_Sorting_Algorithm_Test_Data.Jordi_Sorting_Algorithm_Tests.Suite;
with Raquel_Implementation.Raquel_Sorting_Algorithm_Test_Data.Raquel_Sorting_Algorithm_Tests.Suite;
with Inputs.Test_Data.Tests.Suite;
with Outputs.Test_Data.Tests.Suite;
with Voter.Test_Data.Tests.Suite;

package body Gnattest_Main_Suite is

   Result : aliased AUnit.Test_Suites.Test_Suite;

   function Suite return AUnit.Test_Suites.Access_Test_Suite is
   begin

      Add_Test (Result'Access, Francesc_Implementation.Francesc_Sorting_Algorithm_Test_Data.Francesc_Sorting_Algorithm_Tests.Suite.Suite);
      Add_Test (Result'Access, Jordi_Implementation.Jordi_Sorting_Algorithm_Test_Data.Jordi_Sorting_Algorithm_Tests.Suite.Suite);
      Add_Test (Result'Access, Raquel_Implementation.Raquel_Sorting_Algorithm_Test_Data.Raquel_Sorting_Algorithm_Tests.Suite.Suite);
      Add_Test (Result'Access, Inputs.Test_Data.Tests.Suite.Suite);
      Add_Test (Result'Access, Outputs.Test_Data.Tests.Suite.Suite);
      Add_Test (Result'Access, Voter.Test_Data.Tests.Suite.Suite);

      return Result'Access;

   end Suite;

end Gnattest_Main_Suite;
--  end read only
