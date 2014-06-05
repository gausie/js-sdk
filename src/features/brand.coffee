	class Brand

		constructor: (@m) ->

		Get: (id, callback = null) ->

			data = @m.Request 'brand/'+id, 'GET', null, callback

			if callback != null
				return data.result

		Find: (terms, callback = null) ->

			terms = @.Merge terms {@offset, @limit}
			data  = @m.Request 'brand', 'GET', terms, callback

			if callback != null
				return data.result

		List: (offset = 0, limit = 10, callback = null) ->

			data  = @m.Request 'brands', 'GET', {@offset, @limit}, callback

			if callback != null
				return data.result

		Fields: (id = 0, callback = null) ->

			uri  = 'brand/'+ if id != 0 then id+'/fields' else 'fields'
			data = @m.Requst uri, 'GET', null, callback

			if callback != null
				return data.result