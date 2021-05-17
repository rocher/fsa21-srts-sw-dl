--  This package has been generated automatically by GNATtest.
--  You are allowed to add your code to the bodies of test routines.
--  Such changes will be kept during further regeneration of this file.
--  All code placed outside of test routine bodies will be lost. The
--  code intended to set up and tear down the test environment should be
--  placed into Francesc_Implementation.Francesc_Sorting_Algorithm_Test_Data.

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
package body Francesc_Implementation.Francesc_Sorting_Algorithm_Test_Data.Francesc_Sorting_Algorithm_Tests is

--  begin read only
--  id:2.2/01/
--
--  This section can be used to add global variables and other elements.
--
--  end read only

--  begin read only
--  end read only

--  begin read only
   procedure Test_Sort (Gnattest_T : in out Test_Francesc_Sorting_Algorithm);
   procedure Test_Sort_573feb (Gnattest_T : in out Test_Francesc_Sorting_Algorithm) renames Test_Sort;
--  id:2.2/573feb500191b7f7/Sort/1/0/
   procedure Test_Sort (Gnattest_T : in out Test_Francesc_Sorting_Algorithm) is
   --  francesc_implementation.ads:8:4:Sort
--  end read only

      pragma Unreferenced (Gnattest_T);
      List : List_Of_Integers;
      Francesc_Impl : Francesc_Sorting_Algorithm;
   begin

      List := List_Of_Integers'(Length => 0,
                                Elements => (others => 0));
      Francesc_Impl.Sort (List);
      AUnit.Assertions.Assert
        (List = List_Of_Integers'(Length => 0,
                                  Elements => (others => 0)),
         "list is not as expected");

      List := List_Of_Integers'(Length => 1,
                                Elements => (1 => 1, others => 0));
      Francesc_Impl.Sort (List);
      AUnit.Assertions.Assert
        (List = List_Of_Integers'(Length => 1,
                                  Elements => (1 => 1, others => 0)),
         "list is not as expected");

      List := List_Of_Integers'(Length => 3,
                                Elements => (1 => 1,
                                             2 => 2,
                                             3 => 3,
                                             others => 0));
      Francesc_Impl.Sort (List);
      AUnit.Assertions.Assert
        (List = List_Of_Integers'(Length => 3,
                                  Elements => (1 => 1,
                                               2 => 2,
                                               3 => 3,
                                               others => 0)),
         "list is not as expected");

      List := List_Of_Integers'(Length => 3,
                                Elements => (1 => 100,
                                             2 =>  25,
                                             3 => -33,
                                             others => 0));
      Francesc_Impl.Sort (List);
      AUnit.Assertions.Assert
        (List = List_Of_Integers'(Length => 3,
                                  Elements => (1 => -33,
                                               2 =>  25,
                                               3 => 100,
                                               others => 0)),
         "list is not as expected");

      List := List_Of_Integers'(Length => 7,
                                Elements => (1 => 100,
                                             2 =>  25,
                                             3 => -33,
                                             4 =>   0,
                                             5 =>  12,
                                             6 => -12,
                                             7 =>  77,
                                             others => 0));
      Francesc_Impl.Sort (List);
      AUnit.Assertions.Assert
        (List = List_Of_Integers'(Length => 7,
                                  Elements => (1 => -33,
                                               2 => -12,
                                               3 =>   0,
                                               4 =>  12,
                                               5 =>  25,
                                               6 =>  77,
                                               7 => 100,
                                               others => 0)),
         "list is not as expected");

--  begin read only
   end Test_Sort;
--  end read only


--  begin read only
   procedure Test_Inject_Error (Gnattest_T : in out Test_Francesc_Sorting_Algorithm);
   procedure Test_Inject_Error_7e0b0c (Gnattest_T : in out Test_Francesc_Sorting_Algorithm) renames Test_Inject_Error;
--  id:2.2/7e0b0c7d80845ac1/Inject_Error/1/0/
   procedure Test_Inject_Error (Gnattest_T : in out Test_Francesc_Sorting_Algorithm) is
   --  francesc_implementation.ads:12:4:Inject_Error
--  end read only

      pragma Unreferenced (Gnattest_T);
      L, List : List_Of_Integers;
      Empty_List : constant List_Of_Integers := (Length => 0,
                                                 Elements => (others => 0));
      Francesc_Impl : Francesc_Sorting_Algorithm;

      function Is_Sorted (List : List_Of_Integers) return Boolean is
      begin
         if List.Length > 1 then
            for I in 1 .. List.Length-1 loop
               if List.Elements (I) > List.Elements (I+1) then
                  return False;
               end if;
            end loop;
         end if;
         return True;
      end Is_Sorted;

      function With_Duplicates (List : List_Of_Integers) return Boolean is
      begin
         if List.Length > 1 then
            for I in 1 .. List.Length-1 loop
               if List.Elements (I) = List.Elements (I+1) then
                  return True;
               end if;
            end loop;
         end if;
         return False;
      end With_Duplicates;
   begin

      --  tests with empty list
      List := Empty_List;
      Francesc_Impl.Inject_Error (List, None);
      AUnit.Assertions.Assert (List = Empty_List,
                               "error injected when should'nt");

      List := Empty_List;
      Francesc_Impl.Inject_Error (List, Wrong_Order);
      AUnit.Assertions.Assert (List = Empty_List,
                               "error injected in empty list");

      List := Empty_List;
      Francesc_Impl.Inject_Error (List, Duplication);
      AUnit.Assertions.Assert (List = Empty_List,
                               "error injected in empty list");


      List := Empty_List;
      Francesc_Impl.Inject_Error (List, Omission);
      AUnit.Assertions.Assert (List = Empty_List,
                               "error injected in empty list");

      --  tests with unitary list
      L := List_Of_Integers'(Length => 1,
                             Elements => (1 => 1,
                                          others => 0));
      List := L;
      Francesc_Impl.Inject_Error (List, None);
      AUnit.Assertions.Assert (List = L,
                               "error injected when should'nt");
      List := L;
      Francesc_Impl.Inject_Error (List, Wrong_Order);
      AUnit.Assertions.Assert (List = L,
                               "wrong order in unitary list?");

      List := L;
      Francesc_Impl.Inject_Error (List, Duplication);
      AUnit.Assertions.Assert (List = List_Of_Integers'(Length => 2,
                                                        Elements => (1 => 1,
                                                                     2 => 1,
                                                                     others => 0)),
                               "duplication not injected in unitary list");


      List := L;
      Francesc_Impl.Inject_Error (List, Omission);
      AUnit.Assertions.Assert (List = Empty_List,
                               "omission not injected in unitary list");

      --  tests with medium lists
      L := List_Of_Integers'(Length => 5,
                             Elements => (1 => 2,
                                          2 => 5,
                                          3 => 42,
                                          4 => 127,
                                          5 => 8732,
                                          others => 0));
      List := L;
      Francesc_Impl.Inject_Error (List, None);
      AUnit.Assertions.Assert (List = L,
                               "error injected when should'nt");
      List := L;
      Francesc_Impl.Inject_Error (List, Wrong_Order);
      AUnit.Assertions.Assert (List.Length = L.Length
                               and not Is_Sorted (List),
                               "wrong order not injected");

      List := L;
      Francesc_Impl.Inject_Error (List, Duplication);
      AUnit.Assertions.Assert (List.Length = L.Length + 1
                               and With_Duplicates (List)
                               and Is_Sorted (List),
                               "duplication not injected");
      List := L;
      Francesc_Impl.Inject_Error (List, Omission);
      AUnit.Assertions.Assert (List.Length = L.Length - 1
                               and Is_Sorted (List),
                               "omission not injected");

      --  tests with max lists
      L := List_Of_Integers'(Length => 10,
                             Elements => (1 => 2,
                                          2 => 5,
                                          3 => 42,
                                          4 => 127,
                                          5 => 8732,
                                          6 => 8777,
                                          7 => 8888,
                                          8 => 9212,
                                          9 => 9337,
                                          10 => 9865));
      List := L;
      Francesc_Impl.Inject_Error (List, None);
      AUnit.Assertions.Assert (List = L,
                               "error injected when should'nt");
      List := L;
      Francesc_Impl.Inject_Error (List, Wrong_Order);
      AUnit.Assertions.Assert (List.Length = L.Length
                               and not Is_Sorted (List),
                               "wrong order not injected");

      List := L;
      Francesc_Impl.Inject_Error (List, Duplication);
      AUnit.Assertions.Assert (List = L,
                               "duplication injected in max list?");
      List := L;
      Francesc_Impl.Inject_Error (List, Omission);
      AUnit.Assertions.Assert (List.Length = 9
                               and Is_Sorted (List),
                               "omission not injected");

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
end Francesc_Implementation.Francesc_Sorting_Algorithm_Test_Data.Francesc_Sorting_Algorithm_Tests;
