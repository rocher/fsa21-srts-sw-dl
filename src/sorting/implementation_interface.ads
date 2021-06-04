with Types; use Types;

package Implementation_Interface is

   type Sorting_Algorithm is interface;

   --  aux subprograms
   procedure Swap (X, Y : in out Integer) with Post => (X = Y'Old and Y = X'Old);
   procedure Print (List : List_Of_Integers);
   function Is_Sorted (List : List_Of_Integers) return Boolean;
   function Exist_Duplicates (List : List_Of_Integers) return Boolean;

   --
   --  interface
   --
   procedure Sort (Self : Sorting_Algorithm;
                   List : in out List_Of_Integers)
   is abstract
     with
       Post'Class => Is_Sorted (List);

   procedure Inject_Error (Self  : Sorting_Algorithm;
                           List  : in out List_Of_Integers;
                           Which : Error_Name)
   is abstract
     with
       Pre'Class => Is_Sorted (List),
     Post'Class =>
       (if Which = None then List = List'Old)
     and
       --  begin Wrong_Order
     (if Which = Wrong_Order then
        (if 2 <= List'Old.Length then
             (List.Length = List'Old.Length and not Is_Sorted (List))
               else List = List'Old
        )
     )
       --  end Wrong_Order
     and
       --  begin Duplication
     (if Which = Duplication then
        (if 1 <= List'Old.Length and List'Old.Length < 10 then
             (List.Length = List'Old.Length+1 and Exist_Duplicates (List))
               else List = List'Old
        )
     )
       --  end Duplication
     and
       --  begin Omission
     (if Which = Omission then
        (if 1 <= List'Old.Length then
             (List.Length = List'Old.Length-1 and Is_Sorted (List))
               else List = List'Old
        )
     )
       --  end Omission
   ;

end Implementation_Interface;
