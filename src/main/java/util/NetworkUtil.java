package util;


import java.net.InetAddress;
import java.net.UnknownHostException;

/**
 * Utility class for getting localhost address.
 * <p/>
 * Created by sandra.kriemann on 28.11.2014.
 */
public class NetworkUtil {
    public static String getMyIPAddress() {
        try {
            return InetAddress.getLocalHost().getHostAddress();
        } catch (UnknownHostException e) {
            e.printStackTrace();
            return null;
        }
    }
}
