local config = {
  cmd = { vim.fn.expand '~/.local/share/nvim/mason/bin/jdtls' },
  root_dir = vim.fs.dirname(vim.fs.find({ 'gradlew', '.git', 'mvnw' }, { upward = true })[1]),
}

config.settings = {
  java = {
    project = {
      referencedLibraries = {
        '~/Code/java/hello/algs4.jar',
      },
    },
  },
}

require('jdtls').start_or_attach(config)
