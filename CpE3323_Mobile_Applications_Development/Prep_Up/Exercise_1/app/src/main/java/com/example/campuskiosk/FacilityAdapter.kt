package com.example.campuskiosk

import android.graphics.Color
import android.view.LayoutInflater
import android.view.View
import android.view.ViewGroup
import android.widget.TextView
import androidx.recyclerview.widget.RecyclerView

class FacilityAdapter(
    private val items: List<Facility>,
    private val onClick: (Facility) -> Unit
) : RecyclerView.Adapter<FacilityAdapter.VH>() {
    class VH(view: View) : RecyclerView.ViewHolder(view) {
        val name: TextView = view.findViewById(R.id.nameText)
        val building: TextView = view.findViewById(R.id.buildingText)
        val dot: View = view.findViewById(R.id.statusDot)
    }
    override fun onCreateViewHolder(parent: ViewGroup, position: Int): VH {
        val view = LayoutInflater.from(parent.context)
            .inflate(R.layout.item_facility, parent, false)
        return VH(view)
    }
    override fun getItemCount() = items.size
    override fun onBindViewHolder(holder: VH, position: Int) {
        val item = items[position]
        holder.name.text = item.name
        holder.building.text = item.building
        holder.dot.setBackgroundColor(
            if (item.isOpenNow) Color.parseColor("#2E7D32")
            else Color.parseColor("#C62828")
        )
        holder.itemView.setOnClickListener { onClick(item) }
    }
}
