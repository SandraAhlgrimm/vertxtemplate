vertxtemplate
=============

Developing projects with vertx is real fun!



Some people might have problems with the undeployment of workerverticles.

This project gives you a frame including the access via Routematcher and it deploys and undeploys Workerverticles(and also Verticles).

To start the project you can use the .bat file after the build.
Deploy and undeploy the Workerverticle with http-requests.

    yourIP:8091/deploy/start
    or
    yourIP:8091/deploy/stop
  
  
The Http-Server gets created after this single line:

    vertx.createHttpServer().requestHandler(routeMatcher).listen(8091, NetworkUtil.getMyIPAddress());



Just clone or download it and have fun with vertx (;
