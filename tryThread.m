## Copyright (C) 2017 abu dzar
## 
## This program is free software; you can redistribute it and/or modify it
## under the terms of the GNU General Public License as published by
## the Free Software Foundation; either version 3 of the License, or
## (at your option) any later version.
## 
## This program is distributed in the hope that it will be useful,
## but WITHOUT ANY WARRANTY; without even the implied warranty of
## MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
## GNU General Public License for more details.
## 
## You should have received a copy of the GNU General Public License
## along with this program.  If not, see <http://www.gnu.org/licenses/>.

## -*- texinfo -*- 
## @deftypefn {} {@var{retval} =} tryThread (@var{input1}, @var{input2})
##
## @seealso{}
## @end deftypefn

## Author: abu dzar <abudzar@helium>
## Created: 2017-10-01

%function [retval] = tryThread (input1, input2)

tic
bigMatrixA = rand(3000000,80);
bigMatrixB = rand(80,30);
bigMatrixC = bigMatrixA * bigMatrixB;
toc
disp("done");


%endfunction
