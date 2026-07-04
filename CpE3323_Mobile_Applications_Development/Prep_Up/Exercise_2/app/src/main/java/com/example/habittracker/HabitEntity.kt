package com.example.habittracker

import androidx.room.Entity
import androidx.room.PrimaryKey

@Entity(tableName = "habits")

data class HabitEntity (
    @PrimaryKey(autoGenerate = true) val id: Int = 0,
    val name: String = "",
    val streak: Int = 0,
    val isCheckedToday: Boolean = false
)