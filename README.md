# You can now say bye bye to CORS errors!
We sometime take on projects where we don't have controll over the back-end and have to wait for another team to fix the CORS issues before we can work on the front-end. This is a simple proxy that we made whenever we get in this situation in order to be able to work without getting blocked by CORS errors.

## How to use
Simply put update the proxyTable object in index.js and the proxy should work.
(You will probably have to add rules for each of the url if you plan on deploying to Kubernetes)

## How to run
Install the dependecies
``` npm install ```
or
``` yarn ```

Run the proxy
``` node index.js ```