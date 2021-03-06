pragma Warnings (Off);
pragma Ada_95;
pragma Source_File_Name (ada_main, Spec_File_Name => "b__test_runner.ads");
pragma Source_File_Name (ada_main, Body_File_Name => "b__test_runner.adb");
pragma Suppress (Overflow_Check);
with Ada.Exceptions;

package body ada_main is

   E075 : Short_Integer; pragma Import (Ada, E075, "system__os_lib_E");
   E015 : Short_Integer; pragma Import (Ada, E015, "system__soft_links_E");
   E025 : Short_Integer; pragma Import (Ada, E025, "system__exception_table_E");
   E070 : Short_Integer; pragma Import (Ada, E070, "ada__io_exceptions_E");
   E055 : Short_Integer; pragma Import (Ada, E055, "ada__strings_E");
   E040 : Short_Integer; pragma Import (Ada, E040, "ada__containers_E");
   E027 : Short_Integer; pragma Import (Ada, E027, "system__exceptions_E");
   E017 : Short_Integer; pragma Import (Ada, E017, "system__soft_links__initialize_E");
   E057 : Short_Integer; pragma Import (Ada, E057, "ada__strings__maps_E");
   E061 : Short_Integer; pragma Import (Ada, E061, "ada__strings__maps__constants_E");
   E045 : Short_Integer; pragma Import (Ada, E045, "interfaces__c_E");
   E081 : Short_Integer; pragma Import (Ada, E081, "system__object_reader_E");
   E050 : Short_Integer; pragma Import (Ada, E050, "system__dwarf_lines_E");
   E039 : Short_Integer; pragma Import (Ada, E039, "system__traceback__symbolic_E");
   E203 : Short_Integer; pragma Import (Ada, E203, "ada__numerics_E");
   E104 : Short_Integer; pragma Import (Ada, E104, "ada__tags_E");
   E135 : Short_Integer; pragma Import (Ada, E135, "ada__streams_E");
   E144 : Short_Integer; pragma Import (Ada, E144, "gnat_E");
   E184 : Short_Integer; pragma Import (Ada, E184, "system__file_control_block_E");
   E137 : Short_Integer; pragma Import (Ada, E137, "system__finalization_root_E");
   E133 : Short_Integer; pragma Import (Ada, E133, "ada__finalization_E");
   E183 : Short_Integer; pragma Import (Ada, E183, "system__file_io_E");
   E139 : Short_Integer; pragma Import (Ada, E139, "system__storage_pools_E");
   E130 : Short_Integer; pragma Import (Ada, E130, "system__finalization_masters_E");
   E171 : Short_Integer; pragma Import (Ada, E171, "system__storage_pools__subpools_E");
   E163 : Short_Integer; pragma Import (Ada, E163, "ada__strings__unbounded_E");
   E125 : Short_Integer; pragma Import (Ada, E125, "ada__calendar_E");
   E179 : Short_Integer; pragma Import (Ada, E179, "ada__text_io_E");
   E186 : Short_Integer; pragma Import (Ada, E186, "gnat__directory_operations_E");
   E205 : Short_Integer; pragma Import (Ada, E205, "system__assertions_E");
   E141 : Short_Integer; pragma Import (Ada, E141, "system__pool_global_E");
   E210 : Short_Integer; pragma Import (Ada, E210, "system__random_seed_E");
   E196 : Short_Integer; pragma Import (Ada, E196, "system__regexp_E");
   E161 : Short_Integer; pragma Import (Ada, E161, "gnat__command_line_E");
   E099 : Short_Integer; pragma Import (Ada, E099, "aunit_E");
   E101 : Short_Integer; pragma Import (Ada, E101, "aunit__memory_E");
   E119 : Short_Integer; pragma Import (Ada, E119, "aunit__memory__utils_E");
   E116 : Short_Integer; pragma Import (Ada, E116, "ada_containers__aunit_lists_E");
   E128 : Short_Integer; pragma Import (Ada, E128, "aunit__tests_E");
   E123 : Short_Integer; pragma Import (Ada, E123, "aunit__time_measure_E");
   E121 : Short_Integer; pragma Import (Ada, E121, "aunit__test_results_E");
   E114 : Short_Integer; pragma Import (Ada, E114, "aunit__assertions_E");
   E110 : Short_Integer; pragma Import (Ada, E110, "aunit__test_filters_E");
   E112 : Short_Integer; pragma Import (Ada, E112, "aunit__simple_test_cases_E");
   E149 : Short_Integer; pragma Import (Ada, E149, "aunit__reporter_E");
   E151 : Short_Integer; pragma Import (Ada, E151, "aunit__reporter__gnattest_E");
   E221 : Short_Integer; pragma Import (Ada, E221, "aunit__test_fixtures_E");
   E227 : Short_Integer; pragma Import (Ada, E227, "aunit__test_caller_E");
   E159 : Short_Integer; pragma Import (Ada, E159, "aunit__test_suites_E");
   E157 : Short_Integer; pragma Import (Ada, E157, "aunit__run_E");
   E212 : Short_Integer; pragma Import (Ada, E212, "implementation_interface_E");
   E202 : Short_Integer; pragma Import (Ada, E202, "francesc_implementation_E");
   E219 : Short_Integer; pragma Import (Ada, E219, "francesc_implementation__francesc_sorting_algorithm_test_data_E");
   E223 : Short_Integer; pragma Import (Ada, E223, "francesc_implementation__francesc_sorting_algorithm_test_data__francesc_sorting_algorithm_tests_E");
   E225 : Short_Integer; pragma Import (Ada, E225, "francesc_implementation__francesc_sorting_algorithm_test_data__francesc_sorting_algorithm_tests__suite_E");
   E229 : Short_Integer; pragma Import (Ada, E229, "implementation_interface__test_data_E");
   E231 : Short_Integer; pragma Import (Ada, E231, "implementation_interface__test_data__tests_E");
   E233 : Short_Integer; pragma Import (Ada, E233, "implementation_interface__test_data__tests__suite_E");
   E235 : Short_Integer; pragma Import (Ada, E235, "inputs_E");
   E255 : Short_Integer; pragma Import (Ada, E255, "inputs__test_data_E");
   E257 : Short_Integer; pragma Import (Ada, E257, "inputs__test_data__tests_E");
   E259 : Short_Integer; pragma Import (Ada, E259, "inputs__test_data__tests__suite_E");
   E261 : Short_Integer; pragma Import (Ada, E261, "jordi_implementation_E");
   E263 : Short_Integer; pragma Import (Ada, E263, "jordi_implementation__jordi_sorting_algorithm_test_data_E");
   E265 : Short_Integer; pragma Import (Ada, E265, "jordi_implementation__jordi_sorting_algorithm_test_data__jordi_sorting_algorithm_tests_E");
   E267 : Short_Integer; pragma Import (Ada, E267, "jordi_implementation__jordi_sorting_algorithm_test_data__jordi_sorting_algorithm_tests__suite_E");
   E269 : Short_Integer; pragma Import (Ada, E269, "outputs_E");
   E271 : Short_Integer; pragma Import (Ada, E271, "outputs__test_data_E");
   E273 : Short_Integer; pragma Import (Ada, E273, "outputs__test_data__tests_E");
   E275 : Short_Integer; pragma Import (Ada, E275, "outputs__test_data__tests__suite_E");
   E277 : Short_Integer; pragma Import (Ada, E277, "raquel_implementation_E");
   E279 : Short_Integer; pragma Import (Ada, E279, "raquel_implementation__raquel_sorting_algorithm_test_data_E");
   E281 : Short_Integer; pragma Import (Ada, E281, "raquel_implementation__raquel_sorting_algorithm_test_data__raquel_sorting_algorithm_tests_E");
   E283 : Short_Integer; pragma Import (Ada, E283, "raquel_implementation__raquel_sorting_algorithm_test_data__raquel_sorting_algorithm_tests__suite_E");
   E285 : Short_Integer; pragma Import (Ada, E285, "voter_E");
   E287 : Short_Integer; pragma Import (Ada, E287, "voter__test_data_E");
   E289 : Short_Integer; pragma Import (Ada, E289, "voter__test_data__tests_E");
   E291 : Short_Integer; pragma Import (Ada, E291, "voter__test_data__tests__suite_E");
   E200 : Short_Integer; pragma Import (Ada, E200, "gnattest_main_suite_E");

   Sec_Default_Sized_Stacks : array (1 .. 1) of aliased System.Secondary_Stack.SS_Stack (System.Parameters.Runtime_Default_Sec_Stack_Size);

   Local_Priority_Specific_Dispatching : constant String := "";
   Local_Interrupt_States : constant String := "";

   Is_Elaborated : Boolean := False;

   procedure finalize_library is
   begin
      declare
         procedure F1;
         pragma Import (Ada, F1, "voter__test_data__tests__suite__finalize_body");
      begin
         E291 := E291 - 1;
         F1;
      end;
      E289 := E289 - 1;
      declare
         procedure F2;
         pragma Import (Ada, F2, "voter__test_data__tests__finalize_spec");
      begin
         F2;
      end;
      E287 := E287 - 1;
      declare
         procedure F3;
         pragma Import (Ada, F3, "voter__test_data__finalize_spec");
      begin
         F3;
      end;
      declare
         procedure F4;
         pragma Import (Ada, F4, "raquel_implementation__raquel_sorting_algorithm_test_data__raquel_sorting_algorithm_tests__suite__finalize_body");
      begin
         E283 := E283 - 1;
         F4;
      end;
      E281 := E281 - 1;
      declare
         procedure F5;
         pragma Import (Ada, F5, "raquel_implementation__raquel_sorting_algorithm_test_data__raquel_sorting_algorithm_tests__finalize_spec");
      begin
         F5;
      end;
      E279 := E279 - 1;
      declare
         procedure F6;
         pragma Import (Ada, F6, "raquel_implementation__raquel_sorting_algorithm_test_data__finalize_spec");
      begin
         F6;
      end;
      E277 := E277 - 1;
      declare
         procedure F7;
         pragma Import (Ada, F7, "raquel_implementation__finalize_spec");
      begin
         F7;
      end;
      declare
         procedure F8;
         pragma Import (Ada, F8, "outputs__test_data__tests__suite__finalize_body");
      begin
         E275 := E275 - 1;
         F8;
      end;
      E273 := E273 - 1;
      declare
         procedure F9;
         pragma Import (Ada, F9, "outputs__test_data__tests__finalize_spec");
      begin
         F9;
      end;
      E271 := E271 - 1;
      declare
         procedure F10;
         pragma Import (Ada, F10, "outputs__test_data__finalize_spec");
      begin
         F10;
      end;
      declare
         procedure F11;
         pragma Import (Ada, F11, "jordi_implementation__jordi_sorting_algorithm_test_data__jordi_sorting_algorithm_tests__suite__finalize_body");
      begin
         E267 := E267 - 1;
         F11;
      end;
      E265 := E265 - 1;
      declare
         procedure F12;
         pragma Import (Ada, F12, "jordi_implementation__jordi_sorting_algorithm_test_data__jordi_sorting_algorithm_tests__finalize_spec");
      begin
         F12;
      end;
      E263 := E263 - 1;
      declare
         procedure F13;
         pragma Import (Ada, F13, "jordi_implementation__jordi_sorting_algorithm_test_data__finalize_spec");
      begin
         F13;
      end;
      E261 := E261 - 1;
      declare
         procedure F14;
         pragma Import (Ada, F14, "jordi_implementation__finalize_spec");
      begin
         F14;
      end;
      declare
         procedure F15;
         pragma Import (Ada, F15, "inputs__test_data__tests__suite__finalize_body");
      begin
         E259 := E259 - 1;
         F15;
      end;
      E257 := E257 - 1;
      declare
         procedure F16;
         pragma Import (Ada, F16, "inputs__test_data__tests__finalize_spec");
      begin
         F16;
      end;
      E255 := E255 - 1;
      declare
         procedure F17;
         pragma Import (Ada, F17, "inputs__test_data__finalize_spec");
      begin
         F17;
      end;
      declare
         procedure F18;
         pragma Import (Ada, F18, "implementation_interface__test_data__tests__suite__finalize_body");
      begin
         E233 := E233 - 1;
         F18;
      end;
      E231 := E231 - 1;
      declare
         procedure F19;
         pragma Import (Ada, F19, "implementation_interface__test_data__tests__finalize_spec");
      begin
         F19;
      end;
      E229 := E229 - 1;
      declare
         procedure F20;
         pragma Import (Ada, F20, "implementation_interface__test_data__finalize_spec");
      begin
         F20;
      end;
      declare
         procedure F21;
         pragma Import (Ada, F21, "francesc_implementation__francesc_sorting_algorithm_test_data__francesc_sorting_algorithm_tests__suite__finalize_body");
      begin
         E225 := E225 - 1;
         F21;
      end;
      E223 := E223 - 1;
      declare
         procedure F22;
         pragma Import (Ada, F22, "francesc_implementation__francesc_sorting_algorithm_test_data__francesc_sorting_algorithm_tests__finalize_spec");
      begin
         F22;
      end;
      E219 := E219 - 1;
      declare
         procedure F23;
         pragma Import (Ada, F23, "francesc_implementation__francesc_sorting_algorithm_test_data__finalize_spec");
      begin
         F23;
      end;
      E202 := E202 - 1;
      declare
         procedure F24;
         pragma Import (Ada, F24, "francesc_implementation__finalize_spec");
      begin
         F24;
      end;
      E159 := E159 - 1;
      declare
         procedure F25;
         pragma Import (Ada, F25, "aunit__test_suites__finalize_spec");
      begin
         F25;
      end;
      E221 := E221 - 1;
      declare
         procedure F26;
         pragma Import (Ada, F26, "aunit__test_fixtures__finalize_spec");
      begin
         F26;
      end;
      E151 := E151 - 1;
      declare
         procedure F27;
         pragma Import (Ada, F27, "aunit__reporter__gnattest__finalize_spec");
      begin
         F27;
      end;
      E112 := E112 - 1;
      E110 := E110 - 1;
      declare
         procedure F28;
         pragma Import (Ada, F28, "aunit__simple_test_cases__finalize_spec");
      begin
         F28;
      end;
      declare
         procedure F29;
         pragma Import (Ada, F29, "aunit__test_filters__finalize_spec");
      begin
         F29;
      end;
      E114 := E114 - 1;
      declare
         procedure F30;
         pragma Import (Ada, F30, "aunit__assertions__finalize_spec");
      begin
         F30;
      end;
      E121 := E121 - 1;
      declare
         procedure F31;
         pragma Import (Ada, F31, "aunit__test_results__finalize_spec");
      begin
         F31;
      end;
      declare
         procedure F32;
         pragma Import (Ada, F32, "aunit__tests__finalize_spec");
      begin
         E128 := E128 - 1;
         F32;
      end;
      E196 := E196 - 1;
      declare
         procedure F33;
         pragma Import (Ada, F33, "system__regexp__finalize_spec");
      begin
         F33;
      end;
      E141 := E141 - 1;
      declare
         procedure F34;
         pragma Import (Ada, F34, "system__pool_global__finalize_spec");
      begin
         F34;
      end;
      E179 := E179 - 1;
      declare
         procedure F35;
         pragma Import (Ada, F35, "ada__text_io__finalize_spec");
      begin
         F35;
      end;
      E163 := E163 - 1;
      declare
         procedure F36;
         pragma Import (Ada, F36, "ada__strings__unbounded__finalize_spec");
      begin
         F36;
      end;
      E171 := E171 - 1;
      declare
         procedure F37;
         pragma Import (Ada, F37, "system__storage_pools__subpools__finalize_spec");
      begin
         F37;
      end;
      E130 := E130 - 1;
      declare
         procedure F38;
         pragma Import (Ada, F38, "system__finalization_masters__finalize_spec");
      begin
         F38;
      end;
      declare
         procedure F39;
         pragma Import (Ada, F39, "system__file_io__finalize_body");
      begin
         E183 := E183 - 1;
         F39;
      end;
      declare
         procedure Reraise_Library_Exception_If_Any;
            pragma Import (Ada, Reraise_Library_Exception_If_Any, "__gnat_reraise_library_exception_if_any");
      begin
         Reraise_Library_Exception_If_Any;
      end;
   end finalize_library;

   procedure adafinal is
      procedure s_stalib_adafinal;
      pragma Import (C, s_stalib_adafinal, "system__standard_library__adafinal");

      procedure Runtime_Finalize;
      pragma Import (C, Runtime_Finalize, "__gnat_runtime_finalize");

   begin
      if not Is_Elaborated then
         return;
      end if;
      Is_Elaborated := False;
      Runtime_Finalize;
      s_stalib_adafinal;
   end adafinal;

   type No_Param_Proc is access procedure;

   procedure adainit is
      Main_Priority : Integer;
      pragma Import (C, Main_Priority, "__gl_main_priority");
      Time_Slice_Value : Integer;
      pragma Import (C, Time_Slice_Value, "__gl_time_slice_val");
      WC_Encoding : Character;
      pragma Import (C, WC_Encoding, "__gl_wc_encoding");
      Locking_Policy : Character;
      pragma Import (C, Locking_Policy, "__gl_locking_policy");
      Queuing_Policy : Character;
      pragma Import (C, Queuing_Policy, "__gl_queuing_policy");
      Task_Dispatching_Policy : Character;
      pragma Import (C, Task_Dispatching_Policy, "__gl_task_dispatching_policy");
      Priority_Specific_Dispatching : System.Address;
      pragma Import (C, Priority_Specific_Dispatching, "__gl_priority_specific_dispatching");
      Num_Specific_Dispatching : Integer;
      pragma Import (C, Num_Specific_Dispatching, "__gl_num_specific_dispatching");
      Main_CPU : Integer;
      pragma Import (C, Main_CPU, "__gl_main_cpu");
      Interrupt_States : System.Address;
      pragma Import (C, Interrupt_States, "__gl_interrupt_states");
      Num_Interrupt_States : Integer;
      pragma Import (C, Num_Interrupt_States, "__gl_num_interrupt_states");
      Unreserve_All_Interrupts : Integer;
      pragma Import (C, Unreserve_All_Interrupts, "__gl_unreserve_all_interrupts");
      Exception_Tracebacks : Integer;
      pragma Import (C, Exception_Tracebacks, "__gl_exception_tracebacks");
      Detect_Blocking : Integer;
      pragma Import (C, Detect_Blocking, "__gl_detect_blocking");
      Default_Stack_Size : Integer;
      pragma Import (C, Default_Stack_Size, "__gl_default_stack_size");
      Default_Secondary_Stack_Size : System.Parameters.Size_Type;
      pragma Import (C, Default_Secondary_Stack_Size, "__gnat_default_ss_size");
      Leap_Seconds_Support : Integer;
      pragma Import (C, Leap_Seconds_Support, "__gl_leap_seconds_support");
      Bind_Env_Addr : System.Address;
      pragma Import (C, Bind_Env_Addr, "__gl_bind_env_addr");

      procedure Runtime_Initialize (Install_Handler : Integer);
      pragma Import (C, Runtime_Initialize, "__gnat_runtime_initialize");

      Finalize_Library_Objects : No_Param_Proc;
      pragma Import (C, Finalize_Library_Objects, "__gnat_finalize_library_objects");
      Binder_Sec_Stacks_Count : Natural;
      pragma Import (Ada, Binder_Sec_Stacks_Count, "__gnat_binder_ss_count");
      Default_Sized_SS_Pool : System.Address;
      pragma Import (Ada, Default_Sized_SS_Pool, "__gnat_default_ss_pool");

   begin
      if Is_Elaborated then
         return;
      end if;
      Is_Elaborated := True;
      Main_Priority := -1;
      Time_Slice_Value := -1;
      WC_Encoding := 'b';
      Locking_Policy := ' ';
      Queuing_Policy := ' ';
      Task_Dispatching_Policy := ' ';
      Priority_Specific_Dispatching :=
        Local_Priority_Specific_Dispatching'Address;
      Num_Specific_Dispatching := 0;
      Main_CPU := -1;
      Interrupt_States := Local_Interrupt_States'Address;
      Num_Interrupt_States := 0;
      Unreserve_All_Interrupts := 0;
      Exception_Tracebacks := 1;
      Detect_Blocking := 0;
      Default_Stack_Size := -1;
      Leap_Seconds_Support := 0;

      ada_main'Elab_Body;
      Default_Secondary_Stack_Size := System.Parameters.Runtime_Default_Sec_Stack_Size;
      Binder_Sec_Stacks_Count := 1;
      Default_Sized_SS_Pool := Sec_Default_Sized_Stacks'Address;

      Runtime_Initialize (1);

      Finalize_Library_Objects := finalize_library'access;

      System.Soft_Links'Elab_Spec;
      System.Exception_Table'Elab_Body;
      E025 := E025 + 1;
      Ada.Io_Exceptions'Elab_Spec;
      E070 := E070 + 1;
      Ada.Strings'Elab_Spec;
      E055 := E055 + 1;
      Ada.Containers'Elab_Spec;
      E040 := E040 + 1;
      System.Exceptions'Elab_Spec;
      E027 := E027 + 1;
      System.Soft_Links.Initialize'Elab_Body;
      E017 := E017 + 1;
      E015 := E015 + 1;
      System.Os_Lib'Elab_Body;
      E075 := E075 + 1;
      Ada.Strings.Maps'Elab_Spec;
      Ada.Strings.Maps.Constants'Elab_Spec;
      E061 := E061 + 1;
      Interfaces.C'Elab_Spec;
      E057 := E057 + 1;
      E045 := E045 + 1;
      System.Object_Reader'Elab_Spec;
      System.Dwarf_Lines'Elab_Spec;
      E050 := E050 + 1;
      System.Traceback.Symbolic'Elab_Body;
      E039 := E039 + 1;
      E081 := E081 + 1;
      Ada.Numerics'Elab_Spec;
      E203 := E203 + 1;
      Ada.Tags'Elab_Spec;
      Ada.Tags'Elab_Body;
      E104 := E104 + 1;
      Ada.Streams'Elab_Spec;
      E135 := E135 + 1;
      Gnat'Elab_Spec;
      E144 := E144 + 1;
      System.File_Control_Block'Elab_Spec;
      E184 := E184 + 1;
      System.Finalization_Root'Elab_Spec;
      E137 := E137 + 1;
      Ada.Finalization'Elab_Spec;
      E133 := E133 + 1;
      System.File_Io'Elab_Body;
      E183 := E183 + 1;
      System.Storage_Pools'Elab_Spec;
      E139 := E139 + 1;
      System.Finalization_Masters'Elab_Spec;
      System.Finalization_Masters'Elab_Body;
      E130 := E130 + 1;
      System.Storage_Pools.Subpools'Elab_Spec;
      E171 := E171 + 1;
      Ada.Strings.Unbounded'Elab_Spec;
      E163 := E163 + 1;
      Ada.Calendar'Elab_Spec;
      Ada.Calendar'Elab_Body;
      E125 := E125 + 1;
      Ada.Text_Io'Elab_Spec;
      Ada.Text_Io'Elab_Body;
      E179 := E179 + 1;
      Gnat.Directory_Operations'Elab_Spec;
      Gnat.Directory_Operations'Elab_Body;
      E186 := E186 + 1;
      System.Assertions'Elab_Spec;
      E205 := E205 + 1;
      System.Pool_Global'Elab_Spec;
      E141 := E141 + 1;
      System.Random_Seed'Elab_Body;
      E210 := E210 + 1;
      System.Regexp'Elab_Spec;
      E196 := E196 + 1;
      Gnat.Command_Line'Elab_Spec;
      Gnat.Command_Line'Elab_Body;
      E161 := E161 + 1;
      E101 := E101 + 1;
      E099 := E099 + 1;
      E119 := E119 + 1;
      E116 := E116 + 1;
      Aunit.Tests'Elab_Spec;
      E128 := E128 + 1;
      Aunit.Time_Measure'Elab_Spec;
      E123 := E123 + 1;
      Aunit.Test_Results'Elab_Spec;
      E121 := E121 + 1;
      Aunit.Assertions'Elab_Spec;
      Aunit.Assertions'Elab_Body;
      E114 := E114 + 1;
      Aunit.Test_Filters'Elab_Spec;
      Aunit.Simple_Test_Cases'Elab_Spec;
      E110 := E110 + 1;
      E112 := E112 + 1;
      Aunit.Reporter'Elab_Spec;
      E149 := E149 + 1;
      Aunit.Reporter.Gnattest'Elab_Spec;
      E151 := E151 + 1;
      Aunit.Test_Fixtures'Elab_Spec;
      E221 := E221 + 1;
      E227 := E227 + 1;
      Aunit.Test_Suites'Elab_Spec;
      E159 := E159 + 1;
      E157 := E157 + 1;
      Implementation_Interface'Elab_Spec;
      E212 := E212 + 1;
      Francesc_Implementation'Elab_Spec;
      Francesc_Implementation'Elab_Body;
      E202 := E202 + 1;
      Francesc_Implementation.Francesc_Sorting_Algorithm_Test_Data'Elab_Spec;
      Francesc_Implementation.Francesc_Sorting_Algorithm_Test_Data'Elab_Body;
      E219 := E219 + 1;
      Francesc_Implementation.Francesc_Sorting_Algorithm_Test_Data.Francesc_Sorting_Algorithm_Tests'Elab_Spec;
      Francesc_Implementation.Francesc_Sorting_Algorithm_Test_Data.Francesc_Sorting_Algorithm_Tests'Elab_Body;
      E223 := E223 + 1;
      Francesc_Implementation.Francesc_Sorting_Algorithm_Test_Data.Francesc_Sorting_Algorithm_Tests.Suite'Elab_Body;
      E225 := E225 + 1;
      Implementation_Interface.Test_Data'Elab_Spec;
      Implementation_Interface.Test_Data'Elab_Body;
      E229 := E229 + 1;
      Implementation_Interface.Test_Data.Tests'Elab_Spec;
      Implementation_Interface.Test_Data.Tests'Elab_Body;
      E231 := E231 + 1;
      Implementation_Interface.Test_Data.Tests.Suite'Elab_Body;
      E233 := E233 + 1;
      E235 := E235 + 1;
      Inputs.Test_Data'Elab_Spec;
      Inputs.Test_Data'Elab_Body;
      E255 := E255 + 1;
      Inputs.Test_Data.Tests'Elab_Spec;
      Inputs.Test_Data.Tests'Elab_Body;
      E257 := E257 + 1;
      Inputs.Test_Data.Tests.Suite'Elab_Body;
      E259 := E259 + 1;
      Jordi_Implementation'Elab_Spec;
      Jordi_Implementation'Elab_Body;
      E261 := E261 + 1;
      Jordi_Implementation.Jordi_Sorting_Algorithm_Test_Data'Elab_Spec;
      Jordi_Implementation.Jordi_Sorting_Algorithm_Test_Data'Elab_Body;
      E263 := E263 + 1;
      Jordi_Implementation.Jordi_Sorting_Algorithm_Test_Data.Jordi_Sorting_Algorithm_Tests'Elab_Spec;
      Jordi_Implementation.Jordi_Sorting_Algorithm_Test_Data.Jordi_Sorting_Algorithm_Tests'Elab_Body;
      E265 := E265 + 1;
      Jordi_Implementation.Jordi_Sorting_Algorithm_Test_Data.Jordi_Sorting_Algorithm_Tests.Suite'Elab_Body;
      E267 := E267 + 1;
      E269 := E269 + 1;
      Outputs.Test_Data'Elab_Spec;
      Outputs.Test_Data'Elab_Body;
      E271 := E271 + 1;
      Outputs.Test_Data.Tests'Elab_Spec;
      Outputs.Test_Data.Tests'Elab_Body;
      E273 := E273 + 1;
      Outputs.Test_Data.Tests.Suite'Elab_Body;
      E275 := E275 + 1;
      Raquel_Implementation'Elab_Spec;
      Raquel_Implementation'Elab_Body;
      E277 := E277 + 1;
      Raquel_Implementation.Raquel_Sorting_Algorithm_Test_Data'Elab_Spec;
      Raquel_Implementation.Raquel_Sorting_Algorithm_Test_Data'Elab_Body;
      E279 := E279 + 1;
      Raquel_Implementation.Raquel_Sorting_Algorithm_Test_Data.Raquel_Sorting_Algorithm_Tests'Elab_Spec;
      Raquel_Implementation.Raquel_Sorting_Algorithm_Test_Data.Raquel_Sorting_Algorithm_Tests'Elab_Body;
      E281 := E281 + 1;
      Raquel_Implementation.Raquel_Sorting_Algorithm_Test_Data.Raquel_Sorting_Algorithm_Tests.Suite'Elab_Body;
      E283 := E283 + 1;
      E285 := E285 + 1;
      Voter.Test_Data'Elab_Spec;
      Voter.Test_Data'Elab_Body;
      E287 := E287 + 1;
      Voter.Test_Data.Tests'Elab_Spec;
      Voter.Test_Data.Tests'Elab_Body;
      E289 := E289 + 1;
      Voter.Test_Data.Tests.Suite'Elab_Body;
      E291 := E291 + 1;
      Gnattest_Main_Suite'Elab_Body;
      E200 := E200 + 1;
   end adainit;

   procedure Ada_Main_Program;
   pragma Import (Ada, Ada_Main_Program, "_ada_test_runner");

   function main
     (argc : Integer;
      argv : System.Address;
      envp : System.Address)
      return Integer
   is
      procedure Initialize (Addr : System.Address);
      pragma Import (C, Initialize, "__gnat_initialize");

      procedure Finalize;
      pragma Import (C, Finalize, "__gnat_finalize");
      SEH : aliased array (1 .. 2) of Integer;

      Ensure_Reference : aliased System.Address := Ada_Main_Program_Name'Address;
      pragma Volatile (Ensure_Reference);

   begin
      gnat_argc := argc;
      gnat_argv := argv;
      gnat_envp := envp;

      Initialize (SEH'Address);
      adainit;
      Ada_Main_Program;
      adafinal;
      Finalize;
      return (gnat_exit_status);
   end;

--  BEGIN Object file/option list
   --   /home/ada/fsa21-srts-sw-dl/obj/gnattest/harness/gnattest_generated.o
   --   /home/ada/fsa21-srts-sw-dl/obj/types.o
   --   /home/ada/fsa21-srts-sw-dl/obj/implementation_interface.o
   --   /home/ada/fsa21-srts-sw-dl/obj/francesc_implementation.o
   --   /home/ada/fsa21-srts-sw-dl/obj/gnattest/harness/francesc_implementation-francesc_sorting_algorithm_test_data.o
   --   /home/ada/fsa21-srts-sw-dl/obj/gnattest/harness/francesc_implementation-francesc_sorting_algorithm_test_data-francesc_sorting_algorithm_tests.o
   --   /home/ada/fsa21-srts-sw-dl/obj/gnattest/harness/francesc_implementation-francesc_sorting_algorithm_test_data-francesc_sorting_algorithm_tests-suite.o
   --   /home/ada/fsa21-srts-sw-dl/obj/gnattest/harness/implementation_interface-test_data.o
   --   /home/ada/fsa21-srts-sw-dl/obj/gnattest/harness/implementation_interface-test_data-tests.o
   --   /home/ada/fsa21-srts-sw-dl/obj/gnattest/harness/implementation_interface-test_data-tests-suite.o
   --   /home/ada/fsa21-srts-sw-dl/obj/inputs.o
   --   /home/ada/fsa21-srts-sw-dl/obj/gnattest/harness/inputs-test_data.o
   --   /home/ada/fsa21-srts-sw-dl/obj/gnattest/harness/inputs-test_data-tests.o
   --   /home/ada/fsa21-srts-sw-dl/obj/gnattest/harness/inputs-test_data-tests-suite.o
   --   /home/ada/fsa21-srts-sw-dl/obj/jordi_implementation.o
   --   /home/ada/fsa21-srts-sw-dl/obj/gnattest/harness/jordi_implementation-jordi_sorting_algorithm_test_data.o
   --   /home/ada/fsa21-srts-sw-dl/obj/gnattest/harness/jordi_implementation-jordi_sorting_algorithm_test_data-jordi_sorting_algorithm_tests.o
   --   /home/ada/fsa21-srts-sw-dl/obj/gnattest/harness/jordi_implementation-jordi_sorting_algorithm_test_data-jordi_sorting_algorithm_tests-suite.o
   --   /home/ada/fsa21-srts-sw-dl/obj/outputs.o
   --   /home/ada/fsa21-srts-sw-dl/obj/gnattest/harness/outputs-test_data.o
   --   /home/ada/fsa21-srts-sw-dl/obj/gnattest/harness/outputs-test_data-tests.o
   --   /home/ada/fsa21-srts-sw-dl/obj/gnattest/harness/outputs-test_data-tests-suite.o
   --   /home/ada/fsa21-srts-sw-dl/obj/raquel_implementation.o
   --   /home/ada/fsa21-srts-sw-dl/obj/gnattest/harness/raquel_implementation-raquel_sorting_algorithm_test_data.o
   --   /home/ada/fsa21-srts-sw-dl/obj/gnattest/harness/raquel_implementation-raquel_sorting_algorithm_test_data-raquel_sorting_algorithm_tests.o
   --   /home/ada/fsa21-srts-sw-dl/obj/gnattest/harness/raquel_implementation-raquel_sorting_algorithm_test_data-raquel_sorting_algorithm_tests-suite.o
   --   /home/ada/fsa21-srts-sw-dl/obj/voter.o
   --   /home/ada/fsa21-srts-sw-dl/obj/gnattest/harness/voter-test_data.o
   --   /home/ada/fsa21-srts-sw-dl/obj/gnattest/harness/voter-test_data-tests.o
   --   /home/ada/fsa21-srts-sw-dl/obj/gnattest/harness/voter-test_data-tests-suite.o
   --   /home/ada/fsa21-srts-sw-dl/obj/gnattest/harness/gnattest_main_suite.o
   --   /home/ada/fsa21-srts-sw-dl/obj/gnattest/harness/test_runner.o
   --   -L/home/ada/fsa21-srts-sw-dl/obj/gnattest/harness/
   --   -L/home/ada/fsa21-srts-sw-dl/obj/gnattest/harness/
   --   -L/usr/lib/x86_64-linux-gnu/ada/adalib/aunit/
   --   -L/home/ada/fsa21-srts-sw-dl/obj/
   --   -L/usr/lib/gcc/x86_64-linux-gnu/9/adalib/
   --   -static
   --   -lgnat
   --   -ldl
--  END Object file/option list   

end ada_main;
