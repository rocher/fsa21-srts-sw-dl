--  This package has been generated automatically by GNATtest.
--  Do not edit any part of it, see GNATtest documentation for more details.

--  begin read only
with AUnit.Test_Caller;
with Gnattest_Generated;

package body Inputs.Test_Data.Tests.Suite is

   use AUnit.Test_Suites;

   package Runner_1 is new AUnit.Test_Caller
     (GNATtest_Generated.GNATtest_Standard.Inputs.Test_Data.Tests.Test);

   Result : aliased AUnit.Test_Suites.Test_Suite;

   Case_1_1_Test_Read_Array_Length_e9ef85 : aliased Runner_1.Test_Case;
   Case_2_1_Test_Read_Integer_List_0b63c8 : aliased Runner_1.Test_Case;
   Case_3_1_Test_Read_Errors_08380d : aliased Runner_1.Test_Case;
   Case_4_1_Test_More_Loops_f28114 : aliased Runner_1.Test_Case;

   function Suite return AUnit.Test_Suites.Access_Test_Suite is
   begin

      Runner_1.Create
        (Case_1_1_Test_Read_Array_Length_e9ef85,
         "inputs.ads:5:4:",
         Test_Read_Array_Length_e9ef85'Access);
      Runner_1.Create
        (Case_2_1_Test_Read_Integer_List_0b63c8,
         "inputs.ads:7:4:",
         Test_Read_Integer_List_0b63c8'Access);
      Runner_1.Create
        (Case_3_1_Test_Read_Errors_08380d,
         "inputs.ads:9:4:",
         Test_Read_Errors_08380d'Access);
      Runner_1.Create
        (Case_4_1_Test_More_Loops_f28114,
         "inputs.ads:11:4:",
         Test_More_Loops_f28114'Access);

      Add_Test (Result'Access, Case_1_1_Test_Read_Array_Length_e9ef85'Access);
      Add_Test (Result'Access, Case_2_1_Test_Read_Integer_List_0b63c8'Access);
      Add_Test (Result'Access, Case_3_1_Test_Read_Errors_08380d'Access);
      Add_Test (Result'Access, Case_4_1_Test_More_Loops_f28114'Access);

      return Result'Access;

   end Suite;

end Inputs.Test_Data.Tests.Suite;
--  end read only
