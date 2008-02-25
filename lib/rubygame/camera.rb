#--
#	Rubygame -- Ruby code and bindings to SDL to facilitate game creation
#	Copyright (C) 2004-2008  John Croisant
#
#	This library is free software; you can redistribute it and/or
#	modify it under the terms of the GNU Lesser General Public
#	License as published by the Free Software Foundation; either
#	version 2.1 of the License, or (at your option) any later version.
#
#	This library is distributed in the hope that it will be useful,
#	but WITHOUT ANY WARRANTY; without even the implied warranty of
#	MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
#	Lesser General Public License for more details.
#
#	You should have received a copy of the GNU Lesser General Public
#	License along with this library; if not, write to the Free Software
#	Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307  USA
#++

module Rubygame

	class Camera

		attr_reader :mode
		attr_accessor :position, :rotation, :zoom
		
		def initialize( mode, &block )
			@mode = mode
			yield self if block_given?
		end

		
		class RenderMode < Struct(:rect, :quality); end
		
		class RenderModeSDL < RenderMode
			attr_accessor :surface
			
			def initialize(surface, *args)
				@surface = surface
				super(*args)
			end
		end
		
	end

end
