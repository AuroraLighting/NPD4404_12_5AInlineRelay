################################################################################
# Automatically-generated file. Do not edit!
################################################################################

-include ../makefile.init

RM := rm -rf

# All of the sources participating in the build are defined here
-include sources.mk
-include update-tc-link-key/subdir.mk
-include simple-main/subdir.mk
-include sim-eeprom1/EFR32/subdir.mk
-include serial/EFR32/subdir.mk
-include serial/subdir.mk
-include scenes/subdir.mk
-include scan-dispatch/subdir.mk
-include reporting/subdir.mk
-include ota-storage-simple-eeprom/subdir.mk
-include ota-storage-simple/subdir.mk
-include ota-storage-common/subdir.mk
-include ota-common/subdir.mk
-include ota-client-policy/subdir.mk
-include ota-client/subdir.mk
-include ota-bootload/subdir.mk
-include on-off/subdir.mk
-include network-steering/subdir.mk
-include manufacturing-library-cli/subdir.mk
-include led-blink/EFR32/subdir.mk
-include identify/subdir.mk
-include heartbeat/subdir.mk
-include hal-library/EFR32/subdir.mk
-include groups-server/subdir.mk
-include green-power-common/subdir.mk
-include green-power-client/subdir.mk
-include form-and-join/subdir.mk
-include external-generated-files/subdir.mk
-include emlib/subdir.mk
-include emdrv/subdir.mk
-include ember-minimal-printf/subdir.mk
-include efr32/subdir.mk
-include eeprom/subdir.mk
-include debug-jtag/EFR32/subdir.mk
-include debug-basic-library/EFR32/subdir.mk
-include counters/subdir.mk
-include connection-manager/subdir.mk
-include basic/subdir.mk
-include antenna-stub/subdir.mk
-include address-table/subdir.mk
-include adc/EFR32/subdir.mk
-include AuroraComponents/Silabs/Source/subdir.mk
-include AuroraComponents/Common/Source/subdir.mk
-include subdir.mk
-include objects.mk

ifneq ($(MAKECMDGOALS),clean)
ifneq ($(strip $(C_DEPS)),)
-include $(C_DEPS)
endif
endif

-include ../makefile.defs

# Add inputs and outputs from these tool invocations to the build variables 

# All Target
all: pre-build main-build

# Main-build Target
main-build: NPD4404_12_5AInlineRelay.axf

# Tool invocations
NPD4404_12_5AInlineRelay.axf: $(OBJS) $(USER_OBJS)
	@echo 'Building target: $@'
	@echo 'Invoking: GNU ARM C Linker'
	arm-none-eabi-gcc -g3 -gdwarf-2 -mcpu=cortex-m4 -mthumb -T "C:/SiliconLabs/SimplicityStudio/v4/developer/sdks/gecko_sdk_suite/v2.2//platform/base/hal/micro/cortexm3/efm32/gcc-cfg.ld" -L"C:/SiliconLabs/SimplicityStudio/v4/developer/sdks/gecko_sdk_suite/v2.2//platform/base/hal/micro/cortexm3/" -Xlinker --defsym=FLASH_SIZE=524288 -Xlinker --defsym=RAM_SIZE=65536 -Xlinker --defsym=SIMEEPROM_SIZE=8192 -Xlinker --defsym=LOCAL_STORAGE_GECKO_INFO_PAGE_BTL=1 -Xlinker --defsym=EMBER_MALLOC_HEAP_SIZE=0 -Xlinker --gc-sections -Xlinker -Map="NPD4404_12_5AInlineRelay.map" -mfpu=fpv4-sp-d16 -mfloat-abi=softfp --specs=nano.specs -o NPD4404_12_5AInlineRelay.axf -Wl,--start-group "./AuroraComponents/Common/Source/colourTempToPWM.o" "./AuroraComponents/Common/Source/ftoa.o" "./AuroraComponents/Common/Source/hsvToRGB.o" "./AuroraComponents/Silabs/Source/AOneCommon.o" "./AuroraComponents/Silabs/Source/clusterUtils.o" "./AuroraComponents/Silabs/Source/delayMs.o" "./AuroraComponents/Silabs/Source/dmxPhy.o" "./AuroraComponents/Silabs/Source/mcuAuroraEFR32MG13.o" "./AuroraComponents/Silabs/Source/mcuAuroraEM357.o" "./AuroraComponents/Silabs/Source/mcuGeyserAuroraEFR32MG13.o" "./AuroraComponents/Silabs/Source/porDetect.o" "./AuroraComponents/Silabs/Source/resetCause.o" "./AuroraComponents/Silabs/Source/scd30sensor.o" "./AuroraComponents/Silabs/Source/scenes_aurora.o" "./AuroraComponents/Silabs/Source/serialEFR32.o" "./AuroraComponents/Silabs/Source/spiDriver.o" "./AuroraComponents/Silabs/Source/utils.o" "./NPD4404_12_5AInlineRelay_callbacks.o" "./af-event.o" "./af-main-common.o" "./af-main-soc.o" "./af-node.o" "./af-security-common.o" "./af-trust-center.o" "./afv2-bookkeeping.o" "./attribute-size.o" "./attribute-storage.o" "./attribute-table.o" "./call-command-handler.o" "./callback-stub.o" "./cli.o" "./client-api.o" "./command-interpreter2.o" "./core-cli.o" "./crc.o" "./crypto-state.o" "./ember-base-configuration.o" "./ember-configuration.o" "./endian.o" "./isr-stubs.o" "./library.o" "./mem-util.o" "./message.o" "./multi-network.o" "./network-cli.o" "./option-cli.o" "./plugin-cli.o" "./print-formatter.o" "./print.o" "./process-cluster-message.o" "./process-global-message.o" "./random.o" "./security-address-cache.o" "./security-cli.o" "./service-discovery-common.o" "./service-discovery-soc.o" "./stack-handler-stub.o" "./time-util.o" "./token-def.o" "./util.o" "./zcl-cli.o" "./zdo-cli.o" "./zigbee-device-common.o" "./zigbee-device-library.o" "./adc/EFR32/adc-efr32.o" "./address-table/address-table-cli.o" "./address-table/address-table.o" "./antenna-stub/antenna-stub.o" "./basic/basic.o" "./connection-manager/connection-manager-cli.o" "./connection-manager/connection-manager.o" "./counters/counters-cli.o" "./counters/counters-ota.o" "./counters/counters-soc.o" "./debug-basic-library/EFR32/SEGGER_RTT.o" "./debug-jtag/EFR32/debug-jtag-efr32.o" "./eeprom/eeprom-afv2.o" "./eeprom/eeprom-cli.o" "./eeprom/eeprom.o" "./efr32/assert-crash-handlers.o" "./efr32/button.o" "./efr32/buzzer-efr32.o" "./efr32/cstartup-common.o" "./efr32/diagnostic.o" "./efr32/ext-device.o" "./efr32/faults-v7m.o" "./efr32/isr-stubs.o" "./efr32/led.o" "./efr32/mfg-token.o" "./efr32/micro-common.o" "./efr32/micro.o" "./efr32/mpu.o" "./efr32/sleep-efm32.o" "./efr32/token.o" "./ember-minimal-printf/ember-printf.o" "./emdrv/dmadrv.o" "./emdrv/gpiointerrupt.o" "./emdrv/rtcdriver.o" "./emdrv/sleep.o" "./emdrv/tempdrv.o" "./emdrv/uartdrv.o" "./emdrv/ustimer.o" "./emlib/em_adc.o" "./emlib/em_cmu.o" "./emlib/em_core.o" "./emlib/em_cryotimer.o" "./emlib/em_emu.o" "./emlib/em_gpio.o" "./emlib/em_i2c.o" "./emlib/em_ldma.o" "./emlib/em_leuart.o" "./emlib/em_mpu.o" "./emlib/em_msc.o" "./emlib/em_prs.o" "./emlib/em_rmu.o" "./emlib/em_rtcc.o" "./emlib/em_system.o" "./emlib/em_timer.o" "./emlib/em_usart.o" "./emlib/em_wdog.o" "./emlib/system_efr32mg13p.o" "./external-generated-files/bootloader-interface-app.o" "./external-generated-files/bootloader-interface.o" "./external-generated-files/btl_interface.o" "./external-generated-files/btl_interface_storage.o" "./form-and-join/form-and-join-afv2.o" "./form-and-join/form-and-join-node-adapter.o" "./form-and-join/form-and-join.o" "./green-power-client/green-power-client-cli.o" "./green-power-client/green-power-client.o" "./green-power-common/green-power-common.o" "./groups-server/groups-server-cli.o" "./groups-server/groups-server.o" "./hal-library/EFR32/coexistence-efr32.o" "./hal-library/EFR32/hal-config-gpio.o" "./hal-library/EFR32/hal-config.o" "./heartbeat/heartbeat.o" "./identify/identify-cli.o" "./identify/identify.o" "./led-blink/EFR32/led-blink.o" "./manufacturing-library-cli/manufacturing-library-cli-soc.o" "./network-steering/network-steering-cli.o" "./network-steering/network-steering-soc.o" "./network-steering/network-steering.o" "./on-off/on-off.o" "./ota-bootload/ota-bootload-cli.o" "./ota-bootload/ota-bootload-soc.o" "./ota-client/ota-client-cli.o" "./ota-client/ota-client-page-request.o" "./ota-client/ota-client-signature-verify.o" "./ota-client/ota-client.o" "./ota-client-policy/ota-client-policy.o" "./ota-common/ota-common.o" "./ota-storage-common/ota-storage-common-cli.o" "./ota-storage-common/ota-storage-common.o" "./ota-storage-simple/ota-storage-simple.o" "./ota-storage-simple-eeprom/ota-storage-eeprom-page-erase.o" "./ota-storage-simple-eeprom/ota-storage-eeprom-read-modify-write.o" "./ota-storage-simple-eeprom/ota-storage-eeprom.o" "./reporting/reporting-cli.o" "./reporting/reporting-default-configuration.o" "./reporting/reporting.o" "./scan-dispatch/scan-dispatch.o" "./scenes/scenes-cli.o" "./scenes/scenes.o" "./serial/EFR32/serial.o" "./serial/com.o" "./sim-eeprom1/EFR32/sim-eeprom.o" "./simple-main/simple-main.o" "./update-tc-link-key/update-tc-link-key.o" "C:/SiliconLabs/SimplicityStudio/v4/developer/sdks/gecko_sdk_suite/v2.2//platform/radio/rail_lib/autogen/librail_release/librail_efr32xg13_gcc_release.a" "C:/SiliconLabs/SimplicityStudio/v4/developer/sdks/gecko_sdk_suite/v2.2//protocol/zigbee/build/binding-table-library-cortexm3-gcc-efr32mg13p-rail/binding-table-library.a" "C:/SiliconLabs/SimplicityStudio/v4/developer/sdks/gecko_sdk_suite/v2.2//protocol/zigbee/build/cbke-163k1-stub-library-cortexm3-gcc-efr32mg13p-rail/cbke-163k1-stub-library.a" "C:/SiliconLabs/SimplicityStudio/v4/developer/sdks/gecko_sdk_suite/v2.2//protocol/zigbee/build/multi-network-stub-library-cortexm3-gcc-efr32mg13p-rail/multi-network-stub-library.a" "C:/SiliconLabs/SimplicityStudio/v4/developer/sdks/gecko_sdk_suite/v2.2//protocol/zigbee/build/mfglib-library-cortexm3-gcc-efr32mg13p-rail/mfglib-library.a" "C:/SiliconLabs/SimplicityStudio/v4/developer/sdks/gecko_sdk_suite/v2.2//protocol/zigbee/build/zll-stub-library-cortexm3-gcc-efr32mg13p-rail/zll-stub-library.a" "C:/SiliconLabs/SimplicityStudio/v4/developer/sdks/gecko_sdk_suite/v2.2//protocol/zigbee/build/cbke-library-dsa-sign-stub-cortexm3-gcc-efr32mg13p-rail/cbke-library-dsa-sign-stub.a" "C:/SiliconLabs/SimplicityStudio/v4/developer/sdks/gecko_sdk_suite/v2.2//protocol/zigbee/build/cbke-library-dsa-verify-stub-cortexm3-gcc-efr32mg13p-rail/cbke-library-dsa-verify-stub.a" "C:/SiliconLabs/SimplicityStudio/v4/developer/sdks/gecko_sdk_suite/v2.2//protocol/zigbee/build/packet-validate-library-cortexm3-gcc-efr32mg13p-rail/packet-validate-library.a" "C:/SiliconLabs/SimplicityStudio/v4/developer/sdks/gecko_sdk_suite/v2.2//protocol/zigbee/build/end-device-bind-stub-library-cortexm3-gcc-efr32mg13p-rail/end-device-bind-stub-library.a" "C:/SiliconLabs/SimplicityStudio/v4/developer/sdks/gecko_sdk_suite/v2.2//protocol/zigbee/build/cbke-library-dsa-verify-283k1-stub-cortexm3-gcc-efr32mg13p-rail/cbke-library-dsa-verify-283k1-stub.a" "C:/SiliconLabs/SimplicityStudio/v4/developer/sdks/gecko_sdk_suite/v2.2//protocol/zigbee/build/security-library-link-keys-stub-cortexm3-gcc-efr32mg13p-rail/security-library-link-keys-stub.a" "C:/SiliconLabs/SimplicityStudio/v4/developer/sdks/gecko_sdk_suite/v2.2//protocol/zigbee/build/debug-extended-stub-library-cortexm3-gcc-efr32mg13p-rail/debug-extended-stub-library.a" "C:/SiliconLabs/SimplicityStudio/v4/developer/sdks/gecko_sdk_suite/v2.2//protocol/zigbee/build/zigbee-pro-stack-cortexm3-gcc-efr32mg13p-rail/zigbee-pro-stack.a" "C:/SiliconLabs/SimplicityStudio/v4/developer/sdks/gecko_sdk_suite/v2.2//protocol/zigbee/build/cbke-283k1-stub-library-cortexm3-gcc-efr32mg13p-rail/cbke-283k1-stub-library.a" "C:/SiliconLabs/SimplicityStudio/v4/developer/sdks/gecko_sdk_suite/v2.2//protocol/zigbee/build/hal-library-cortexm3-gcc-efr32mg13p-rail/hal-library.a" "C:/SiliconLabs/SimplicityStudio/v4/developer/sdks/gecko_sdk_suite/v2.2//protocol/zigbee/build/install-code-library-cortexm3-gcc-efr32mg13p-rail/install-code-library.a" "C:/SiliconLabs/SimplicityStudio/v4/developer/sdks/gecko_sdk_suite/v2.2//protocol/zigbee/build/zigbee-r22-support-stub-library-cortexm3-gcc-efr32mg13p-rail/zigbee-r22-support-stub-library.a" "C:/SiliconLabs/SimplicityStudio/v4/developer/sdks/gecko_sdk_suite/v2.2//protocol/zigbee/build/cbke-stub-library-cortexm3-gcc-efr32mg13p-rail/cbke-stub-library.a" "C:/SiliconLabs/SimplicityStudio/v4/developer/sdks/gecko_sdk_suite/v2.2//protocol/zigbee/build/gp-library-cortexm3-gcc-efr32mg13p-rail/gp-library.a" "C:/SiliconLabs/SimplicityStudio/v4/developer/sdks/gecko_sdk_suite/v2.2//protocol/zigbee/build/sim-eeprom1-library-cortexm3-gcc-efr32mg13p-rail/sim-eeprom1-library.a" "C:/SiliconLabs/SimplicityStudio/v4/developer/sdks/gecko_sdk_suite/v2.2//protocol/zigbee/build/security-library-core-cortexm3-gcc-efr32mg13p-rail/security-library-core.a" "C:/SiliconLabs/SimplicityStudio/v4/developer/sdks/gecko_sdk_suite/v2.2//protocol/zigbee/build/debug-basic-library-cortexm3-gcc-efr32mg13p-rail/debug-basic-library.a" -lm -Wl,--end-group -Wl,--start-group -lgcc -lc -lnosys -Wl,--end-group
	@echo 'Finished building target: $@'
	@echo ' '

	@echo 'Building hex file: NPD4404_12_5AInlineRelay.hex'
	arm-none-eabi-objcopy -O ihex "NPD4404_12_5AInlineRelay.axf" "NPD4404_12_5AInlineRelay.hex"
	@echo ' '

	@echo 'Building bin file: NPD4404_12_5AInlineRelay.bin'
	arm-none-eabi-objcopy -O binary "NPD4404_12_5AInlineRelay.axf" "NPD4404_12_5AInlineRelay.bin"
	@echo ' '

	@echo 'Building s37 file: NPD4404_12_5AInlineRelay.s37'
	arm-none-eabi-objcopy -O srec "NPD4404_12_5AInlineRelay.axf" "NPD4404_12_5AInlineRelay.s37"
	@echo ' '

	@echo 'Running size tool'
	arm-none-eabi-size "NPD4404_12_5AInlineRelay.axf"
	@echo ' '

	$(MAKE) --no-print-directory post-build

# Other Targets
clean:
	-$(RM) $(EXECUTABLES)$(OBJS)$(C_DEPS) NPD4404_12_5AInlineRelay.axf
	-@echo ' '

pre-build:
	-cmd //c 'C:\SILICO~1\SIMPLI~1\v4\DEVELO~1\sdks\GECKO_~1\v2.2/app/builder/NPD4404_12_5AInlineRelay/NPD4404_12_5AInlineRelay-prebuild.bat' 'NPD4404_12_5AInlineRelay' 'C:/SiliconLabs/SimplicityStudio/v4/developer/sdks/gecko_sdk_suite/v2.2/app/builder/NPD4404_12_5AInlineRelay' '' 'C:\SiliconLabs\SimplicityStudio\v4'
	-@echo ' '

post-build:
	-cmd //c 'C:\SILICO~1\SIMPLI~1\v4\DEVELO~1\sdks\GECKO_~1\v2.2/app/builder/NPD4404_12_5AInlineRelay/NPD4404_12_5AInlineRelay-postbuild.bat' 'NPD4404_12_5AInlineRelay' 'C:/SiliconLabs/SimplicityStudio/v4/developer/sdks/gecko_sdk_suite/v2.2/app/builder/NPD4404_12_5AInlineRelay' '' 'C:\SiliconLabs\SimplicityStudio\v4'
	-@echo ' '

.PHONY: all clean dependents
.SECONDARY: main-build pre-build post-build

-include ../makefile.targets
