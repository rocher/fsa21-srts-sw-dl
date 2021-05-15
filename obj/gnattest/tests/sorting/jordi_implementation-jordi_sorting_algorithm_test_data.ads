--  This package is intended to set up and tear down  the test environment.
--  Once created by GNATtest, this package will never be overwritten
--  automatically. Contents of this package can be modified in any way
--  except for sections surrounded by a 'read only' marker.


with AUnit.Test_Fixtures;

with GNATtest_Generated;

package Jordi_Implementation.Jordi_Sorting_Algorithm_Test_Data is

   type Jordi_Sorting_Algorithm_Access is access all GNATtest_Generated.GNATtest_Standard.Jordi_Implementation.Jordi_Sorting_Algorithm'Class;

--  begin read only
   type Test_Jordi_Sorting_Algorithm is new AUnit.Test_Fixtures.Test_Fixture
--  end read only
   with record
      Fixture : Jordi_Sorting_Algorithm_Access;
   end record;

   procedure Set_Up (Gnattest_T : in out Test_Jordi_Sorting_Algorithm);
   procedure Tear_Down (Gnattest_T : in out Test_Jordi_Sorting_Algorithm);

end Jordi_Implementation.Jordi_Sorting_Algorithm_Test_Data;
