function onCreatePost() 

	value1 = 'seek_notes'
	value2 = ''
	name = 'noteskinchangeBF'

	if value1 == '' then
	-- do nothing lol
	else
		for i = 0, getProperty('playerStrums.length')-1 do
		setPropertyFromGroup('playerStrums', i, 'texture', value1);
		end
		for i = 0, getProperty('unspawnNotes.length')-1 do
			if getPropertyFromGroup('unspawnNotes', i, 'mustPress') then
			setPropertyFromGroup('unspawnNotes', i, 'texture', value1);
			end
		end
	end
	if value2 == '' then
	-- do nothing lol
	else
		for i = 0, getProperty('unspawnNotes.length')-1 do
			if getPropertyFromGroup('unspawnNotes', i, 'mustPress') then
			setPropertyFromGroup('unspawnNotes', i, 'noteSplashTexture', value2);
			end
		end
	end
end