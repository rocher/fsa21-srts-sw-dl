with Types;   use Types;
with Inputs;  use Inputs;
with Outputs; use Outputs;
with Voter;   use Voter;

with Raquel_Implementation;   use Raquel_Implementation;
with Jordi_Implementation;    use Jordi_Implementation;
with Francesc_Implementation; use Francesc_Implementation;

procedure N_Sort_Voting is

   Input_Data    : List_Of_Integers;
   Inject_Into   : List_Of_Errors;
   Three_Lists   : Named_Lists_Of_Integers;

   Raquel_Impl   : Raquel_Sorting_Algorithm;
   Jordi_Impl    : Jordi_Sorting_Algorithm;
   Francesc_Impl : Francesc_Sorting_Algorithm;

   Solution      : Solution_Of_Voting;

   Empty_Errors  : constant List_Of_Errors   := (others   => None);
   Empty_List    : constant List_Of_Integers := (Length   => 0,
                                                 Elements => (others => 0));

begin

   loop

      --
      --  read input data
      --
      Input_Data  := Empty_List;
      Inject_Into := Empty_Errors;

      Input_Data.Length := Read_Array_Length;
      Read_Integer_List (Input_Data);
      Read_Errors (Inject_Into);

      Three_Lists := (Raquel   => Input_Data,
                      Jordi    => Input_Data,
                      Francesc => Input_Data);

      --
      --  sorting and injecting errrors, if any
      --
      Raquel_Impl.Sort (Three_Lists (Raquel));
      Raquel_Impl.Inject_Error (Three_Lists (Raquel),
                                Inject_Into (Raquel));

      Jordi_Impl.Sort (Three_Lists (Jordi));
      Jordi_Impl.Inject_Error (Three_Lists (Jordi),
                               Inject_Into (Jordi));

      Francesc_Impl.Sort (Three_Lists (Francesc));
      Francesc_Impl.Inject_Error (Three_Lists (Francesc),
                                  Inject_Into (Francesc));

      --
      --  voter computes solution
      --
      Solution := Compute_Solution (Three_Lists);

      --
      --  output results
      --
      Print_Results (Solution);

      exit when not More_Loops;
   end loop;

end N_Sort_Voting;
