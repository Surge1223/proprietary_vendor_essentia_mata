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
    $(wildcard vendor/essential/mata//proprietary/lib64/*.so)

proprietary_lib_files := \
    $(wildcard vendor/essential/mata/proprietary/lib/*.so)

proprietary_app_files := \
    $(wildcard vendor/essential/mata/proprietary/app/*)

proprietary_privapp_files := \
    $(wildcard vendor/essential/mata/proprietary/priv-app/*)

copy_lib64_files := $(foreach f, $(proprietary_lib64_files), $(call copy-one-file, $(f), system/lib64))
copy_lib_files := $(foreach f, $(proprietary_lib_files), $(call copy-one-file, $(f), system/lib))
copy_app_files := $(foreach f, $(proprietary_app_files), $(call copy-one-file, $(f), system/app))
copy_privpp_files := $(foreach f, $(proprietary_privapp_files), $(call copy-one-file, $(f), system/priv-app))

PRODUCT_COPY_FILES += \
     $(copy_lib64_files) \
     $(copy_lib_files)

PRODUCT_COPY_FILES += \
    vendor/essential/mata/proprietary/bin/art:system/bin/art \
    vendor/essential/mata/proprietary/bin/climax:system/bin/climax \
    vendor/essential/mata/proprietary/bin/curl:system/bin/curl \
    vendor/essential/mata/proprietary/bin/dun-server:system/bin/dun-server \
    vendor/essential/mata/proprietary/bin/fastboot:system/bin/fastboot \
    vendor/essential/mata/proprietary/bin/pktlogconf:system/bin/pktlogconf \
    vendor/essential/mata/proprietary/bin/qvrcameratseq64:system/bin/qvrcameratseq64 \
    vendor/essential/mata/proprietary/bin/qvrcameratseq:system/bin/qvrcameratseq \
    vendor/essential/mata/proprietary/bin/qvrservice:system/bin/qvrservice \
    vendor/essential/mata/proprietary/bin/setup_fs:system/bin/setup_fs \
    vendor/essential/mata/proprietary/bin/tloc_daemon:system/bin/tloc_daemon \
    vendor/essential/mata/proprietary/bin/wfdservice:system/bin/wfdservice \
    vendor/essential/mata/proprietary/etc/cdma_call_conf.xml:system/etc/cdma_call_conf.xml \
    vendor/essential/mata/proprietary/etc/cne/SwimConfig.xml:system/etc/cne/SwimConfig.xml \
    vendor/essential/mata/proprietary/etc/cne/andsfCne.xml:system/etc/cne/andsfCne.xml \
    vendor/essential/mata/proprietary/etc/default-permissions/default-permissions-google.xml:system/etc/default-permissions/default-permissions-google.xml \
    vendor/essential/mata/proprietary/etc/excluded-input-devices.xml:system/etc/excluded-input-devices.xml \
    vendor/essential/mata/proprietary/etc/hostapd/hostapd.accept:system/etc/hostapd/hostapd.accept \
    vendor/essential/mata/proprietary/etc/hostapd/hostapd.deny:system/etc/hostapd/hostapd.deny \
    vendor/essential/mata/proprietary/etc/hostapd/hostapd_default.conf:system/etc/hostapd/hostapd_default.conf \
    vendor/essential/mata/proprietary/etc/init/wfdservice.rc:system/etc/init/wfdservice.rc \
    vendor/essential/mata/proprietary/etc/libnfc-nci.conf:system/etc/libnfc-nci.conf \
    vendor/essential/mata/proprietary/etc/libnfc-nxp.conf:system/etc/libnfc-nxp.conf \
    vendor/essential/mata/proprietary/etc/permissions/LteDirectDiscovery.xml:system/etc/permissions/LteDirectDiscovery.xml \
    vendor/essential/mata/proprietary/etc/permissions/android.hardware.fingerprint.xml:system/etc/permissions/android.hardware.fingerprint.xml \
    vendor/essential/mata/proprietary/etc/permissions/android.software.live_wallpaper.xml:system/etc/permissions/android.software.live_wallpaper.xml \
    vendor/essential/mata/proprietary/etc/permissions/android.software.webview.xml:system/etc/permissions/android.software.webview.xml \
    vendor/essential/mata/proprietary/etc/permissions/audiosphere.xml:system/etc/permissions/audiosphere.xml \
    vendor/essential/mata/proprietary/etc/permissions/cneapiclient.xml:system/etc/permissions/cneapiclient.xml \
    vendor/essential/mata/proprietary/etc/permissions/com.android.location.provider.xml:system/etc/permissions/com.android.location.provider.xml \
    vendor/essential/mata/proprietary/etc/permissions/com.android.media.remotedisplay.xml:system/etc/permissions/com.android.media.remotedisplay.xml \
    vendor/essential/mata/proprietary/etc/permissions/com.android.mediadrm.signer.xml:system/etc/permissions/com.android.mediadrm.signer.xml \
    vendor/essential/mata/proprietary/etc/permissions/com.android.omadm.service.xml:system/etc/permissions/com.android.omadm.service.xml \
    vendor/essential/mata/proprietary/etc/permissions/com.android.sdm.plugins.connmo.xml:system/etc/permissions/com.android.sdm.plugins.connmo.xml \
    vendor/essential/mata/proprietary/etc/permissions/com.android.vzwomatrigger.xml:system/etc/permissions/com.android.vzwomatrigger.xml \
    vendor/essential/mata/proprietary/etc/permissions/com.google.android.dialer.support.xml:system/etc/permissions/com.google.android.dialer.support.xml \
    vendor/essential/mata/proprietary/etc/permissions/com.google.android.maps.xml:system/etc/permissions/com.google.android.maps.xml \
    vendor/essential/mata/proprietary/etc/permissions/com.quicinc.cne.xml:system/etc/permissions/com.quicinc.cne.xml \
    vendor/essential/mata/proprietary/etc/permissions/com.ts.android.chameleon.chameleonshare.xml:system/etc/permissions/com.ts.android.chameleon.chameleonshare.xml \
    vendor/essential/mata/proprietary/etc/permissions/com.ts.android.chameleon.dataservice.xml:system/etc/permissions/com.ts.android.chameleon.dataservice.xml \
    vendor/essential/mata/proprietary/etc/permissions/embms.xml:system/etc/permissions/embms.xml \
    vendor/essential/mata/proprietary/etc/permissions/platform.xml:system/etc/permissions/platform.xml \
    vendor/essential/mata/proprietary/etc/permissions/privapp-permissions-google.xml:system/etc/permissions/privapp-permissions-google.xml \
    vendor/essential/mata/proprietary/etc/permissions/privapp-permissions-mata.xml:system/etc/permissions/privapp-permissions-mata.xml \
    vendor/essential/mata/proprietary/etc/permissions/privapp-permissions-platform.xml:system/etc/permissions/privapp-permissions-platform.xml \
    vendor/essential/mata/proprietary/etc/permissions/qti_permissions.xml:system/etc/permissions/qti_permissions.xml \
    vendor/essential/mata/proprietary/etc/permissions/rcs_service_aidl.xml:system/etc/permissions/rcs_service_aidl.xml \
    vendor/essential/mata/proprietary/etc/permissions/rcs_service_api.xml:system/etc/permissions/rcs_service_api.xml \
    vendor/essential/mata/proprietary/etc/permissions/vendor-essential-hardware-sidecar.xml:system/etc/permissions/vendor-essential-hardware-sidecar.xml \
    vendor/essential/mata/proprietary/etc/scve/facereco/gModel.dat:system/etc/scve/facereco/gModel.dat \
    vendor/essential/mata/proprietary/etc/sepolicy_freeze_test:system/etc/sepolicy_freeze_test \
    vendor/essential/mata/proprietary/etc/spn-conf.xml:system/etc/spn-conf.xml \
    vendor/essential/mata/proprietary/etc/sysconfig/essential-hiddenapi-package-whitelist.xml:system/etc/sysconfig/essential-hiddenapi-package-whitelist.xml \
    vendor/essential/mata/proprietary/etc/sysconfig/framework-sysconfig.xml:system/etc/sysconfig/framework-sysconfig.xml \
    vendor/essential/mata/proprietary/etc/sysconfig/google-hiddenapi-package-whitelist.xml:system/etc/sysconfig/google-hiddenapi-package-whitelist.xml \
    vendor/essential/mata/proprietary/etc/sysconfig/google.xml:system/etc/sysconfig/google.xml \
    vendor/essential/mata/proprietary/etc/sysconfig/hiddenapi-package-whitelist.xml:system/etc/sysconfig/hiddenapi-package-whitelist.xml \
    vendor/essential/mata/proprietary/etc/sysconfig/mata-disabled-until-used-preinstalled-carrier-app.xml:system/etc/sysconfig/mata-disabled-until-used-preinstalled-carrier-app.xml \
    vendor/essential/mata/proprietary/etc/sysconfig/qti_whitelist.xml:system/etc/sysconfig/qti_whitelist.xml \
    vendor/essential/mata/proprietary/etc/sysconfig/sprint_whitelist.xml:system/etc/sysconfig/sprint_whitelist.xml \
    vendor/essential/mata/proprietary/etc/sysconfig/whitelist_com.android.omadm.service.xml:system/etc/sysconfig/whitelist_com.android.omadm.service.xml \
    vendor/essential/mata/proprietary/etc/wfdconfig.xml:system/etc/wfdconfig.xml \
    vendor/essential/mata/proprietary/etc/wfdconfigsink.xml:system/etc/wfdconfigsink.xml \
    vendor/essential/mata/proprietary/etc/whitelistedapps.xml:system/etc/whitelistedapps.xml \
    vendor/essential/mata/proprietary/usr/keylayout/AVRCP.kl:system/usr/keylayout/AVRCP.kl \
    vendor/essential/mata/proprietary/usr/keylayout/Generic.kl:system/usr/keylayout/Generic.kl \
    vendor/essential/mata/proprietary/usr/keylayout/Vendor_0079_Product_0011.kl:system/usr/keylayout/Vendor_0079_Product_0011.kl \
    vendor/essential/mata/proprietary/usr/keylayout/Vendor_045e_Product_028e.kl:system/usr/keylayout/Vendor_045e_Product_028e.kl \
    vendor/essential/mata/proprietary/usr/keylayout/Vendor_045e_Product_02d1.kl:system/usr/keylayout/Vendor_045e_Product_02d1.kl \
    vendor/essential/mata/proprietary/usr/keylayout/Vendor_045e_Product_02e0.kl:system/usr/keylayout/Vendor_045e_Product_02e0.kl \
    vendor/essential/mata/proprietary/usr/keylayout/Vendor_046d_Product_b501.kl:system/usr/keylayout/Vendor_046d_Product_b501.kl \
    vendor/essential/mata/proprietary/usr/keylayout/Vendor_046d_Product_c216.kl:system/usr/keylayout/Vendor_046d_Product_c216.kl \
    vendor/essential/mata/proprietary/usr/keylayout/Vendor_046d_Product_c219.kl:system/usr/keylayout/Vendor_046d_Product_c219.kl \
    vendor/essential/mata/proprietary/usr/keylayout/Vendor_046d_Product_c21d.kl:system/usr/keylayout/Vendor_046d_Product_c21d.kl \
    vendor/essential/mata/proprietary/usr/keylayout/Vendor_046d_Product_c21f.kl:system/usr/keylayout/Vendor_046d_Product_c21f.kl \
    vendor/essential/mata/proprietary/usr/keylayout/Vendor_046d_Product_c294.kl:system/usr/keylayout/Vendor_046d_Product_c294.kl \
    vendor/essential/mata/proprietary/usr/keylayout/Vendor_046d_Product_c299.kl:system/usr/keylayout/Vendor_046d_Product_c299.kl \
    vendor/essential/mata/proprietary/usr/keylayout/Vendor_046d_Product_c532.kl:system/usr/keylayout/Vendor_046d_Product_c532.kl \
    vendor/essential/mata/proprietary/usr/keylayout/Vendor_054c_Product_0268.kl:system/usr/keylayout/Vendor_054c_Product_0268.kl \
    vendor/essential/mata/proprietary/usr/keylayout/Vendor_054c_Product_05c4.kl:system/usr/keylayout/Vendor_054c_Product_05c4.kl \
    vendor/essential/mata/proprietary/usr/keylayout/Vendor_054c_Product_09cc.kl:system/usr/keylayout/Vendor_054c_Product_09cc.kl \
    vendor/essential/mata/proprietary/usr/keylayout/Vendor_0583_Product_2060.kl:system/usr/keylayout/Vendor_0583_Product_2060.kl \
    vendor/essential/mata/proprietary/usr/keylayout/Vendor_05ac_Product_0239.kl:system/usr/keylayout/Vendor_05ac_Product_0239.kl \
    vendor/essential/mata/proprietary/usr/keylayout/Vendor_0b05_Product_4500.kl:system/usr/keylayout/Vendor_0b05_Product_4500.kl \
    vendor/essential/mata/proprietary/usr/keylayout/Vendor_1038_Product_1412.kl:system/usr/keylayout/Vendor_1038_Product_1412.kl \
    vendor/essential/mata/proprietary/usr/keylayout/Vendor_12bd_Product_d015.kl:system/usr/keylayout/Vendor_12bd_Product_d015.kl \
    vendor/essential/mata/proprietary/usr/keylayout/Vendor_1532_Product_0900.kl:system/usr/keylayout/Vendor_1532_Product_0900.kl \
    vendor/essential/mata/proprietary/usr/keylayout/Vendor_1689_Product_fd00.kl:system/usr/keylayout/Vendor_1689_Product_fd00.kl \
    vendor/essential/mata/proprietary/usr/keylayout/Vendor_1689_Product_fd01.kl:system/usr/keylayout/Vendor_1689_Product_fd01.kl \
    vendor/essential/mata/proprietary/usr/keylayout/Vendor_1689_Product_fe00.kl:system/usr/keylayout/Vendor_1689_Product_fe00.kl \
    vendor/essential/mata/proprietary/usr/keylayout/Vendor_18d1_Product_2c40.kl:system/usr/keylayout/Vendor_18d1_Product_2c40.kl \
    vendor/essential/mata/proprietary/usr/keylayout/Vendor_18d1_Product_5018.kl:system/usr/keylayout/Vendor_18d1_Product_5018.kl \
    vendor/essential/mata/proprietary/usr/keylayout/Vendor_1949_Product_0401.kl:system/usr/keylayout/Vendor_1949_Product_0401.kl \
    vendor/essential/mata/proprietary/usr/keylayout/Vendor_1bad_Product_f016.kl:system/usr/keylayout/Vendor_1bad_Product_f016.kl \
    vendor/essential/mata/proprietary/usr/keylayout/Vendor_1bad_Product_f023.kl:system/usr/keylayout/Vendor_1bad_Product_f023.kl \
    vendor/essential/mata/proprietary/usr/keylayout/Vendor_1bad_Product_f027.kl:system/usr/keylayout/Vendor_1bad_Product_f027.kl \
    vendor/essential/mata/proprietary/usr/keylayout/Vendor_1bad_Product_f036.kl:system/usr/keylayout/Vendor_1bad_Product_f036.kl \
    vendor/essential/mata/proprietary/usr/keylayout/Vendor_1d79_Product_0009.kl:system/usr/keylayout/Vendor_1d79_Product_0009.kl \
    vendor/essential/mata/proprietary/usr/keylayout/Vendor_22b8_Product_093d.kl:system/usr/keylayout/Vendor_22b8_Product_093d.kl \
    vendor/essential/mata/proprietary/usr/keylayout/Vendor_2378_Product_1008.kl:system/usr/keylayout/Vendor_2378_Product_1008.kl \
    vendor/essential/mata/proprietary/usr/keylayout/Vendor_2378_Product_100a.kl:system/usr/keylayout/Vendor_2378_Product_100a.kl \
    vendor/essential/mata/proprietary/usr/keylayout/Vendor_2e17_Product_a001.kl:system/usr/keylayout/Vendor_2e17_Product_a001.kl \
    vendor/essential/mata/proprietary/usr/keylayout/gpio-keys.kl:system/usr/keylayout/gpio-keys.kl \
    vendor/essential/mata/proprietary/usr/keylayout/qwerty.kl:system/usr/keylayout/qwerty.kl \
    vendor/essential/mata/proprietary/usr/keylayout/uinput-fpc.kl:system/usr/keylayout/uinput-fpc.kl \
    vendor/essential/mata/proprietary/usr/srec/en-US/APP_NAME.fst:system/usr/srec/en-US/APP_NAME.fst \
    vendor/essential/mata/proprietary/usr/srec/en-US/APP_NAME.syms:system/usr/srec/en-US/APP_NAME.syms \
    vendor/essential/mata/proprietary/usr/srec/en-US/CLG.prewalk.fst:system/usr/srec/en-US/CLG.prewalk.fst \
    vendor/essential/mata/proprietary/usr/srec/en-US/CONTACT_NAME.fst:system/usr/srec/en-US/CONTACT_NAME.fst \
    vendor/essential/mata/proprietary/usr/srec/en-US/CONTACT_NAME.syms:system/usr/srec/en-US/CONTACT_NAME.syms \
    vendor/essential/mata/proprietary/usr/srec/en-US/SONG_NAME.fst:system/usr/srec/en-US/SONG_NAME.fst \
    vendor/essential/mata/proprietary/usr/srec/en-US/SONG_NAME.syms:system/usr/srec/en-US/SONG_NAME.syms \
    vendor/essential/mata/proprietary/usr/srec/en-US/TERSE_LSTM_LM.lstm_lm.main_model.uint8.data:system/usr/srec/en-US/TERSE_LSTM_LM.lstm_lm.main_model.uint8.data \
    vendor/essential/mata/proprietary/usr/srec/en-US/TERSE_LSTM_LM.lstm_lm.self_normalized_model.uint8.data:system/usr/srec/en-US/TERSE_LSTM_LM.lstm_lm.self_normalized_model.uint8.data \
    vendor/essential/mata/proprietary/usr/srec/en-US/TERSE_LSTM_LM.lstm_lm.syms:system/usr/srec/en-US/TERSE_LSTM_LM.lstm_lm.syms \
    vendor/essential/mata/proprietary/usr/srec/en-US/am_phonemes.syms:system/usr/srec/en-US/am_phonemes.syms \
    vendor/essential/mata/proprietary/usr/srec/en-US/app_bias.fst:system/usr/srec/en-US/app_bias.fst \
    vendor/essential/mata/proprietary/usr/srec/en-US/class_normalizer.mfar:system/usr/srec/en-US/class_normalizer.mfar \
    vendor/essential/mata/proprietary/usr/srec/en-US/commands.abnf:system/usr/srec/en-US/commands.abnf \
    vendor/essential/mata/proprietary/usr/srec/en-US/compile_grammar.config:system/usr/srec/en-US/compile_grammar.config \
    vendor/essential/mata/proprietary/usr/srec/en-US/config.pumpkin:system/usr/srec/en-US/config.pumpkin \
    vendor/essential/mata/proprietary/usr/srec/en-US/confirmation_bias.fst:system/usr/srec/en-US/confirmation_bias.fst \
    vendor/essential/mata/proprietary/usr/srec/en-US/contacts.abnf:system/usr/srec/en-US/contacts.abnf \
    vendor/essential/mata/proprietary/usr/srec/en-US/contacts_bias.fst:system/usr/srec/en-US/contacts_bias.fst \
    vendor/essential/mata/proprietary/usr/srec/en-US/contacts_disambig.fst:system/usr/srec/en-US/contacts_disambig.fst \
    vendor/essential/mata/proprietary/usr/srec/en-US/dictation.config:system/usr/srec/en-US/dictation.config \
    vendor/essential/mata/proprietary/usr/srec/en-US/embedded_class_denorm.mfar:system/usr/srec/en-US/embedded_class_denorm.mfar \
    vendor/essential/mata/proprietary/usr/srec/en-US/embedded_normalizer.mfar:system/usr/srec/en-US/embedded_normalizer.mfar \
    vendor/essential/mata/proprietary/usr/srec/en-US/en-US_app-actions_prompted-app-name_TWIDDLER_FST.fst:system/usr/srec/en-US/en-US_app-actions_prompted-app-name_TWIDDLER_FST.fst \
    vendor/essential/mata/proprietary/usr/srec/en-US/en-US_calendar-actions_AddCalendarEvent-Prompted-FieldToChange_TWIDDLER_FST.fst:system/usr/srec/en-US/en-US_calendar-actions_AddCalendarEvent-Prompted-FieldToChange_TWIDDLER_FST.fst \
    vendor/essential/mata/proprietary/usr/srec/en-US/en-US_confirmation_confirmation-cancellation_TWIDDLER_FST.fst:system/usr/srec/en-US/en-US_confirmation_confirmation-cancellation_TWIDDLER_FST.fst \
    vendor/essential/mata/proprietary/usr/srec/en-US/en-US_gmm-actions_gmm-nav-actions_TWIDDLER_FST.fst:system/usr/srec/en-US/en-US_gmm-actions_gmm-nav-actions_TWIDDLER_FST.fst \
    vendor/essential/mata/proprietary/usr/srec/en-US/en-US_media-actions_music-service-controllable_TWIDDLER_FST.fst:system/usr/srec/en-US/en-US_media-actions_music-service-controllable_TWIDDLER_FST.fst \
    vendor/essential/mata/proprietary/usr/srec/en-US/en-US_monastery_GenericAction-Prompted-ContactName_TWIDDLER_FST.fst:system/usr/srec/en-US/en-US_monastery_GenericAction-Prompted-ContactName_TWIDDLER_FST.fst \
    vendor/essential/mata/proprietary/usr/srec/en-US/en-US_monastery_contact-disambig-static_TWIDDLER_FST.fst:system/usr/srec/en-US/en-US_monastery_contact-disambig-static_TWIDDLER_FST.fst \
    vendor/essential/mata/proprietary/usr/srec/en-US/en-US_read-items_SearchMessageAction-Prompted-Read_TWIDDLER_FST.fst:system/usr/srec/en-US/en-US_read-items_SearchMessageAction-Prompted-Read_TWIDDLER_FST.fst \
    vendor/essential/mata/proprietary/usr/srec/en-US/en-US_read-items_SearchMessageAction-Prompted-Skip_TWIDDLER_FST.fst:system/usr/srec/en-US/en-US_read-items_SearchMessageAction-Prompted-Skip_TWIDDLER_FST.fst \
    vendor/essential/mata/proprietary/usr/srec/en-US/en-US_time-actions_time-context_TWIDDLER_FST.fst:system/usr/srec/en-US/en-US_time-actions_time-context_TWIDDLER_FST.fst \
    vendor/essential/mata/proprietary/usr/srec/en-US/endpointer_dictation.config:system/usr/srec/en-US/endpointer_dictation.config \
    vendor/essential/mata/proprietary/usr/srec/en-US/endpointer_model.mmap:system/usr/srec/en-US/endpointer_model.mmap \
    vendor/essential/mata/proprietary/usr/srec/en-US/endpointer_model:system/usr/srec/en-US/endpointer_model \
    vendor/essential/mata/proprietary/usr/srec/en-US/endpointer_voicesearch.config:system/usr/srec/en-US/endpointer_voicesearch.config \
    vendor/essential/mata/proprietary/usr/srec/en-US/ep_portable_mean_stddev:system/usr/srec/en-US/ep_portable_mean_stddev \
    vendor/essential/mata/proprietary/usr/srec/en-US/ep_portable_model.mmap:system/usr/srec/en-US/ep_portable_model.mmap \
    vendor/essential/mata/proprietary/usr/srec/en-US/ep_portable_model.uint8.mmap:system/usr/srec/en-US/ep_portable_model.uint8.mmap \
    vendor/essential/mata/proprietary/usr/srec/en-US/g2p.data:system/usr/srec/en-US/g2p.data \
    vendor/essential/mata/proprietary/usr/srec/en-US/g2p_fst:system/usr/srec/en-US/g2p_fst \
    vendor/essential/mata/proprietary/usr/srec/en-US/g2p_graphemes.syms:system/usr/srec/en-US/g2p_graphemes.syms \
    vendor/essential/mata/proprietary/usr/srec/en-US/g2p_phonemes.syms:system/usr/srec/en-US/g2p_phonemes.syms \
    vendor/essential/mata/proprietary/usr/srec/en-US/grammar.config:system/usr/srec/en-US/grammar.config \
    vendor/essential/mata/proprietary/usr/srec/en-US/graphemes.syms:system/usr/srec/en-US/graphemes.syms \
    vendor/essential/mata/proprietary/usr/srec/en-US/hmm_symbols:system/usr/srec/en-US/hmm_symbols \
    vendor/essential/mata/proprietary/usr/srec/en-US/hmmlist:system/usr/srec/en-US/hmmlist \
    vendor/essential/mata/proprietary/usr/srec/en-US/input_mean_std_dev:system/usr/srec/en-US/input_mean_std_dev \
    vendor/essential/mata/proprietary/usr/srec/en-US/lexicon.U.fst:system/usr/srec/en-US/lexicon.U.fst \
    vendor/essential/mata/proprietary/usr/srec/en-US/lstm_model.uint8.data:system/usr/srec/en-US/lstm_model.uint8.data \
    vendor/essential/mata/proprietary/usr/srec/en-US/magic_mic.config:system/usr/srec/en-US/magic_mic.config \
    vendor/essential/mata/proprietary/usr/srec/en-US/media_bias.fst:system/usr/srec/en-US/media_bias.fst \
    vendor/essential/mata/proprietary/usr/srec/en-US/metadata:system/usr/srec/en-US/metadata \
    vendor/essential/mata/proprietary/usr/srec/en-US/monastery_config.pumpkin:system/usr/srec/en-US/monastery_config.pumpkin \
    vendor/essential/mata/proprietary/usr/srec/en-US/norm_fst:system/usr/srec/en-US/norm_fst \
    vendor/essential/mata/proprietary/usr/srec/en-US/normalizer.mfar:system/usr/srec/en-US/normalizer.mfar \
    vendor/essential/mata/proprietary/usr/srec/en-US/offensive_word_normalizer.mfar:system/usr/srec/en-US/offensive_word_normalizer.mfar \
    vendor/essential/mata/proprietary/usr/srec/en-US/offline_action_data.pb:system/usr/srec/en-US/offline_action_data.pb \
    vendor/essential/mata/proprietary/usr/srec/en-US/phonelist.syms:system/usr/srec/en-US/phonelist.syms \
    vendor/essential/mata/proprietary/usr/srec/en-US/phonelist:system/usr/srec/en-US/phonelist \
    vendor/essential/mata/proprietary/usr/srec/en-US/phonemes.syms:system/usr/srec/en-US/phonemes.syms \
    vendor/essential/mata/proprietary/usr/srec/en-US/portable_lstm:system/usr/srec/en-US/portable_lstm \
    vendor/essential/mata/proprietary/usr/srec/en-US/portable_meanstddev:system/usr/srec/en-US/portable_meanstddev \
    vendor/essential/mata/proprietary/usr/srec/en-US/prons_exception_dictionary_file.txt:system/usr/srec/en-US/prons_exception_dictionary_file.txt \
    vendor/essential/mata/proprietary/usr/srec/en-US/pumpkin.mmap:system/usr/srec/en-US/pumpkin.mmap \
    vendor/essential/mata/proprietary/usr/srec/en-US/read_items_bias.fst:system/usr/srec/en-US/read_items_bias.fst \
    vendor/essential/mata/proprietary/usr/srec/en-US/rescoring.fst.compact:system/usr/srec/en-US/rescoring.fst.compact \
    vendor/essential/mata/proprietary/usr/srec/en-US/rescoring.fst.louds:system/usr/srec/en-US/rescoring.fst.louds \
    vendor/essential/mata/proprietary/usr/srec/en-US/semantics.pumpkin:system/usr/srec/en-US/semantics.pumpkin \
    vendor/essential/mata/proprietary/usr/srec/en-US/skip_items_bias.fst:system/usr/srec/en-US/skip_items_bias.fst \
    vendor/essential/mata/proprietary/usr/srec/en-US/time_bias.fst:system/usr/srec/en-US/time_bias.fst \
    vendor/essential/mata/proprietary/usr/srec/en-US/transform.mfar:system/usr/srec/en-US/transform.mfar \
    vendor/essential/mata/proprietary/usr/srec/en-US/voice_actions.config:system/usr/srec/en-US/voice_actions.config \
    vendor/essential/mata/proprietary/usr/srec/en-US/voice_actions_compiler.config:system/usr/srec/en-US/voice_actions_compiler.config \
    vendor/essential/mata/proprietary/usr/srec/en-US/word_classifier:system/usr/srec/en-US/word_classifier \
    vendor/essential/mata/proprietary/usr/srec/en-US/word_confidence_classifier:system/usr/srec/en-US/word_confidence_classifier \
    vendor/essential/mata/proprietary/usr/srec/en-US/wordlist.syms:system/usr/srec/en-US/wordlist.syms \
    vendor/essential/mata/proprietary/wallpapers/champagne.png:system/wallpapers/champagne.png \
    vendor/essential/mata/proprietary/wallpapers/champagne_small.png:system/wallpapers/champagne_small.png \
    vendor/essential/mata/proprietary/wallpapers/jaune.png:system/wallpapers/jaune.png \
    vendor/essential/mata/proprietary/wallpapers/jaune_small.png:system/wallpapers/jaune_small.png \
    vendor/essential/mata/proprietary/wallpapers/noir.png:system/wallpapers/noir.png \
    vendor/essential/mata/proprietary/wallpapers/noir_small.png:system/wallpapers/noir_small.png

PRODUCT_PACKAGES += \
    CNEService \
    CarrierBrowserProvider \
    CarrierServices \
    ChameleonProvider \
    ConnMO \
    DMService \
    DataDispatcher \
    Ecore \
    EssentialCarrier \
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
    SearchLauncherQuickStep \
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
    tcmiface \
    uceShimService \
    izat.xt.srv
