/// @func _find(array, findScript)
/// @desc Iterates over an array, returning the first element that the given script returns true for.
/// @param {Array} array The array to iterate over
/// @param {Script} findScript The script to run on the given element
/// @returns {*} The first element that returns truthy from the script
function _find(argument0, argument1) {
	/*
	@example
	_find([0, 1, 2, 3], __equalsThree);
	// => 3
	*/


	var n = array_length_1d(argument0);

	for (var i = 0; i < n; i++) {
	    if (_run(argument1, argument0[@ i])) {
	        return argument0[@ i];
	    }
	}

	// Catch empty result
	return undefined;



}
