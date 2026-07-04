package com.example.habittracker

import androidx.room.Dao
import androidx.room.Insert
import androidx.room.Query
import androidx.room.Update
import kotlinx.coroutines.flow.Flow

@Dao
interface HabitDao {
    @Query("SELECT * FROM habits ORDER BY id ASC")
    fun observeAll(): Flow<List<HabitEntity>>
    @Insert
    suspend fun insert(habit: HabitEntity): Unit
    @Update
    suspend fun update(habit: HabitEntity): Unit
}