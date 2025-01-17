local code_link = require("code-link")
local clipboard = require("code-link.clipboard")

vim.api.nvim_create_user_command("CodeLink", function(args)
	local branch_name = args.args
	local link = code_link.link()
	local generated_link = link:create_link(branch_name)

	clipboard.copy_or(generated_link)

	vim.notify(generated_link)
end, { nargs = "*" })
