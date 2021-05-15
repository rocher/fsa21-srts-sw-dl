--  This package is intended to set up and tear down  the test environment.
--  Once created by GNATtest, this package will never be overwritten
--  automatically. Contents of this package can be modified in any way
--  except for sections surrounded by a 'read only' marker.


with AUnit.Test_Fixtures;

with GNATtest_Generated;

package Francesc_Implementation.Francesc_Sorting_Algorithm_Test_Data is

   type Francesc_Sorting_Algorithm_Access is access all GNATtest_Generated.GNATtest_Standard.Francesc_Implementation.Francesc_Sorting_Algorithm'Class;

--  begin read only
   type Test_Francesc_Sorting_Algorithm is new AUnit.Test_Fixtures.Test_Fixture
--  end read only
   with record
      Fixture : Francesc_Sorting_Algorithm_Access;
   end record;

   procedure Set_Up (Gnattest_T : in out Test_Francesc_Sorting_Algorithm);
   procedure Tear_Down (Gnattest_T : in out Test_Francesc_Sorting_Algorithm);

end Francesc_Implementation.Francesc_Sorting_Algorithm_Test_Data;
