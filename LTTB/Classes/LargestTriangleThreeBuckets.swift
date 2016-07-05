//
//  LargestTriangleThreeBuckets.swift
//  LargestTriangleThreeBuckets
//
//  Original version by Sveinn Steinarsson
//  Created by Guillaume Béal on 01-07-05.
//  Copyright © 2016 Guillaume Béal. All rights reserved.
//

import Foundation

/**
Largest Triangle Three Buckets
*/
public class LTTB{
	
	public init(){
	
	}
	
	/**
	Downsample an array of [(x: Double,y: Double)] and return the same array with n elements (threshold)
	
	- parameter dataSet: [(x: Double,y: Double)] Timeserie of Doubles
	- parameter threshold: Int Number of element to return
	
	- returns: [(x: Double,y: Double)]  Downsampled.
	*/
	public func downSample(dataSet: [(x: Double,y: Double)] = [],threshold: Int! = 1000 ) -> [(x: Double, y: Double)] {
		
		let data_length = dataSet.count
		if (threshold >= data_length || threshold == 0) {
			return dataSet // Nothing to do
		}
		
		var sampled: [(x: Double,y: Double)] = []
		var sampled_index = 0
		
		// Bucket size. Leave room for start and end data points
		let every = (data_length - 2) / (threshold - 2);
		
		var a = 0  // Initially a is the first point in the triangle
		var max_area_point: (Double,Double) = (0,0)
		var max_area: Double = 0
		var area: Double = 0
		var next_a: Int = 0
		var avg_x: Double = 0
		var avg_y: Double = 0
		var avg_range_start: Int = 0
		var	avg_range_end: Int = 0
		var avg_range_length: Int = 0
		var range_offs: Int = 0
		var range_to: Int = 0
		var point_a_x: Double = 0
		var point_a_y: Double = 0
		
		sampled.append(dataSet[ a ]) // Always add the first point
		
		for i in 0..<(threshold - 2){
			
			// Calculate point average for next bucket (containing c)
			avg_x = 0
			avg_y = 0
			avg_range_start  = Int( floor( Double( ( i + 1 ) * every) ) + 1)
			avg_range_end    = Int( floor( Double( ( i + 2 ) * every ) ) + 1)
			avg_range_end = avg_range_end < data_length ? avg_range_end : data_length;
			
			avg_range_length = avg_range_end - avg_range_start
			
			for avg_range_start in avg_range_start..<avg_range_end{
				avg_x += dataSet[ avg_range_start ].0
				avg_y += dataSet[ avg_range_start ].1
			}
			
			avg_x /= Double(avg_range_length)
			avg_y /= Double(avg_range_length)
			
			// Get the range for this bucket
			range_offs = Int(floor( Double((i + 0) * every) ) + 1)
			range_to   = Int(floor( Double((i + 1) * every )) + 1)
			
			// Point a
			point_a_x = dataSet[ a ].0
			point_a_y = dataSet[ a ].1
			
			max_area = -1
			area = -1
			
			for range_offs in range_offs..<range_to{
				
				// Calculate triangle area over three buckets
				area = abs( ( point_a_x - avg_x ) * ( dataSet[ range_offs ].1  - point_a_y ) -
					( point_a_x - dataSet[ range_offs ].0 ) * ( avg_y - point_a_y )
				)
				
				area *= 0.5
				if ( area > max_area ) {
					max_area = area;
					max_area_point = dataSet[ range_offs ]
					next_a = range_offs // Next a is this b
				}
			}
			
			sampled.insert(max_area_point, atIndex: sampled_index)
			sampled_index += 1 // Swift 3.0 ready
			a = next_a; // This a is the next a (chosen b)
		}
		
		sampled.insert(dataSet[ data_length - 1 ], atIndex: sampled_index) // Always add last
		sampled_index += 1
		
		return sampled;
	}
	
	
	
}