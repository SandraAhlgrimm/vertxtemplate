package verticles;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.vertx.java.platform.Verticle;

/**
 * Created by sandra.kriemann on 28.11.2014.
 */
public class StarterVerticle extends Verticle {
    private static final Logger LOGGER = LoggerFactory.getLogger(StarterVerticle.class);

    @Override
    public void start() {

        LOGGER.info("Deploying Verticles: ");

        LOGGER.info(" ---> " + HttpControllerVerticle.class.getName());
        container.deployWorkerVerticle(HttpControllerVerticle.class.getName(), 1);  //never change this number!!!

    }
}
