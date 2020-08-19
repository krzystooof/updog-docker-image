if [ "$SSL_MODE" = true ] ; then
    updog -d /input --password $PASSWORD --ssl
else 
    updog -d /input --password $PASSWORD
fi