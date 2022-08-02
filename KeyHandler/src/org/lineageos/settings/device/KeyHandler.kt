/*
 * Copyright (C) 2021-2022 The LineageOS Project
 * SPDX-License-Identifier: Apache-2.0
 */

package org.lineageos.settings.device

import android.content.Context
import android.hardware.input.InputManager
import android.media.AudioManager
import android.os.VibrationEffect
import android.os.Vibrator
import android.view.KeyEvent
import com.android.internal.os.DeviceKeyHandler

import java.io.File

class KeyHandler(context: Context) : DeviceKeyHandler {
    private val audioManager = context.getSystemService(AudioManager::class.java)
    private val inputManager = context.getSystemService(InputManager::class.java)
    private val vibrator = context.getSystemService(Vibrator::class.java)

    override fun handleKeyEvent(event: KeyEvent): KeyEvent? {
        if (event.action != KeyEvent.ACTION_DOWN) {
            return event
        }

        if (inputManager.getInputDevice(event.deviceId).name != "oplus,hall_tri_state_key") {
            return event
        }

        when (File("/proc/tristatekey/tri_state").readText().trim()) {
            "1" -> handleMode(POSITION_TOP)
            "2" -> handleMode(POSITION_MIDDLE)
            "3" -> handleMode(POSITION_BOTTOM)
        }

        return null
    }

    private fun handleMode(position: Int) {
        when (position) {
            POSITION_TOP -> {
                audioManager.setRingerModeInternal(AudioManager.RINGER_MODE_SILENT)
            }
            POSITION_MIDDLE -> {
                audioManager.setRingerModeInternal(AudioManager.RINGER_MODE_VIBRATE)
                vibrator.vibrate(MODE_VIBRATION_EFFECT)
            }
            POSITION_BOTTOM -> {
                audioManager.setRingerModeInternal(AudioManager.RINGER_MODE_NORMAL)
                vibrator.vibrate(MODE_NORMAL_EFFECT)
            }
        }
    }

    companion object {
        private const val TAG = "KeyHandler"

        // Slider key positions
        private const val POSITION_TOP = 1
        private const val POSITION_MIDDLE = 2
        private const val POSITION_BOTTOM = 3

        // Vibration effects
        private val MODE_NORMAL_EFFECT = VibrationEffect.get(VibrationEffect.EFFECT_HEAVY_CLICK)
        private val MODE_VIBRATION_EFFECT = VibrationEffect.get(VibrationEffect.EFFECT_DOUBLE_CLICK)
    }
}
