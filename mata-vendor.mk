#
# Copyright 2018 The Android Open Source Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

proprietary_lib64_files := \
    $(wildcard vendor/essential/mata/proprietary/lib64/*.so)

proprietary_lib_files := \
    $(wildcard vendor/essential/mata/proprietary/lib/*.so)

copy_lib64_files := $(foreach f, $(proprietary_lib64_files), $(call copy-one-file, $(f), system/lib64))
copy_lib_files := $(foreach f, $(proprietary_lib_files), $(call copy-one-file, $(f), system/lib))

PRODUCT_COPY_FILES += \
     $(copy_lib64_files) \
     $(copy_lib_files) \

PRODUCT_COPY_FILES += \
    vendor/essential/mata/proprietary/bin/climax:$(TARGET_COPY_OUT_SYSTEM)/bin/climax \
    vendor/essential/mata/proprietary/bin/dun-server:$(TARGET_COPY_OUT_SYSTEM)/bin/dun-server \
    vendor/essential/mata/proprietary/bin/fastboot:$(TARGET_COPY_OUT_SYSTEM)/bin/fastboot \
    vendor/essential/mata/proprietary/bin/pktlogconf:$(TARGET_COPY_OUT_SYSTEM)/bin/pktlogconf \
    vendor/essential/mata/proprietary/bin/qvrcameratseq64:$(TARGET_COPY_OUT_SYSTEM)/bin/qvrcameratseq64 \
    vendor/essential/mata/proprietary/bin/qvrcameratseq:$(TARGET_COPY_OUT_SYSTEM)/bin/qvrcameratseq \
    vendor/essential/mata/proprietary/bin/qvrservice:$(TARGET_COPY_OUT_SYSTEM)/bin/qvrservice \
    vendor/essential/mata/proprietary/bin/setup_fs:$(TARGET_COPY_OUT_SYSTEM)/bin/setup_fs \
    vendor/essential/mata/proprietary/bin/tloc_daemon:$(TARGET_COPY_OUT_SYSTEM)/bin/tloc_daemon \
    vendor/essential/mata/proprietary/bin/wfdservice:$(TARGET_COPY_OUT_SYSTEM)/bin/wfdservice \
    vendor/essential/mata/proprietary/etc/cdma_call_conf.xml:$(TARGET_COPY_OUT_SYSTEM)/etc/cdma_call_conf.xml \
    vendor/essential/mata/proprietary/etc/cne/SwimConfig.xml:$(TARGET_COPY_OUT_SYSTEM)/etc/cne/SwimConfig.xml \
    vendor/essential/mata/proprietary/etc/cne/andsfCne.xml:$(TARGET_COPY_OUT_SYSTEM)/etc/cne/andsfCne.xml \
    vendor/essential/mata/proprietary/etc/excluded-input-devices.xml:$(TARGET_COPY_OUT_SYSTEM)/etc/excluded-input-devices.xml \
    vendor/essential/mata/proprietary/etc/hostapd/hostapd.accept:$(TARGET_COPY_OUT_SYSTEM)/etc/hostapd/hostapd.accept \
    vendor/essential/mata/proprietary/etc/hostapd/hostapd.deny:$(TARGET_COPY_OUT_SYSTEM)/etc/hostapd/hostapd.deny \
    vendor/essential/mata/proprietary/etc/hostapd/hostapd_default.conf:$(TARGET_COPY_OUT_SYSTEM)/etc/hostapd/hostapd_default.conf \
    vendor/essential/mata/proprietary/etc/init/wfdservice.rc:$(TARGET_COPY_OUT_SYSTEM)/etc/init/wfdservice.rc \
    vendor/essential/mata/proprietary/etc/permissions/LteDirectDiscovery.xml:$(TARGET_COPY_OUT_SYSTEM)/etc/permissions/LteDirectDiscovery.xml \
    vendor/essential/mata/proprietary/etc/permissions/android.hardware.fingerprint.xml:$(TARGET_COPY_OUT_SYSTEM)/etc/permissions/android.hardware.fingerprint.xml \
    vendor/essential/mata/proprietary/etc/permissions/android.software.webview.xml:$(TARGET_COPY_OUT_SYSTEM)/etc/permissions/android.software.webview.xml \
    vendor/essential/mata/proprietary/etc/permissions/audiosphere.xml:$(TARGET_COPY_OUT_SYSTEM)/etc/permissions/audiosphere.xml \
    vendor/essential/mata/proprietary/etc/permissions/cneapiclient.xml:$(TARGET_COPY_OUT_SYSTEM)/etc/permissions/cneapiclient.xml \
    vendor/essential/mata/proprietary/etc/permissions/com.android.omadm.service.xml:$(TARGET_COPY_OUT_SYSTEM)/etc/permissions/com.android.omadm.service.xml \
    vendor/essential/mata/proprietary/etc/permissions/com.android.sdm.plugins.connmo.xml:$(TARGET_COPY_OUT_SYSTEM)/etc/permissions/com.android.sdm.plugins.connmo.xml \
    vendor/essential/mata/proprietary/etc/permissions/com.android.vzwomatrigger.xml:$(TARGET_COPY_OUT_SYSTEM)/etc/permissions/com.android.vzwomatrigger.xml \
    vendor/essential/mata/proprietary/etc/permissions/com.quicinc.cne.xml:$(TARGET_COPY_OUT_SYSTEM)/etc/permissions/com.quicinc.cne.xml \
    vendor/essential/mata/proprietary/etc/permissions/com.ts.android.chameleon.chameleonshare.xml:$(TARGET_COPY_OUT_SYSTEM)/etc/permissions/com.ts.android.chameleon.chameleonshare.xml \
    vendor/essential/mata/proprietary/etc/permissions/com.ts.android.chameleon.dataservice.xml:$(TARGET_COPY_OUT_SYSTEM)/etc/permissions/com.ts.android.chameleon.dataservice.xml \
    vendor/essential/mata/proprietary/etc/permissions/embms.xml:$(TARGET_COPY_OUT_SYSTEM)/etc/permissions/embms.xml \
    vendor/essential/mata/proprietary/etc/permissions/privapp-permissions-mata.xml:$(TARGET_COPY_OUT_SYSTEM)/etc/permissions/privapp-permissions-mata.xml \
    vendor/essential/mata/proprietary/etc/permissions/qti_permissions.xml:$(TARGET_COPY_OUT_SYSTEM)/etc/permissions/qti_permissions.xml \
    vendor/essential/mata/proprietary/etc/permissions/rcs_service_aidl.xml:$(TARGET_COPY_OUT_SYSTEM)/etc/permissions/rcs_service_aidl.xml \
    vendor/essential/mata/proprietary/etc/permissions/rcs_service_api.xml:$(TARGET_COPY_OUT_SYSTEM)/etc/permissions/rcs_service_api.xml \
    vendor/essential/mata/proprietary/etc/permissions/vendor-essential-hardware-sidecar.xml:$(TARGET_COPY_OUT_SYSTEM)/etc/permissions/vendor-essential-hardware-sidecar.xml \
    vendor/essential/mata/proprietary/etc/scve/facereco/gModel.dat:$(TARGET_COPY_OUT_SYSTEM)/etc/scve/facereco/gModel.dat \
    vendor/essential/mata/proprietary/etc/spn-conf.xml:$(TARGET_COPY_OUT_SYSTEM)/etc/spn-conf.xml \
    vendor/essential/mata/proprietary/etc/sysconfig/essential-hiddenapi-package-whitelist.xml:$(TARGET_COPY_OUT_SYSTEM)/etc/sysconfig/essential-hiddenapi-package-whitelist.xml \
    vendor/essential/mata/proprietary/etc/sysconfig/mata-disabled-until-used-preinstalled-carrier-app.xml:$(TARGET_COPY_OUT_SYSTEM)/etc/sysconfig/mata-disabled-until-used-preinstalled-carrier-app.xml \
    vendor/essential/mata/proprietary/etc/sysconfig/qti_whitelist.xml:$(TARGET_COPY_OUT_SYSTEM)/etc/sysconfig/qti_whitelist.xml \
    vendor/essential/mata/proprietary/etc/sysconfig/sprint_whitelist.xml:$(TARGET_COPY_OUT_SYSTEM)/etc/sysconfig/sprint_whitelist.xml \
    vendor/essential/mata/proprietary/etc/sysconfig/whitelist_com.android.omadm.service.xml:$(TARGET_COPY_OUT_SYSTEM)/etc/sysconfig/whitelist_com.android.omadm.service.xml \
    vendor/essential/mata/proprietary/etc/wfdconfig.xml:$(TARGET_COPY_OUT_SYSTEM)/etc/wfdconfig.xml \
    vendor/essential/mata/proprietary/etc/wfdconfigsink.xml:$(TARGET_COPY_OUT_SYSTEM)/etc/wfdconfigsink.xml \
    vendor/essential/mata/proprietary/etc/whitelistedapps.xml:$(TARGET_COPY_OUT_SYSTEM)/etc/whitelistedapps.xml \
    vendor/essential/mata/proprietary/usr/keylayout/AVRCP.kl:$(TARGET_COPY_OUT_SYSTEM)/usr/keylayout/AVRCP.kl \
    vendor/essential/mata/proprietary/usr/keylayout/Generic.kl:$(TARGET_COPY_OUT_SYSTEM)/usr/keylayout/Generic.kl \
    vendor/essential/mata/proprietary/usr/keylayout/Vendor_0079_Product_0011.kl:$(TARGET_COPY_OUT_SYSTEM)/usr/keylayout/Vendor_0079_Product_0011.kl \
    vendor/essential/mata/proprietary/usr/keylayout/Vendor_045e_Product_028e.kl:$(TARGET_COPY_OUT_SYSTEM)/usr/keylayout/Vendor_045e_Product_028e.kl \
    vendor/essential/mata/proprietary/usr/keylayout/Vendor_045e_Product_02d1.kl:$(TARGET_COPY_OUT_SYSTEM)/usr/keylayout/Vendor_045e_Product_02d1.kl \
    vendor/essential/mata/proprietary/usr/keylayout/Vendor_045e_Product_02e0.kl:$(TARGET_COPY_OUT_SYSTEM)/usr/keylayout/Vendor_045e_Product_02e0.kl \
    vendor/essential/mata/proprietary/usr/keylayout/Vendor_046d_Product_b501.kl:$(TARGET_COPY_OUT_SYSTEM)/usr/keylayout/Vendor_046d_Product_b501.kl \
    vendor/essential/mata/proprietary/usr/keylayout/Vendor_046d_Product_c216.kl:$(TARGET_COPY_OUT_SYSTEM)/usr/keylayout/Vendor_046d_Product_c216.kl \
    vendor/essential/mata/proprietary/usr/keylayout/Vendor_046d_Product_c219.kl:$(TARGET_COPY_OUT_SYSTEM)/usr/keylayout/Vendor_046d_Product_c219.kl \
    vendor/essential/mata/proprietary/usr/keylayout/Vendor_046d_Product_c21d.kl:$(TARGET_COPY_OUT_SYSTEM)/usr/keylayout/Vendor_046d_Product_c21d.kl \
    vendor/essential/mata/proprietary/usr/keylayout/Vendor_046d_Product_c21f.kl:$(TARGET_COPY_OUT_SYSTEM)/usr/keylayout/Vendor_046d_Product_c21f.kl \
    vendor/essential/mata/proprietary/usr/keylayout/Vendor_046d_Product_c294.kl:$(TARGET_COPY_OUT_SYSTEM)/usr/keylayout/Vendor_046d_Product_c294.kl \
    vendor/essential/mata/proprietary/usr/keylayout/Vendor_046d_Product_c299.kl:$(TARGET_COPY_OUT_SYSTEM)/usr/keylayout/Vendor_046d_Product_c299.kl \
    vendor/essential/mata/proprietary/usr/keylayout/Vendor_046d_Product_c532.kl:$(TARGET_COPY_OUT_SYSTEM)/usr/keylayout/Vendor_046d_Product_c532.kl \
    vendor/essential/mata/proprietary/usr/keylayout/Vendor_054c_Product_0268.kl:$(TARGET_COPY_OUT_SYSTEM)/usr/keylayout/Vendor_054c_Product_0268.kl \
    vendor/essential/mata/proprietary/usr/keylayout/Vendor_054c_Product_05c4.kl:$(TARGET_COPY_OUT_SYSTEM)/usr/keylayout/Vendor_054c_Product_05c4.kl \
    vendor/essential/mata/proprietary/usr/keylayout/Vendor_054c_Product_09cc.kl:$(TARGET_COPY_OUT_SYSTEM)/usr/keylayout/Vendor_054c_Product_09cc.kl \
    vendor/essential/mata/proprietary/usr/keylayout/Vendor_0583_Product_2060.kl:$(TARGET_COPY_OUT_SYSTEM)/usr/keylayout/Vendor_0583_Product_2060.kl \
    vendor/essential/mata/proprietary/usr/keylayout/Vendor_05ac_Product_0239.kl:$(TARGET_COPY_OUT_SYSTEM)/usr/keylayout/Vendor_05ac_Product_0239.kl \
    vendor/essential/mata/proprietary/usr/keylayout/Vendor_0b05_Product_4500.kl:$(TARGET_COPY_OUT_SYSTEM)/usr/keylayout/Vendor_0b05_Product_4500.kl \
    vendor/essential/mata/proprietary/usr/keylayout/Vendor_1038_Product_1412.kl:$(TARGET_COPY_OUT_SYSTEM)/usr/keylayout/Vendor_1038_Product_1412.kl \
    vendor/essential/mata/proprietary/usr/keylayout/Vendor_12bd_Product_d015.kl:$(TARGET_COPY_OUT_SYSTEM)/usr/keylayout/Vendor_12bd_Product_d015.kl \
    vendor/essential/mata/proprietary/usr/keylayout/Vendor_1532_Product_0900.kl:$(TARGET_COPY_OUT_SYSTEM)/usr/keylayout/Vendor_1532_Product_0900.kl \
    vendor/essential/mata/proprietary/usr/keylayout/Vendor_1689_Product_fd00.kl:$(TARGET_COPY_OUT_SYSTEM)/usr/keylayout/Vendor_1689_Product_fd00.kl \
    vendor/essential/mata/proprietary/usr/keylayout/Vendor_1689_Product_fd01.kl:$(TARGET_COPY_OUT_SYSTEM)/usr/keylayout/Vendor_1689_Product_fd01.kl \
    vendor/essential/mata/proprietary/usr/keylayout/Vendor_1689_Product_fe00.kl:$(TARGET_COPY_OUT_SYSTEM)/usr/keylayout/Vendor_1689_Product_fe00.kl \
    vendor/essential/mata/proprietary/usr/keylayout/Vendor_18d1_Product_2c40.kl:$(TARGET_COPY_OUT_SYSTEM)/usr/keylayout/Vendor_18d1_Product_2c40.kl \
    vendor/essential/mata/proprietary/usr/keylayout/Vendor_18d1_Product_5018.kl:$(TARGET_COPY_OUT_SYSTEM)/usr/keylayout/Vendor_18d1_Product_5018.kl \
    vendor/essential/mata/proprietary/usr/keylayout/Vendor_1949_Product_0401.kl:$(TARGET_COPY_OUT_SYSTEM)/usr/keylayout/Vendor_1949_Product_0401.kl \
    vendor/essential/mata/proprietary/usr/keylayout/Vendor_1bad_Product_f016.kl:$(TARGET_COPY_OUT_SYSTEM)/usr/keylayout/Vendor_1bad_Product_f016.kl \
    vendor/essential/mata/proprietary/usr/keylayout/Vendor_1bad_Product_f023.kl:$(TARGET_COPY_OUT_SYSTEM)/usr/keylayout/Vendor_1bad_Product_f023.kl \
    vendor/essential/mata/proprietary/usr/keylayout/Vendor_1bad_Product_f027.kl:$(TARGET_COPY_OUT_SYSTEM)/usr/keylayout/Vendor_1bad_Product_f027.kl \
    vendor/essential/mata/proprietary/usr/keylayout/Vendor_1bad_Product_f036.kl:$(TARGET_COPY_OUT_SYSTEM)/usr/keylayout/Vendor_1bad_Product_f036.kl \
    vendor/essential/mata/proprietary/usr/keylayout/Vendor_1d79_Product_0009.kl:$(TARGET_COPY_OUT_SYSTEM)/usr/keylayout/Vendor_1d79_Product_0009.kl \
    vendor/essential/mata/proprietary/usr/keylayout/Vendor_22b8_Product_093d.kl:$(TARGET_COPY_OUT_SYSTEM)/usr/keylayout/Vendor_22b8_Product_093d.kl \
    vendor/essential/mata/proprietary/usr/keylayout/Vendor_2378_Product_1008.kl:$(TARGET_COPY_OUT_SYSTEM)/usr/keylayout/Vendor_2378_Product_1008.kl \
    vendor/essential/mata/proprietary/usr/keylayout/Vendor_2378_Product_100a.kl:$(TARGET_COPY_OUT_SYSTEM)/usr/keylayout/Vendor_2378_Product_100a.kl \
    vendor/essential/mata/proprietary/usr/keylayout/Vendor_2e17_Product_a001.kl:$(TARGET_COPY_OUT_SYSTEM)/usr/keylayout/Vendor_2e17_Product_a001.kl \
    vendor/essential/mata/proprietary/usr/keylayout/gpio-keys.kl:$(TARGET_COPY_OUT_SYSTEM)/usr/keylayout/gpio-keys.kl \
    vendor/essential/mata/proprietary/usr/keylayout/qwerty.kl:$(TARGET_COPY_OUT_SYSTEM)/usr/keylayout/qwerty.kl \
    vendor/essential/mata/proprietary/usr/keylayout/uinput-fpc.kl:$(TARGET_COPY_OUT_SYSTEM)/usr/keylayout/uinput-fpc.kl \
    vendor/essential/mata/proprietary/wallpapers/champagne.png:$(TARGET_COPY_OUT_SYSTEM)/wallpapers/champagne.png \
    vendor/essential/mata/proprietary/wallpapers/champagne_small.png:$(TARGET_COPY_OUT_SYSTEM)/wallpapers/champagne_small.png \
    vendor/essential/mata/proprietary/wallpapers/jaune.png:$(TARGET_COPY_OUT_SYSTEM)/wallpapers/jaune.png \
    vendor/essential/mata/proprietary/wallpapers/jaune_small.png:$(TARGET_COPY_OUT_SYSTEM)/wallpapers/jaune_small.png \
    vendor/essential/mata/proprietary/wallpapers/noir.png:$(TARGET_COPY_OUT_SYSTEM)/wallpapers/noir.png \
    vendor/essential/mata/proprietary/wallpapers/noir_small.png:$(TARGET_COPY_OUT_SYSTEM)/wallpapers/noir_small.png

PRODUCT_COPY_FILES += \
    vendor/essential/mata/proprietary/product/etc/permissions/privapp-permissions-searchlauncher.xml:$(TARGET_COPY_OUT_PRODUCT)/etc/permissions/privapp-permissions-searchlauncher.xml \
    vendor/essential/mata/proprietary/product/etc/permissions/split-permissions-google.xml:$(TARGET_COPY_OUT_PRODUCT)/etc/permissions/split-permissions-google.xml \
    vendor/essential/mata/proprietary/product/etc/permissions/privapp-permissions-google.xml:$(TARGET_COPY_OUT_PRODUCT)/etc/permissions/privapp-permissions-google.xml \
    vendor/essential/mata/proprietary/product/etc/preferred-apps/google.xml:$(TARGET_COPY_OUT_PRODUCT)/etc/preferred-apps/google.xml \
    vendor/essential/mata/proprietary/product/etc/sysconfig/wellbeing.xml:$(TARGET_COPY_OUT_PRODUCT)/etc/sysconfig/wellbeing.xml \
    vendor/essential/mata/proprietary/product/etc/sysconfig/google-hiddenapi-package-whitelist.xml:$(TARGET_COPY_OUT_PRODUCT)/etc/sysconfig/google-hiddenapi-package-whitelist.xml \
    vendor/essential/mata/proprietary/product/etc/default-permissions/default-permissions-google.xml:$(TARGET_COPY_OUT_PRODUCT)/etc/default-permissions/default-permissions-google.xml \
    vendor/essential/mata/proprietary/product/usr/srec/en-US/hmmlist:$(TARGET_COPY_OUT_PRODUCT)/usr/srec/en-US/hmmlist \
    vendor/essential/mata/proprietary/product/usr/srec/en-US/offline_action_data.pb:$(TARGET_COPY_OUT_PRODUCT)/usr/srec/en-US/offline_action_data.pb \
    vendor/essential/mata/proprietary/product/usr/srec/en-US/commands.abnf:$(TARGET_COPY_OUT_PRODUCT)/usr/srec/en-US/commands.abnf \
    vendor/essential/mata/proprietary/product/usr/srec/en-US/monastery_config.pumpkin:$(TARGET_COPY_OUT_PRODUCT)/usr/srec/en-US/monastery_config.pumpkin \
    vendor/essential/mata/proprietary/product/usr/srec/en-US/dict:$(TARGET_COPY_OUT_PRODUCT)/usr/srec/en-US/dict \
    vendor/essential/mata/proprietary/product/usr/srec/en-US/voice_actions_compiler.config:$(TARGET_COPY_OUT_PRODUCT)/usr/srec/en-US/voice_actions_compiler.config \
    vendor/essential/mata/proprietary/product/usr/srec/en-US/contacts_bias.fst:$(TARGET_COPY_OUT_PRODUCT)/usr/srec/en-US/contacts_bias.fst \
    vendor/essential/mata/proprietary/product/usr/srec/en-US/contacts.abnf:$(TARGET_COPY_OUT_PRODUCT)/usr/srec/en-US/contacts.abnf \
    vendor/essential/mata/proprietary/product/usr/srec/en-US/CONTACT_NAME.syms:$(TARGET_COPY_OUT_PRODUCT)/usr/srec/en-US/CONTACT_NAME.syms \
    vendor/essential/mata/proprietary/product/usr/srec/en-US/embedded_normalizer.mfar:$(TARGET_COPY_OUT_PRODUCT)/usr/srec/en-US/embedded_normalizer.mfar \
    vendor/essential/mata/proprietary/product/usr/srec/en-US/magic_mic.config:$(TARGET_COPY_OUT_PRODUCT)/usr/srec/en-US/magic_mic.config \
    vendor/essential/mata/proprietary/product/usr/srec/en-US/am_phonemes.syms:$(TARGET_COPY_OUT_PRODUCT)/usr/srec/en-US/am_phonemes.syms \
    vendor/essential/mata/proprietary/product/usr/srec/en-US/media_bias.fst:$(TARGET_COPY_OUT_PRODUCT)/usr/srec/en-US/media_bias.fst \
    vendor/essential/mata/proprietary/product/usr/srec/en-US/input_mean_std_dev:$(TARGET_COPY_OUT_PRODUCT)/usr/srec/en-US/input_mean_std_dev \
    vendor/essential/mata/proprietary/product/usr/srec/en-US/read_items_bias.fst:$(TARGET_COPY_OUT_PRODUCT)/usr/srec/en-US/read_items_bias.fst \
    vendor/essential/mata/proprietary/product/usr/srec/en-US/app_bias.fst:$(TARGET_COPY_OUT_PRODUCT)/usr/srec/en-US/app_bias.fst \
    vendor/essential/mata/proprietary/product/usr/srec/en-US/dictation.config:$(TARGET_COPY_OUT_PRODUCT)/usr/srec/en-US/dictation.config \
    vendor/essential/mata/proprietary/product/usr/srec/en-US/SONG_NAME.syms:$(TARGET_COPY_OUT_PRODUCT)/usr/srec/en-US/SONG_NAME.syms \
    vendor/essential/mata/proprietary/product/usr/srec/en-US/time_bias.fst:$(TARGET_COPY_OUT_PRODUCT)/usr/srec/en-US/time_bias.fst \
    vendor/essential/mata/proprietary/product/usr/srec/en-US/endpointer_dictation.config:$(TARGET_COPY_OUT_PRODUCT)/usr/srec/en-US/endpointer_dictation.config \
    vendor/essential/mata/proprietary/product/usr/srec/en-US/offensive_word_normalizer.mfar:$(TARGET_COPY_OUT_PRODUCT)/usr/srec/en-US/offensive_word_normalizer.mfar \
    vendor/essential/mata/proprietary/product/usr/srec/en-US/word_confidence_classifier:$(TARGET_COPY_OUT_PRODUCT)/usr/srec/en-US/word_confidence_classifier \
    vendor/essential/mata/proprietary/product/usr/srec/en-US/g2p_phonemes.syms:$(TARGET_COPY_OUT_PRODUCT)/usr/srec/en-US/g2p_phonemes.syms \
    vendor/essential/mata/proprietary/product/usr/srec/en-US/config.pumpkin:$(TARGET_COPY_OUT_PRODUCT)/usr/srec/en-US/config.pumpkin \
    vendor/essential/mata/proprietary/product/usr/srec/en-US/wordlist.syms:$(TARGET_COPY_OUT_PRODUCT)/usr/srec/en-US/wordlist.syms \
    vendor/essential/mata/proprietary/product/usr/srec/en-US/rescoring.fst.compact:$(TARGET_COPY_OUT_PRODUCT)/usr/srec/en-US/rescoring.fst.compact \
    vendor/essential/mata/proprietary/product/usr/srec/en-US/compile_grammar.config:$(TARGET_COPY_OUT_PRODUCT)/usr/srec/en-US/compile_grammar.config \
    vendor/essential/mata/proprietary/product/usr/srec/en-US/phonelist:$(TARGET_COPY_OUT_PRODUCT)/usr/srec/en-US/phonelist \
    vendor/essential/mata/proprietary/product/usr/srec/en-US/grammar.config:$(TARGET_COPY_OUT_PRODUCT)/usr/srec/en-US/grammar.config \
    vendor/essential/mata/proprietary/product/usr/srec/en-US/g2p.data:$(TARGET_COPY_OUT_PRODUCT)/usr/srec/en-US/g2p.data \
    vendor/essential/mata/proprietary/product/usr/srec/en-US/g2p_fst:$(TARGET_COPY_OUT_PRODUCT)/usr/srec/en-US/g2p_fst \
    vendor/essential/mata/proprietary/product/usr/srec/en-US/hmm_symbols:$(TARGET_COPY_OUT_PRODUCT)/usr/srec/en-US/hmm_symbols \
    vendor/essential/mata/proprietary/product/usr/srec/en-US/CONTACT_NAME.fst:$(TARGET_COPY_OUT_PRODUCT)/usr/srec/en-US/CONTACT_NAME.fst \
    vendor/essential/mata/proprietary/product/usr/srec/en-US/CLG.prewalk.fst:$(TARGET_COPY_OUT_PRODUCT)/usr/srec/en-US/CLG.prewalk.fst \
    vendor/essential/mata/proprietary/product/usr/srec/en-US/embedded_class_denorm.mfar:$(TARGET_COPY_OUT_PRODUCT)/usr/srec/en-US/embedded_class_denorm.mfar \
    vendor/essential/mata/proprietary/product/usr/srec/en-US/pumpkin.mmap:$(TARGET_COPY_OUT_PRODUCT)/usr/srec/en-US/pumpkin.mmap \
    vendor/essential/mata/proprietary/product/usr/srec/en-US/portable_meanstddev:$(TARGET_COPY_OUT_PRODUCT)/usr/srec/en-US/portable_meanstddev \
    vendor/essential/mata/proprietary/product/usr/srec/en-US/lstm_model.uint8.data:$(TARGET_COPY_OUT_PRODUCT)/usr/srec/en-US/lstm_model.uint8.data \
    vendor/essential/mata/proprietary/product/usr/srec/en-US/c_fst:$(TARGET_COPY_OUT_PRODUCT)/usr/srec/en-US/c_fst \
    vendor/essential/mata/proprietary/product/usr/srec/en-US/lexicon.U.fst:$(TARGET_COPY_OUT_PRODUCT)/usr/srec/en-US/lexicon.U.fst \
    vendor/essential/mata/proprietary/product/usr/srec/en-US/ep_portable_model.uint8.mmap:$(TARGET_COPY_OUT_PRODUCT)/usr/srec/en-US/ep_portable_model.uint8.mmap \
    vendor/essential/mata/proprietary/product/usr/srec/en-US/endpointer_model:$(TARGET_COPY_OUT_PRODUCT)/usr/srec/en-US/endpointer_model \
    vendor/essential/mata/proprietary/product/usr/srec/en-US/confirmation_bias.fst:$(TARGET_COPY_OUT_PRODUCT)/usr/srec/en-US/confirmation_bias.fst \
    vendor/essential/mata/proprietary/product/usr/srec/en-US/dnn:$(TARGET_COPY_OUT_PRODUCT)/usr/srec/en-US/dnn \
    vendor/essential/mata/proprietary/product/usr/srec/en-US/APP_NAME.fst:$(TARGET_COPY_OUT_PRODUCT)/usr/srec/en-US/APP_NAME.fst \
    vendor/essential/mata/proprietary/product/usr/srec/en-US/endpointer_voicesearch.config:$(TARGET_COPY_OUT_PRODUCT)/usr/srec/en-US/endpointer_voicesearch.config \
    vendor/essential/mata/proprietary/product/usr/srec/en-US/norm_fst:$(TARGET_COPY_OUT_PRODUCT)/usr/srec/en-US/norm_fst \
    vendor/essential/mata/proprietary/product/usr/srec/en-US/skip_items_bias.fst:$(TARGET_COPY_OUT_PRODUCT)/usr/srec/en-US/skip_items_bias.fst \
    vendor/essential/mata/proprietary/product/usr/srec/en-US/APP_NAME.syms:$(TARGET_COPY_OUT_PRODUCT)/usr/srec/en-US/APP_NAME.syms \
    vendor/essential/mata/proprietary/product/usr/srec/en-US/contacts_disambig.fst:$(TARGET_COPY_OUT_PRODUCT)/usr/srec/en-US/contacts_disambig.fst \
    vendor/essential/mata/proprietary/product/usr/srec/en-US/transform.mfar:$(TARGET_COPY_OUT_PRODUCT)/usr/srec/en-US/transform.mfar \
    vendor/essential/mata/proprietary/product/usr/srec/en-US/voice_actions.config:$(TARGET_COPY_OUT_PRODUCT)/usr/srec/en-US/voice_actions.config \
    vendor/essential/mata/proprietary/product/usr/srec/en-US/g2p_graphemes.syms:$(TARGET_COPY_OUT_PRODUCT)/usr/srec/en-US/g2p_graphemes.syms \
    vendor/essential/mata/proprietary/product/usr/srec/en-US/SONG_NAME.fst:$(TARGET_COPY_OUT_PRODUCT)/usr/srec/en-US/SONG_NAME.fst \
    vendor/essential/mata/proprietary/product/usr/srec/en-US/ep_portable_mean_stddev:$(TARGET_COPY_OUT_PRODUCT)/usr/srec/en-US/ep_portable_mean_stddev \
    vendor/essential/mata/proprietary/product/usr/srec/en-US/portable_lstm:$(TARGET_COPY_OUT_PRODUCT)/usr/srec/en-US/portable_lstm \
    vendor/essential/mata/proprietary/product/usr/srec/en-US/endpointer_model.mmap:$(TARGET_COPY_OUT_PRODUCT)/usr/srec/en-US/endpointer_model.mmap \
    vendor/essential/mata/proprietary/product/usr/srec/en-US/metadata:$(TARGET_COPY_OUT_PRODUCT)/usr/srec/en-US/metadata \
    vendor/essential/mata/proprietary/product/usr/srec/en-US/semantics.pumpkin:$(TARGET_COPY_OUT_PRODUCT)/usr/srec/en-US/semantics.pumpkin \
    vendor/essential/mata/proprietary/product/framework/com.google.android.dialer.support.jar:$(TARGET_COPY_OUT_PRODUCT)/framework/com.google.android.dialer.support.jar \
    vendor/essential/mata/proprietary/product/framework/com.google.android.maps.jar:$(TARGET_COPY_OUT_PRODUCT)/framework/com.google.android.maps.jar \


PRODUCT_PACKAGES += \
    CNEService \
    CarrierServices \
    ChameleonProvider \
    ConnMO \
    DMService \
    DataDispatcher \
    Ecore \
    EssentialLegal \
    EssentialResources \
    EssentialSUWOverlay \
    EssentialSuwWelcome \
    GoogleRestore \
    MobileInstaller \
    HotwordEnrollmentOKGoogleWCD9335 \
    HotwordEnrollmentTGoogleWCD9335 \
    HotwordEnrollmentXGoogleWCD9335 \
    Klik \
    OMADMDIL \
    OemTelephonyApp \
    OobConfig \
    PhoneDataHandler \
    Score \
    SprintHiddenMenu \
    SearchLauncherQRef \
    SystemDataHandler \
    VzwOmaTrigger \
    WfdCommon \
    WfdService \
    audiosphere \
    com.qti.dpmframework \
    com.ts.android.chameleon.chameleonshare \
    com.ts.android.chameleon.dataservice \
    dpmapi \
    embms \
    oem-services \
    org.simalliance.openmobileapi \
    qcrilmsgtunnel \
    qmapbridge \
    rcs_service_aidl \
    rcs_service_api \
    sprint-services \
    sprint-telephony-common \
    tcmclient \
    uceShimService \
    vendor.essential.hardware.sidecar-V1.0-java \
    izat.xt.srv
