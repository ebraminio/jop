/*
  This file is part of JOP, the Java Optimized Processor
    see <http://www.jopdesign.com/>

  Copyright (C) 2010, Benedikt Huber (benedikt@vmars.tuwien.ac.at)

  This program is free software: you can redistribute it and/or modify
  it under the terms of the GNU General Public License as published by
  the Free Software Foundation, either version 3 of the License, or
  (at your option) any later version.

  This program is distributed in the hope that it will be useful,
  but WITHOUT ANY WARRANTY; without even the implied warranty of
  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
  GNU General Public License for more details.

  You should have received a copy of the GNU General Public License
  along with this program.  If not, see <http://www.gnu.org/licenses/>.
*/

package com.jopdesign.wcet.annotations;

/**
 * Purpose: Instances represent non-symbolic, loop bounds relative to the
 *          execution frequency of the edges entering the loop.
 *
 * @author Benedikt Huber (benedikt@vmars.tuwien.ac.at)
 *
 */
public class LoopBound {
	private static final long serialVersionUID = 1L;
	private int lowerBound;
	private int upperBound;
	public LoopBound(Integer lb, Integer ub) {
		lowerBound = lb;
		upperBound = ub;
	}
	public int getLowerBound()  { return lowerBound; }
	public int getUpperBound() { return upperBound; }
	public static LoopBound boundedAbove(int ub) {
		return new LoopBound(0,ub);
	}
	public LoopBound improveUpperBound(int bound) {
		return new LoopBound(lowerBound, Math.min(upperBound,bound));
	}
}