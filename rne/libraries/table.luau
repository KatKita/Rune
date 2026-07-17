return function(rune)
	rune.RegisterLibrary("table", {
		clear = table.clear,
		clone = table.clone,
		concat = table.concat,
		create = table.create,
		find = table.find,
		freeze = table.freeze,
		insert = table.insert,
		isfrozen = table.isfrozen,
		move = table.move,
		pack = table.pack,
		remove = table.remove,
		sort = table.sort,
		unpack = table.unpack,

		length = function(t)
			return #t
		end,

		contains = function(t, value)
			return table.find(t, value) ~= nil
		end,

		keys = function(t)
			local out = {}
			for k in pairs(t) do
				out[#out + 1] = k
			end
			return out
		end,

		values = function(t)
			local out = {}
			for _, v in pairs(t) do
				out[#out + 1] = v
			end
			return out
		end,

		reverse = function(t)
			local out = {}
			for i = #t, 1, -1 do
				out[#out + 1] = t[i]
			end
			return out
		end,
	})
end
