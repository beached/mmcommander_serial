#pragma once

namespace daw {
	template<typename T>
	T get_mask( size_t const & right_zero_bits ) {
		T result = 0;
		result |= (1 << right_zero_bits);     // set bit
		result |= (result - 1);
		return result;
	}
        

}
