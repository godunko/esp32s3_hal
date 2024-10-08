pragma Style_Checks (Off);

--  Copyright 2024 Espressif Systems (Shanghai) PTE LTD    Licensed under the Apache License, Version 2.0 (the "License");    you may not use this file except in compliance with the License.    You may obtain a copy of the License at        http://www.apache.org/licenses/LICENSE-2.0    Unless required by applicable law or agreed to in writing, software    distributed under the License is distributed on an "AS IS" BASIS,    WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.    See the License for the specific language governing permissions and    limitations under the License.

--  This spec has been automatically generated from esp32s3.svd

pragma Restrictions (No_Elaboration_Code);

with System;

package SVD.SHA is
   pragma Preelaborate;

   ---------------
   -- Registers --
   ---------------

   --  Initial configuration register.
   type MODE_Register is record
      --  sha mode
      MODE          : SVD.UInt3 := 16#0#;
      --  unspecified
      Reserved_3_31 : SVD.UInt29 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for MODE_Register use record
      MODE          at 0 range 0 .. 2;
      Reserved_3_31 at 0 range 3 .. 31;
   end record;

   --  SHA 512/t configuration register 1.
   type T_LENGTH_Register is record
      --  sha t_length(used if and only if mode == sha_256/t)
      T_LENGTH      : SVD.UInt6 := 16#0#;
      --  unspecified
      Reserved_6_31 : SVD.UInt26 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for T_LENGTH_Register use record
      T_LENGTH      at 0 range 0 .. 5;
      Reserved_6_31 at 0 range 6 .. 31;
   end record;

   --  DMA configuration register 0.
   type DMA_BLOCK_NUM_Register is record
      --  dma-sha block number
      DMA_BLOCK_NUM : SVD.UInt6 := 16#0#;
      --  unspecified
      Reserved_6_31 : SVD.UInt26 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DMA_BLOCK_NUM_Register use record
      DMA_BLOCK_NUM at 0 range 0 .. 5;
      Reserved_6_31 at 0 range 6 .. 31;
   end record;

   --  Typical SHA configuration register 0.
   type START_Register is record
      --  unspecified
      Reserved_0_0 : SVD.Bit := 16#0#;
      --  Write-only. reserved.
      START        : SVD.UInt31 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for START_Register use record
      Reserved_0_0 at 0 range 0 .. 0;
      START        at 0 range 1 .. 31;
   end record;

   --  Typical SHA configuration register 1.
   type CONTINUE_Register is record
      --  unspecified
      Reserved_0_0 : SVD.Bit := 16#0#;
      --  Write-only. reserved.
      CONTINUE     : SVD.UInt31 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CONTINUE_Register use record
      Reserved_0_0 at 0 range 0 .. 0;
      CONTINUE     at 0 range 1 .. 31;
   end record;

   --  Busy register.
   type BUSY_Register is record
      --  Read-only. sha busy state. 1'b0: idle 1'b1: busy
      STATE         : SVD.Bit;
      --  unspecified
      Reserved_1_31 : SVD.UInt31;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for BUSY_Register use record
      STATE         at 0 range 0 .. 0;
      Reserved_1_31 at 0 range 1 .. 31;
   end record;

   --  DMA configuration register 1.
   type DMA_START_Register is record
      --  Write-only. start dma-sha
      DMA_START     : SVD.Bit := 16#0#;
      --  unspecified
      Reserved_1_31 : SVD.UInt31 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DMA_START_Register use record
      DMA_START     at 0 range 0 .. 0;
      Reserved_1_31 at 0 range 1 .. 31;
   end record;

   --  DMA configuration register 2.
   type DMA_CONTINUE_Register is record
      --  Write-only. continue dma-sha
      DMA_CONTINUE  : SVD.Bit := 16#0#;
      --  unspecified
      Reserved_1_31 : SVD.UInt31 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DMA_CONTINUE_Register use record
      DMA_CONTINUE  at 0 range 0 .. 0;
      Reserved_1_31 at 0 range 1 .. 31;
   end record;

   --  Interrupt clear register.
   type CLEAR_IRQ_Register is record
      --  Write-only. clear sha interrupt
      CLEAR_INTERRUPT : SVD.Bit := 16#0#;
      --  unspecified
      Reserved_1_31   : SVD.UInt31 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CLEAR_IRQ_Register use record
      CLEAR_INTERRUPT at 0 range 0 .. 0;
      Reserved_1_31   at 0 range 1 .. 31;
   end record;

   --  Interrupt enable register.
   type IRQ_ENA_Register is record
      --  sha interrupt enable register. 1'b0: disable(default) 1'b1: enable
      INTERRUPT_ENA : SVD.Bit := 16#0#;
      --  unspecified
      Reserved_1_31 : SVD.UInt31 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for IRQ_ENA_Register use record
      INTERRUPT_ENA at 0 range 0 .. 0;
      Reserved_1_31 at 0 range 1 .. 31;
   end record;

   --  Date register.
   type DATE_Register is record
      --  sha date information/ sha version information
      DATE           : SVD.UInt30 := 16#20190402#;
      --  unspecified
      Reserved_30_31 : SVD.UInt2 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DATE_Register use record
      DATE           at 0 range 0 .. 29;
      Reserved_30_31 at 0 range 30 .. 31;
   end record;

   --  Sha H memory which contains intermediate hash or finial hash.

   --  Sha H memory which contains intermediate hash or finial hash.
   type H_MEM_Registers is array (0 .. 15) of SVD.UInt32;

   --  Sha M memory which contains message.

   --  Sha M memory which contains message.
   type M_MEM_Registers is array (0 .. 15) of SVD.UInt32;

   -----------------
   -- Peripherals --
   -----------------

   --  SHA (Secure Hash Algorithm) Accelerator
   type SHA_Peripheral is record
      --  Initial configuration register.
      MODE          : aliased MODE_Register;
      --  SHA 512/t configuration register 0.
      T_STRING      : aliased SVD.UInt32;
      --  SHA 512/t configuration register 1.
      T_LENGTH      : aliased T_LENGTH_Register;
      --  DMA configuration register 0.
      DMA_BLOCK_NUM : aliased DMA_BLOCK_NUM_Register;
      --  Typical SHA configuration register 0.
      START         : aliased START_Register;
      --  Typical SHA configuration register 1.
      CONTINUE      : aliased CONTINUE_Register;
      --  Busy register.
      BUSY          : aliased BUSY_Register;
      --  DMA configuration register 1.
      DMA_START     : aliased DMA_START_Register;
      --  DMA configuration register 2.
      DMA_CONTINUE  : aliased DMA_CONTINUE_Register;
      --  Interrupt clear register.
      CLEAR_IRQ     : aliased CLEAR_IRQ_Register;
      --  Interrupt enable register.
      IRQ_ENA       : aliased IRQ_ENA_Register;
      --  Date register.
      DATE          : aliased DATE_Register;
      --  Sha H memory which contains intermediate hash or finial hash.
      H_MEM         : aliased H_MEM_Registers;
      --  Sha M memory which contains message.
      M_MEM         : aliased M_MEM_Registers;
   end record
     with Volatile;

   for SHA_Peripheral use record
      MODE          at 16#0# range 0 .. 31;
      T_STRING      at 16#4# range 0 .. 31;
      T_LENGTH      at 16#8# range 0 .. 31;
      DMA_BLOCK_NUM at 16#C# range 0 .. 31;
      START         at 16#10# range 0 .. 31;
      CONTINUE      at 16#14# range 0 .. 31;
      BUSY          at 16#18# range 0 .. 31;
      DMA_START     at 16#1C# range 0 .. 31;
      DMA_CONTINUE  at 16#20# range 0 .. 31;
      CLEAR_IRQ     at 16#24# range 0 .. 31;
      IRQ_ENA       at 16#28# range 0 .. 31;
      DATE          at 16#2C# range 0 .. 31;
      H_MEM         at 16#40# range 0 .. 511;
      M_MEM         at 16#80# range 0 .. 511;
   end record;

   --  SHA (Secure Hash Algorithm) Accelerator
   SHA_Periph : aliased SHA_Peripheral
     with Import, Address => SHA_Base;

end SVD.SHA;
