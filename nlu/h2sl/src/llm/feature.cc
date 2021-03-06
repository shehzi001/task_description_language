/**
 * @file    feature.cc
 * @author  Thomas M. Howard (tmhoward@csail.mit.edu)
 *          Matthew R. Walter (mwalter@csail.mit.edu)
 * @version 1.0
 *
 * @section LICENSE
 *
 * This file is part of h2sl.
 *
 * Copyright (C) 2014 by the Massachusetts Institute of Technology
 *
 * This program is free software; you can redistribute it and/or modify
 * it under the terms of the GNU General Public License as published by
 * the Free Software Foundation; either version 2 of the License, or (at
 * your option) any later version.
 * 
 * This program is distributed in the hope that it will be useful, but
 * WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
 * General Public License for more details.
 * 
 * You should have received a copy of the GNU General Public License
 * along with this program; if not, see
 * <http://www.gnu.org/licenses/gpl-2.0.html> or write to the Free
 * Software Foundation, Inc., 51 Franklin Street, Fifth Floor, Boston, MA
 * 02110-1301, USA.
 *
 * @section DESCRIPTION
 *
 * The implementation of a class used to describe a feature
 */

#include <h2sl/feature.h>

using namespace std;
using namespace h2sl;

Feature::
Feature( const bool& invert ) : _invert( invert ) {

}

Feature::
~Feature() {

}

Feature::
Feature( const Feature& other ) : _invert( other._invert ){

}

Feature&
Feature::
operator=( const Feature& other ) {
  _invert = other._invert;
  return (*this);
}

namespace h2sl {
  ostream&
  operator<<( ostream& out,
              const Feature& other ) {
    return out;
  }

}
