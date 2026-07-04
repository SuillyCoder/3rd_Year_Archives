package com.example.campuskiosk

import android.os.Bundle
import android.view.LayoutInflater
import android.view.View
import android.view.ViewGroup
import androidx.fragment.app.Fragment
import androidx.navigation.findNavController
import androidx.recyclerview.widget.LinearLayoutManager
import androidx.recyclerview.widget.RecyclerView

class FacilityListFragment : Fragment(R.layout.fragment_facility_list) {

    override fun onViewCreated(view: View, savedInstanceState: Bundle?) {
        super.onViewCreated(view, savedInstanceState)

        val recyclerView = view.findViewById<RecyclerView>(R.id.recyclerView)
        recyclerView.layoutManager = LinearLayoutManager(requireContext())
        recyclerView.adapter = FacilityAdapter(sampleFacilities) { facility ->
            val action = FacilityListFragmentDirections
                .actionListToDetail(facility.id)
            view.findNavController().navigate(action)
        }
    }
}