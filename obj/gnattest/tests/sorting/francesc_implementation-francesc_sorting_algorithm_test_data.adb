--  This package is intended to set up and tear down  the test environment.
--  Once created by GNATtest, this package will never be overwritten
--  automatically. Contents of this package can be modified in any way
--  except for sections surrounded by a 'read only' marker.

package body Francesc_Implementation.Francesc_Sorting_Algorithm_Test_Data is

   Local_Francesc_Sorting_Algorithm : aliased GNATtest_Generated.GNATtest_Standard.Francesc_Implementation.Francesc_Sorting_Algorithm;
   procedure Set_Up (Gnattest_T : in out Test_Francesc_Sorting_Algorithm) is
   begin
      Gnattest_T.Fixture := Local_Francesc_Sorting_Algorithm'Access;
   end Set_Up;

   procedure Tear_Down (Gnattest_T : in out Test_Francesc_Sorting_Algorithm) is
   begin
      null;
   end Tear_Down;

end Francesc_Implementation.Francesc_Sorting_Algorithm_Test_Data;
