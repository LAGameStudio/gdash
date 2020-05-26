/// @func _index_of(collection, value)
/// @desc Returns the index of the given item in the given array, or -1
/// @param {Array|DS_List} collection The collection to search
/// @param {*} value The value to look for
/// @returns {Real} The index of the value, or -1
function _index_of(argument0, argument1) {

	var collection = argument0;
	var search = argument1;

	// Search lists
	if (is_real(collection)) {
	    return ds_list_find_index(collection, search);
	}

	// Search arrays
	var n = array_length_1d(collection);

	for (var i = 0; i < n; i++) {
	    if (_is_equal(collection[@ i], search)) {
	        return i;
	    }
	}

	return -1;




}
