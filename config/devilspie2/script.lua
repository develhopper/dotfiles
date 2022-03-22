function split(str,delimiter)
		if delimiter == nil then
				delimiter = "%s"
		end

		local parts={}
		for part in string.gmatch(str, "([^"..delimiter.."]+)") do
				table.insert(parts, part)
		end

		return parts
end

function handle(line)
	if line:find("^#") or line == '' then
		return
	end

	commands = split(line)
	active = window_query(commands[1])

	if not active then
		return
	end
	
	for k, part in pairs(commands) do
		if k ~= 1 then
			execute(part)
		end
	end
end

function execute(part)
	command = split(part,":")
	if #command == 2 then
		return _G[command[1]](command[2])
	else
		return _G[command[1]]()
	end
end

function window_query(command)
	query_type = command:match("%b[]")
	query_str = split(command,"=")[2]

	if query_type == "[class]" then
		return get_window_class() == query_str
	elseif query_type == "[title]" then
		return get_window_name():find(query_str)
	elseif query_type == "[name]" then
		return get_application_name() == query_str
	end
end

function position(pos)
	pos = split(pos, "x")
	set_window_position(tonumber(pos[1]),tonumber(pos[2]))
end

function size(sizes)
	sizes = split(sizes,"x")
	x,y,w,h = get_window_geometry()
	
	set_window_geometry(x,y,tonumber(sizes[1]),tonumber(sizes[2]))
end

function workspace(number)
	set_window_workspace(tonumber(number))
end

for line in io.lines(".config/devilspie2/config") do
	handle(line)
end
