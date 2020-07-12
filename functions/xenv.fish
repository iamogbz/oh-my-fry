function xenv --description "Load environment variables from .env file into current shell"
    export (cat .env)
end
