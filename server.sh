npx postgraphile \
    -c postgres://learn_postgtaphile:secret_password@localhost/pg_learn_dev \
    --schema learn \
    --append-plugins @graphile-contrib/pg-simplify-inflector,postgraphile-plugin-connection-filter \
    --enhance-graphiql \
    --allow-explain \
    --watch \
    --owner-connection postgres:///pg_learn_dev \
    --default-role learn_annonymous \

##this to run postgraphile locally
#the \ is continuation of the shell command
#postgres:/// -> the third / is to tell the command there 
# is no extra params to the path and its localhost-no-params
## how to append pluigin: --append-plugins @name_of_the_module
## watch -> this for not to restart server on any change