return {
	"kazhala/close-buffers.nvim",
	config = function ()
		local close_buffers = require("close_buffers")

		close_buffers.setup({
			preserve_window_layout = { "this" },
			next_buffer_cmd = function (windows)
				require("bufferline").cycle(1)
				local buffer = vim.api.nvim_get_current_buf()

				for _, window in ipairs(windows) do
					vim.api.nvim_win_set_buf(window, buffer)
				end
			end
		})

	end
}
