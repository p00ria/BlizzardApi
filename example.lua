htmlEntities = require('src/htmlEntities')

function test_module()
	print('init_test')
	local text = [[&amp;&#88;&#65;&#77;&#80;&#76;&#69; text
	&it;&equiv;&equiv;&equiv;&equiv;&equiv;&equiv;&equiv;&equiv;&equiv;&equiv;&gt;]]

	local dec = htmlEntities.decode(text)
	print('Version'..htmlEntities.version)
	print('Input: ' .. text .. '\n\nOutput: ' .. dec)

	repeat
		io.write('\nYou want to do a test (y/n) ')
		io.flush()
		res = io.read()
	until res == 'y' or res == 'n'

	function test()
		print('\nPut the text')
		io.write('> ')
		io.flush()
		local input = io.read()
		print('\nInput: ' .. input .. '\n\nOutput: ' .. htmlEntities.decode(input))
		test()
	end
	if res == 'y' then test() end
end

test_module()
