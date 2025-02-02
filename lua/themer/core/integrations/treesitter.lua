local hi = {}
local config = require("themer.config").options
function hi.get(cp)
    local groups = {
        punctuation = config.colors.punctuation or cp.subtle,
        comment = config.colors.comment or cp.subtle,
        hint = config.colors.hint or cp.magenta,
        info = config.colors.info or cp.green,
        warn = config.colors.warn or cp.yellow,
        error = config.colors.error or cp.red,
    }

    return {
        -- TSAnnotation = {},
        -- TSAttribute = {},
        TSBoolean = { fg = cp.orange },
        -- TSCharacter = {},
        TSComment = vim.tbl_deep_extend("force", { fg = groups.comment }, config.styles.comments),
        TSNote = { fg = cp.bg, bg = groups.info },
        TSWarning = { fg = cp.bg, bg = groups.warn },
        TSDanger = { fg = cp.bg, bg = groups.error },
        TSConditional = { fg = cp.red },
        TSConstBuiltin = { fg = cp.red },
        -- TSConstMacro = {},
        TSConstant = { fg = cp.orange },
        TSConstructor = { fg = cp.magenta },
        -- TSEmphasis = {},
        -- TSError = {},
        -- TSException = {},
        TSField = { fg = cp.red },
        -- TSFloat = {},
        TSFuncBuiltin = { fg = cp.blue },
        -- TSFuncMacro = {},
        TSFunction = { fg = cp.blue },
        TSInclude = { fg = cp.green },
        TSKeyword = { fg = cp.magenta },
        TSKeywordFunction = { fg = cp.magenta },
        TSKeywordOperator = { fg = cp.blue },
        TSLabel = { fg = cp.green },
        -- TSLiteral = {},
        -- TSMethod = {},
        -- TSNamespace = {},
        -- TSNone = {},
        -- TSNumber = {},
        TSOperator = { fg = cp.blue },
        TSParameter = vim.tbl_deep_extend("force", { fg = cp.yellow }, config.styles.parameters),
        -- TSParameterReference = {},
        TSProperty = vim.tbl_deep_extend("force", { fg = cp.red }, config.styles.fields),
        TSPunctBracket = { fg = groups.punctuation },
        TSPunctDelimiter = { fg = groups.punctuation },
        TSPunctSpecial = { fg = groups.punctuation },
        -- TSRepeat = {},
        -- TSStrike = {},
        TSString = { fg = cp.green },
        TSStringEscape = { fg = cp.blue },
        -- TSStringRegex = {},
        -- TSSymbol = {},
        TSTag = { fg = cp.green },
        TSTagDelimiter = { fg = cp.subtle },
        TSText = { fg = cp.fg },
        -- TSTitle = {},
        -- TSType = {},
        -- TSTypeBuiltin = {},
        TSURI = { fg = cp.blue, undercurl = true },
        -- TSUnderline = {},
        TSVariable = vim.tbl_deep_extend("force", { fg = cp.fg }, config.styles.variables),
        TSVariableBuiltin = { fg = cp.red },
    }
end

return hi
