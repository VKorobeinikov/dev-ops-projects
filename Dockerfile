# So we will use Nginx image which creates a static and simple lightweight static web
FROM nginx:alpine

# Now we will take the index.html created previously in the project dir
# and slap it to the default Nginx web servicing location inside the container
COPY index.html /usr/share/nginx/html/
