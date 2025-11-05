package org.telegram.messenger;

import android.content.Intent;
import android.location.Address;
import android.location.Geocoder;
import android.location.Location;
import android.location.LocationListener;
import android.location.LocationManager;
import android.os.Build;
import android.os.Bundle;
import android.os.SystemClock;
import android.text.TextUtils;
import android.util.SparseIntArray;
import androidx.collection.LongSparseArray;
import androidx.core.util.Consumer;
import com.huawei.hms.maps.model.BitmapDescriptorFactory;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Locale;
import org.telegram.SQLite.SQLiteCursor;
import org.telegram.SQLite.SQLitePreparedStatement;
import org.telegram.messenger.ILocationServiceProvider;
import org.telegram.messenger.NotificationCenter;
import org.telegram.tgnet.NativeByteBuffer;
import org.telegram.tgnet.RequestDelegate;
import org.telegram.tgnet.TLObject;
import org.telegram.tgnet.TLRPC;
import org.telegram.tgnet.tl.TL_stories$TL_geoPointAddress;
import org.telegram.ui.Components.PermissionRequest;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes3.dex */
public class LocationController extends BaseController implements NotificationCenter.NotificationCenterDelegate, ILocationServiceProvider.IAPIConnectionCallbacks, ILocationServiceProvider.IAPIOnConnectionFailedListener {
    private static final int BACKGROUD_UPDATE_TIME = 30000;
    private static final long FASTEST_INTERVAL = 1000;
    private static final int FOREGROUND_UPDATE_TIME = 20000;
    private static final int LOCATION_ACQUIRE_TIME = 10000;
    private static final int PLAY_SERVICES_RESOLUTION_REQUEST = 9000;
    private static final int SEND_NEW_LOCATION_TIME = 2000;
    public static final int TYPE_BIZ = 1;
    public static final int TYPE_STORY = 2;
    private static final long UPDATE_INTERVAL = 1000;
    private static final int WATCH_LOCATION_TIMEOUT = 65000;
    private ILocationServiceProvider.IMapApiClient apiClient;
    private LongSparseArray cacheRequests;
    private FusedLocationListener fusedLocationListener;
    private GpsLocationListener gpsLocationListener;
    private Location lastKnownLocation;
    private boolean lastLocationByMaps;
    private long lastLocationSendTime;
    private long lastLocationStartTime;
    private LongSparseArray lastReadLocationTime;
    private long locationEndWatchTime;
    private LocationManager locationManager;
    private ILocationServiceProvider.ILocationRequest locationRequest;
    private boolean locationSentSinceLastMapUpdate;
    public LongSparseArray locationsCache;
    private GpsLocationListener networkLocationListener;
    private GpsLocationListener passiveLocationListener;
    private SparseIntArray requests;
    private Boolean servicesAvailable;
    private ArrayList<SharingLocationInfo> sharingLocations;
    private LongSparseArray sharingLocationsMap;
    private LongSparseArray sharingLocationsMapUI;
    public ArrayList<SharingLocationInfo> sharingLocationsUI;
    private boolean started;
    private boolean wasConnectedToPlayServices;
    private static volatile LocationController[] Instance = new LocationController[4];
    public static String[] unnamedRoads = {"Unnamed Road", "Вulicya bez nazvi", "Нeizvestnaya doroga", "İsimsiz Yol", "Ceļš bez nosaukuma", "Kelias be pavadinimo", "Droga bez nazwy", "Cesta bez názvu", "Silnice bez názvu", "Drum fără nume", "Route sans nom", "Vía sin nombre", "Estrada sem nome", "Οdos xoris onomasia", "Rrugë pa emër", "Пat bez ime", "Нeimenovani put", "Strada senza nome", "Straße ohne Straßennamen"};
    private static HashMap<LocationFetchCallback, Runnable> callbacks = new HashMap<>();

    private class FusedLocationListener implements ILocationServiceProvider.ILocationListener {
        private FusedLocationListener() {
        }

        @Override // org.telegram.messenger.ILocationServiceProvider.ILocationListener
        public void onLocationChanged(Location location) {
            if (location == null) {
                return;
            }
            LocationController.this.setLastKnownLocation(location);
        }
    }

    private class GpsLocationListener implements LocationListener {
        private GpsLocationListener() {
        }

        @Override // android.location.LocationListener
        public void onLocationChanged(Location location) {
            if (location == null) {
                return;
            }
            if (LocationController.this.lastKnownLocation == null || !(this == LocationController.this.networkLocationListener || this == LocationController.this.passiveLocationListener)) {
                LocationController.this.setLastKnownLocation(location);
            } else {
                if (LocationController.this.started || location.distanceTo(LocationController.this.lastKnownLocation) <= 20.0f) {
                    return;
                }
                LocationController.this.setLastKnownLocation(location);
                LocationController.this.lastLocationSendTime = SystemClock.elapsedRealtime() - 25000;
            }
        }

        @Override // android.location.LocationListener
        public void onProviderDisabled(String str) {
        }

        @Override // android.location.LocationListener
        public void onProviderEnabled(String str) {
        }

        @Override // android.location.LocationListener
        public void onStatusChanged(String str, int i, Bundle bundle) {
        }
    }

    public interface LocationFetchCallback {
        void onLocationAddressAvailable(String str, String str2, TLRPC.TL_messageMediaVenue tL_messageMediaVenue, TLRPC.TL_messageMediaVenue tL_messageMediaVenue2, Location location);
    }

    public static class SharingLocationInfo {
        public int account;
        public long did;
        public int lastSentProximityMeters;
        public MessageObject messageObject;
        public int mid;
        public int period;
        public int proximityMeters;
        public int stopTime;
    }

    public LocationController(int i) {
        super(i);
        this.sharingLocationsMap = new LongSparseArray();
        this.sharingLocations = new ArrayList<>();
        this.locationsCache = new LongSparseArray();
        this.lastReadLocationTime = new LongSparseArray();
        this.gpsLocationListener = new GpsLocationListener();
        this.networkLocationListener = new GpsLocationListener();
        this.passiveLocationListener = new GpsLocationListener();
        this.fusedLocationListener = new FusedLocationListener();
        this.locationSentSinceLastMapUpdate = true;
        this.requests = new SparseIntArray();
        this.cacheRequests = new LongSparseArray();
        this.sharingLocationsUI = new ArrayList<>();
        this.sharingLocationsMapUI = new LongSparseArray();
        this.locationManager = (LocationManager) ApplicationLoader.applicationContext.getSystemService("location");
        this.apiClient = ApplicationLoader.getLocationServiceProvider().onCreateLocationServicesAPI(ApplicationLoader.applicationContext, this, this);
        ILocationServiceProvider.ILocationRequest iLocationRequestOnCreateLocationRequest = ApplicationLoader.getLocationServiceProvider().onCreateLocationRequest();
        this.locationRequest = iLocationRequestOnCreateLocationRequest;
        iLocationRequestOnCreateLocationRequest.setPriority(0);
        this.locationRequest.setInterval(1000L);
        this.locationRequest.setFastestInterval(1000L);
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.messenger.LocationController$$ExternalSyntheticLambda20
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$new$0();
            }
        });
        loadSharingLocations();
    }

    /* JADX WARN: Removed duplicated region for block: B:33:0x009b  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private void broadcastLastKnownLocation(boolean z) {
        TLRPC.GeoPoint geoPoint;
        if (this.lastKnownLocation == null) {
            return;
        }
        if (this.requests.size() != 0) {
            if (z) {
                for (int i = 0; i < this.requests.size(); i++) {
                    getConnectionsManager().cancelRequest(this.requests.keyAt(i), false);
                }
            }
            this.requests.clear();
        }
        if (!this.sharingLocations.isEmpty()) {
            int currentTime = getConnectionsManager().getCurrentTime();
            float[] fArr = new float[1];
            for (int i2 = 0; i2 < this.sharingLocations.size(); i2++) {
                final SharingLocationInfo sharingLocationInfo = this.sharingLocations.get(i2);
                TLRPC.Message message = sharingLocationInfo.messageObject.messageOwner;
                TLRPC.MessageMedia messageMedia = message.media;
                if (messageMedia == null || (geoPoint = messageMedia.geo) == null || sharingLocationInfo.lastSentProximityMeters != sharingLocationInfo.proximityMeters) {
                    final TLRPC.TL_messages_editMessage tL_messages_editMessage = new TLRPC.TL_messages_editMessage();
                    tL_messages_editMessage.peer = getMessagesController().getInputPeer(sharingLocationInfo.did);
                    tL_messages_editMessage.id = sharingLocationInfo.mid;
                    tL_messages_editMessage.flags |= LiteMode.FLAG_ANIMATED_EMOJI_KEYBOARD_NOT_PREMIUM;
                    TLRPC.TL_inputMediaGeoLive tL_inputMediaGeoLive = new TLRPC.TL_inputMediaGeoLive();
                    tL_messages_editMessage.media = tL_inputMediaGeoLive;
                    tL_inputMediaGeoLive.stopped = false;
                    tL_inputMediaGeoLive.geo_point = new TLRPC.TL_inputGeoPoint();
                    tL_messages_editMessage.media.geo_point.lat = AndroidUtilities.fixLocationCoord(this.lastKnownLocation.getLatitude());
                    tL_messages_editMessage.media.geo_point._long = AndroidUtilities.fixLocationCoord(this.lastKnownLocation.getLongitude());
                    tL_messages_editMessage.media.geo_point.accuracy_radius = (int) this.lastKnownLocation.getAccuracy();
                    TLRPC.InputMedia inputMedia = tL_messages_editMessage.media;
                    TLRPC.InputGeoPoint inputGeoPoint = inputMedia.geo_point;
                    if (inputGeoPoint.accuracy_radius != 0) {
                        inputGeoPoint.flags |= 1;
                    }
                    int i3 = sharingLocationInfo.lastSentProximityMeters;
                    int i4 = sharingLocationInfo.proximityMeters;
                    if (i3 != i4) {
                        inputMedia.proximity_notification_radius = i4;
                        inputMedia.flags |= 8;
                    }
                    inputMedia.heading = getHeading(this.lastKnownLocation);
                    tL_messages_editMessage.media.flags |= 4;
                    int iSendRequest = getConnectionsManager().sendRequest(tL_messages_editMessage, new RequestDelegate() { // from class: org.telegram.messenger.LocationController$$ExternalSyntheticLambda22
                        @Override // org.telegram.tgnet.RequestDelegate
                        public final void run(TLObject tLObject, TLRPC.TL_error tL_error) {
                            this.f$0.lambda$broadcastLastKnownLocation$7(sharingLocationInfo, iArr, tL_messages_editMessage, tLObject, tL_error);
                        }
                    });
                    final int[] iArr = {iSendRequest};
                    this.requests.put(iSendRequest, 0);
                } else {
                    int i5 = message.edit_date;
                    if (i5 == 0) {
                        i5 = message.date;
                    }
                    if (Math.abs(currentTime - i5) < 10) {
                        Location.distanceBetween(geoPoint.lat, geoPoint._long, this.lastKnownLocation.getLatitude(), this.lastKnownLocation.getLongitude(), fArr);
                        if (fArr[0] < 1.0f) {
                        }
                    }
                }
            }
        }
        getConnectionsManager().resumeNetworkMaybe();
        if (shouldStopGps()) {
            stop(false);
        }
    }

    private boolean checkServices() {
        if (this.servicesAvailable == null) {
            this.servicesAvailable = Boolean.valueOf(ApplicationLoader.getLocationServiceProvider().checkServices());
        }
        return this.servicesAvailable.booleanValue();
    }

    public static String countryCodeToEmoji(String str) {
        if (str == null) {
            return null;
        }
        String upperCase = str.toUpperCase();
        int iCodePointCount = upperCase.codePointCount(0, upperCase.length());
        if (iCodePointCount > 2) {
            return null;
        }
        StringBuilder sb = new StringBuilder();
        for (int i = 0; i < iCodePointCount; i++) {
            sb.append(Character.toChars(Character.codePointAt(upperCase, i) - (-127397)));
        }
        return sb.toString();
    }

    public static String detectOcean(double d, double d2) {
        if (d2 > 65.0d) {
            return "Arctic Ocean";
        }
        if (d > -88.0d && d < 40.0d && d2 > 0.0d) {
            return "Atlantic Ocean";
        }
        if (d > -60.0d && d < 20.0d && d2 <= 0.0d) {
            return "Atlantic Ocean";
        }
        if (d2 <= 30.0d && d >= 20.0d && d < 150.0d) {
            return "Indian Ocean";
        }
        if ((d > 106.0d || d < -60.0d) && d2 > 0.0d) {
            return "Pacific Ocean";
        }
        if ((d > 150.0d || d < -60.0d) && d2 <= 0.0d) {
            return "Pacific Ocean";
        }
        return null;
    }

    public static void fetchLocationAddress(final Location location, final int i, final LocationFetchCallback locationFetchCallback) {
        Locale systemDefaultLocale;
        if (locationFetchCallback == null) {
            return;
        }
        Runnable runnable = callbacks.get(locationFetchCallback);
        if (runnable != null) {
            Utilities.globalQueue.cancelRunnable(runnable);
            callbacks.remove(locationFetchCallback);
        }
        if (location == null) {
            locationFetchCallback.onLocationAddressAvailable(null, null, null, null, null);
            return;
        }
        try {
            systemDefaultLocale = LocaleController.getInstance().getCurrentLocale();
        } catch (Exception unused) {
            systemDefaultLocale = LocaleController.getInstance().getSystemDefaultLocale();
        }
        final Locale locale = systemDefaultLocale;
        final Locale locale2 = locale.getLanguage().contains("en") ? locale : Locale.US;
        DispatchQueue dispatchQueue = Utilities.globalQueue;
        Runnable runnable2 = new Runnable() { // from class: org.telegram.messenger.LocationController$$ExternalSyntheticLambda18
            @Override // java.lang.Runnable
            public final void run() throws IOException {
                LocationController.lambda$fetchLocationAddress$29(locale, location, i, locale2, locationFetchCallback);
            }
        };
        dispatchQueue.postRunnable(runnable2, 300L);
        callbacks.put(locationFetchCallback, runnable2);
    }

    public static void fetchLocationAddress(Location location, LocationFetchCallback locationFetchCallback) {
        fetchLocationAddress(location, 0, locationFetchCallback);
    }

    public static int getHeading(Location location) {
        float bearing = location.getBearing();
        return (bearing <= BitmapDescriptorFactory.HUE_RED || bearing >= 1.0f) ? (int) bearing : bearing < 0.5f ? 360 : 1;
    }

    public static LocationController getInstance(int i) {
        LocationController locationController = Instance[i];
        if (locationController == null) {
            synchronized (LocationController.class) {
                try {
                    locationController = Instance[i];
                    if (locationController == null) {
                        LocationController[] locationControllerArr = Instance;
                        LocationController locationController2 = new LocationController(i);
                        locationControllerArr[i] = locationController2;
                        locationController = locationController2;
                    }
                } finally {
                }
            }
        }
        return locationController;
    }

    public static int getLocationsCount() {
        int size = 0;
        for (int i = 0; i < 4; i++) {
            size += getInstance(i).sharingLocationsUI.size();
        }
        return size;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$addSharingLocation$11(SharingLocationInfo sharingLocationInfo, SharingLocationInfo sharingLocationInfo2) {
        if (sharingLocationInfo != null) {
            this.sharingLocationsUI.remove(sharingLocationInfo);
        }
        this.sharingLocationsUI.add(sharingLocationInfo2);
        this.sharingLocationsMapUI.put(sharingLocationInfo2.did, sharingLocationInfo2);
        startService();
        NotificationCenter.getGlobalInstance().lambda$postNotificationNameOnUIThread$1(NotificationCenter.liveLocationsChanged, new Object[0]);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$broadcastLastKnownLocation$6(SharingLocationInfo sharingLocationInfo) {
        this.sharingLocationsUI.remove(sharingLocationInfo);
        this.sharingLocationsMapUI.remove(sharingLocationInfo.did);
        if (this.sharingLocationsUI.isEmpty()) {
            stopService();
        }
        NotificationCenter.getGlobalInstance().lambda$postNotificationNameOnUIThread$1(NotificationCenter.liveLocationsChanged, new Object[0]);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$broadcastLastKnownLocation$7(final SharingLocationInfo sharingLocationInfo, int[] iArr, TLRPC.TL_messages_editMessage tL_messages_editMessage, TLObject tLObject, TLRPC.TL_error tL_error) {
        MessageObject messageObject;
        TLRPC.Message message;
        if (tL_error != null) {
            if (tL_error.text.equals("MESSAGE_ID_INVALID")) {
                this.sharingLocations.remove(sharingLocationInfo);
                this.sharingLocationsMap.remove(sharingLocationInfo.did);
                saveSharingLocation(sharingLocationInfo, 1);
                this.requests.delete(iArr[0]);
                AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.messenger.LocationController$$ExternalSyntheticLambda12
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f$0.lambda$broadcastLastKnownLocation$6(sharingLocationInfo);
                    }
                });
                return;
            }
            return;
        }
        if ((tL_messages_editMessage.flags & 8) != 0) {
            sharingLocationInfo.lastSentProximityMeters = tL_messages_editMessage.media.proximity_notification_radius;
        }
        TLRPC.Updates updates = (TLRPC.Updates) tLObject;
        boolean z = false;
        for (int i = 0; i < updates.updates.size(); i++) {
            TLRPC.Update update = updates.updates.get(i);
            if (update instanceof TLRPC.TL_updateEditMessage) {
                messageObject = sharingLocationInfo.messageObject;
                message = ((TLRPC.TL_updateEditMessage) update).message;
            } else if (update instanceof TLRPC.TL_updateEditChannelMessage) {
                messageObject = sharingLocationInfo.messageObject;
                message = ((TLRPC.TL_updateEditChannelMessage) update).message;
            }
            messageObject.messageOwner = message;
            z = true;
        }
        if (z) {
            saveSharingLocation(sharingLocationInfo, 0);
        }
        getMessagesController().processUpdates(updates, false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$cleanup$9() {
        this.locationEndWatchTime = 0L;
        this.requests.clear();
        this.sharingLocationsMap.clear();
        this.sharingLocations.clear();
        setLastKnownLocation(null);
        stop(true);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$fetchLocationAddress$28(LocationFetchCallback locationFetchCallback, String str, String str2, TLRPC.TL_messageMediaVenue tL_messageMediaVenue, TLRPC.TL_messageMediaVenue tL_messageMediaVenue2, Location location) {
        callbacks.remove(locationFetchCallback);
        locationFetchCallback.onLocationAddressAvailable(str, str2, tL_messageMediaVenue, tL_messageMediaVenue2, location);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Can't wrap try/catch for region: R(16:0|2|(4:362|3|(1:(1:6)(1:7))(1:8)|9)|(5:11|(1:17)(1:15)|18|(14:20|352|21|24|(8:354|26|348|27|358|28|344|29)(1:31)|32|(4:35|(2:37|(3:39|(2:42|40)|369)(1:368))(1:367)|43|33)|366|44|(4:47|(2:53|371)(1:372)|54|45)|370|55|(1:57)(1:58)|59)(17:60|(1:62)(1:63)|64|(1:66)|67|(1:69)|70|(7:72|(1:74)(1:75)|76|(1:78)|79|(1:81)|82)(1:83)|84|(1:91)(1:90)|92|(1:99)(9:96|(1:98)|101|(1:108)(25:105|(1:107)|110|(1:120)(3:116|(1:118)|119)|(9:122|(1:129)(1:128)|130|(1:137)(9:134|(1:136)|139|(1:146)(6:143|(1:145)|148|(1:158)(3:154|(1:156)|157)|159|(2:161|(2:162|(1:373)(2:164|(2:374|166)(1:167))))(0))|147|148|(4:150|158|159|(0)(0))(0)|338|339)|138|139|(5:141|146|147|148|(0)(0))(0)|338|339)(0)|168|(5:170|(1:172)|173|(3:175|(1:177)|178)|179)(1:180)|181|(1:183)(1:184)|185|186|(3:188|(1:190)|191)|(4:193|(3:195|(1:197)|198)|199|(3:201|(1:203)|204))|205|(3:207|(1:209)|210)|211|(9:213|(1:215)|216|217|(4:219|(1:221)|229|(5:234|(1:236)|243|(1:245)|246)(7:233|237|(3:239|(2:241|376)(1:377)|242)|375|243|(0)|246))(1:222)|223|(6:237|(0)|375|243|(0)|246)(7:229|(1:231)|234|(0)|243|(0)|246)|338|339)(1:247)|248|(3:250|(1:252)|253)|254|(3:256|(1:258)|259)|(4:261|(3:263|(1:265)|266)|267|(3:269|(1:271)|272))|273|(1:275)(1:276)|277)|109|110|(23:112|120|(0)(0)|168|(0)(0)|181|(0)(0)|185|186|(0)|(0)|205|(0)|211|(0)(0)|248|(0)|254|(0)|(0)|273|(0)(0)|277)(0)|338|339)|100|101|(5:103|108|109|110|(0)(0))(0)|338|339)|278)(3:279|(1:281)(1:282)|283)|284|(8:286|364|287|(1:289)(1:290)|291|(1:293)(1:294)|295|(4:297|(1:299)|300|(1:302)))(1:305)|346|306|307|(9:309|350|310|(1:312)|313|(1:315)|316|(1:318)|319)(1:321)|(3:356|324|(6:326|360|327|328|338|339))|331|332|338|339|(1:(0))) */
    /* JADX WARN: Code restructure failed: missing block: B:333:0x05df, code lost:
    
        r11 = r10;
     */
    /* JADX WARN: Code restructure failed: missing block: B:334:0x05e0, code lost:
    
        r20 = null;
     */
    /* JADX WARN: Removed duplicated region for block: B:108:0x01ea  */
    /* JADX WARN: Removed duplicated region for block: B:112:0x01f4 A[Catch: Exception -> 0x05e3, TryCatch #9 {Exception -> 0x05e3, blocks: (B:3:0x001d, B:9:0x004f, B:11:0x0055, B:13:0x005d, B:15:0x0063, B:20:0x006f, B:24:0x007a, B:31:0x009d, B:33:0x00a1, B:35:0x00a7, B:37:0x00ad, B:39:0x00ba, B:40:0x00be, B:42:0x00c1, B:43:0x00c9, B:45:0x00cc, B:47:0x00d2, B:49:0x00de, B:51:0x00e8, B:54:0x00fb, B:53:0x00f6, B:55:0x00fd, B:284:0x04bd, B:286:0x04c3, B:58:0x0105, B:60:0x0114, B:62:0x012e, B:64:0x0135, B:66:0x013b, B:67:0x013f, B:69:0x0145, B:72:0x014d, B:74:0x0153, B:76:0x015a, B:78:0x0160, B:79:0x0164, B:81:0x016a, B:82:0x016e, B:84:0x0178, B:86:0x017e, B:88:0x0188, B:90:0x0196, B:92:0x019c, B:94:0x01a2, B:96:0x01ac, B:98:0x01bc, B:101:0x01c5, B:103:0x01cb, B:105:0x01d5, B:107:0x01e5, B:110:0x01ee, B:112:0x01f4, B:114:0x01fa, B:116:0x0204, B:118:0x020a, B:119:0x020d, B:122:0x0214, B:124:0x021b, B:126:0x0225, B:128:0x0233, B:130:0x0239, B:132:0x023f, B:134:0x0249, B:136:0x0259, B:139:0x0262, B:141:0x0268, B:143:0x0272, B:145:0x0282, B:148:0x028b, B:150:0x0291, B:152:0x0297, B:154:0x02a1, B:156:0x02a7, B:157:0x02aa, B:159:0x02af, B:162:0x02b6, B:164:0x02bb, B:167:0x02ca, B:168:0x02cd, B:170:0x02d3, B:172:0x02d9, B:173:0x02dc, B:175:0x02e1, B:177:0x02e7, B:178:0x02ea, B:181:0x02f0, B:183:0x02fa, B:185:0x0300, B:188:0x030e, B:190:0x0314, B:191:0x0317, B:193:0x031d, B:195:0x0327, B:197:0x032d, B:198:0x0330, B:199:0x0333, B:201:0x033d, B:203:0x0343, B:204:0x0346, B:205:0x0349, B:207:0x0353, B:209:0x0359, B:210:0x035c, B:211:0x035f, B:213:0x036d, B:215:0x0373, B:216:0x0376, B:219:0x038f, B:223:0x03a0, B:225:0x03a6, B:227:0x03ae, B:237:0x03d6, B:239:0x03e1, B:241:0x03e9, B:242:0x03fd, B:243:0x0400, B:245:0x0406, B:246:0x0409, B:248:0x0415, B:250:0x041f, B:252:0x0425, B:253:0x0428, B:254:0x042b, B:256:0x0435, B:258:0x043b, B:259:0x043e, B:261:0x0443, B:263:0x044d, B:265:0x0453, B:266:0x0456, B:267:0x0459, B:269:0x0463, B:271:0x0469, B:272:0x046c, B:273:0x046f, B:276:0x047f, B:229:0x03b6, B:231:0x03c2, B:234:0x03c9, B:282:0x0497, B:7:0x0038), top: B:362:0x001d }] */
    /* JADX WARN: Removed duplicated region for block: B:120:0x0211  */
    /* JADX WARN: Removed duplicated region for block: B:122:0x0214 A[Catch: Exception -> 0x05e3, TryCatch #9 {Exception -> 0x05e3, blocks: (B:3:0x001d, B:9:0x004f, B:11:0x0055, B:13:0x005d, B:15:0x0063, B:20:0x006f, B:24:0x007a, B:31:0x009d, B:33:0x00a1, B:35:0x00a7, B:37:0x00ad, B:39:0x00ba, B:40:0x00be, B:42:0x00c1, B:43:0x00c9, B:45:0x00cc, B:47:0x00d2, B:49:0x00de, B:51:0x00e8, B:54:0x00fb, B:53:0x00f6, B:55:0x00fd, B:284:0x04bd, B:286:0x04c3, B:58:0x0105, B:60:0x0114, B:62:0x012e, B:64:0x0135, B:66:0x013b, B:67:0x013f, B:69:0x0145, B:72:0x014d, B:74:0x0153, B:76:0x015a, B:78:0x0160, B:79:0x0164, B:81:0x016a, B:82:0x016e, B:84:0x0178, B:86:0x017e, B:88:0x0188, B:90:0x0196, B:92:0x019c, B:94:0x01a2, B:96:0x01ac, B:98:0x01bc, B:101:0x01c5, B:103:0x01cb, B:105:0x01d5, B:107:0x01e5, B:110:0x01ee, B:112:0x01f4, B:114:0x01fa, B:116:0x0204, B:118:0x020a, B:119:0x020d, B:122:0x0214, B:124:0x021b, B:126:0x0225, B:128:0x0233, B:130:0x0239, B:132:0x023f, B:134:0x0249, B:136:0x0259, B:139:0x0262, B:141:0x0268, B:143:0x0272, B:145:0x0282, B:148:0x028b, B:150:0x0291, B:152:0x0297, B:154:0x02a1, B:156:0x02a7, B:157:0x02aa, B:159:0x02af, B:162:0x02b6, B:164:0x02bb, B:167:0x02ca, B:168:0x02cd, B:170:0x02d3, B:172:0x02d9, B:173:0x02dc, B:175:0x02e1, B:177:0x02e7, B:178:0x02ea, B:181:0x02f0, B:183:0x02fa, B:185:0x0300, B:188:0x030e, B:190:0x0314, B:191:0x0317, B:193:0x031d, B:195:0x0327, B:197:0x032d, B:198:0x0330, B:199:0x0333, B:201:0x033d, B:203:0x0343, B:204:0x0346, B:205:0x0349, B:207:0x0353, B:209:0x0359, B:210:0x035c, B:211:0x035f, B:213:0x036d, B:215:0x0373, B:216:0x0376, B:219:0x038f, B:223:0x03a0, B:225:0x03a6, B:227:0x03ae, B:237:0x03d6, B:239:0x03e1, B:241:0x03e9, B:242:0x03fd, B:243:0x0400, B:245:0x0406, B:246:0x0409, B:248:0x0415, B:250:0x041f, B:252:0x0425, B:253:0x0428, B:254:0x042b, B:256:0x0435, B:258:0x043b, B:259:0x043e, B:261:0x0443, B:263:0x044d, B:265:0x0453, B:266:0x0456, B:267:0x0459, B:269:0x0463, B:271:0x0469, B:272:0x046c, B:273:0x046f, B:276:0x047f, B:229:0x03b6, B:231:0x03c2, B:234:0x03c9, B:282:0x0497, B:7:0x0038), top: B:362:0x001d }] */
    /* JADX WARN: Removed duplicated region for block: B:146:0x0287  */
    /* JADX WARN: Removed duplicated region for block: B:150:0x0291 A[Catch: Exception -> 0x05e3, TryCatch #9 {Exception -> 0x05e3, blocks: (B:3:0x001d, B:9:0x004f, B:11:0x0055, B:13:0x005d, B:15:0x0063, B:20:0x006f, B:24:0x007a, B:31:0x009d, B:33:0x00a1, B:35:0x00a7, B:37:0x00ad, B:39:0x00ba, B:40:0x00be, B:42:0x00c1, B:43:0x00c9, B:45:0x00cc, B:47:0x00d2, B:49:0x00de, B:51:0x00e8, B:54:0x00fb, B:53:0x00f6, B:55:0x00fd, B:284:0x04bd, B:286:0x04c3, B:58:0x0105, B:60:0x0114, B:62:0x012e, B:64:0x0135, B:66:0x013b, B:67:0x013f, B:69:0x0145, B:72:0x014d, B:74:0x0153, B:76:0x015a, B:78:0x0160, B:79:0x0164, B:81:0x016a, B:82:0x016e, B:84:0x0178, B:86:0x017e, B:88:0x0188, B:90:0x0196, B:92:0x019c, B:94:0x01a2, B:96:0x01ac, B:98:0x01bc, B:101:0x01c5, B:103:0x01cb, B:105:0x01d5, B:107:0x01e5, B:110:0x01ee, B:112:0x01f4, B:114:0x01fa, B:116:0x0204, B:118:0x020a, B:119:0x020d, B:122:0x0214, B:124:0x021b, B:126:0x0225, B:128:0x0233, B:130:0x0239, B:132:0x023f, B:134:0x0249, B:136:0x0259, B:139:0x0262, B:141:0x0268, B:143:0x0272, B:145:0x0282, B:148:0x028b, B:150:0x0291, B:152:0x0297, B:154:0x02a1, B:156:0x02a7, B:157:0x02aa, B:159:0x02af, B:162:0x02b6, B:164:0x02bb, B:167:0x02ca, B:168:0x02cd, B:170:0x02d3, B:172:0x02d9, B:173:0x02dc, B:175:0x02e1, B:177:0x02e7, B:178:0x02ea, B:181:0x02f0, B:183:0x02fa, B:185:0x0300, B:188:0x030e, B:190:0x0314, B:191:0x0317, B:193:0x031d, B:195:0x0327, B:197:0x032d, B:198:0x0330, B:199:0x0333, B:201:0x033d, B:203:0x0343, B:204:0x0346, B:205:0x0349, B:207:0x0353, B:209:0x0359, B:210:0x035c, B:211:0x035f, B:213:0x036d, B:215:0x0373, B:216:0x0376, B:219:0x038f, B:223:0x03a0, B:225:0x03a6, B:227:0x03ae, B:237:0x03d6, B:239:0x03e1, B:241:0x03e9, B:242:0x03fd, B:243:0x0400, B:245:0x0406, B:246:0x0409, B:248:0x0415, B:250:0x041f, B:252:0x0425, B:253:0x0428, B:254:0x042b, B:256:0x0435, B:258:0x043b, B:259:0x043e, B:261:0x0443, B:263:0x044d, B:265:0x0453, B:266:0x0456, B:267:0x0459, B:269:0x0463, B:271:0x0469, B:272:0x046c, B:273:0x046f, B:276:0x047f, B:229:0x03b6, B:231:0x03c2, B:234:0x03c9, B:282:0x0497, B:7:0x0038), top: B:362:0x001d }] */
    /* JADX WARN: Removed duplicated region for block: B:158:0x02ae  */
    /* JADX WARN: Removed duplicated region for block: B:161:0x02b5  */
    /* JADX WARN: Removed duplicated region for block: B:170:0x02d3 A[Catch: Exception -> 0x05e3, TryCatch #9 {Exception -> 0x05e3, blocks: (B:3:0x001d, B:9:0x004f, B:11:0x0055, B:13:0x005d, B:15:0x0063, B:20:0x006f, B:24:0x007a, B:31:0x009d, B:33:0x00a1, B:35:0x00a7, B:37:0x00ad, B:39:0x00ba, B:40:0x00be, B:42:0x00c1, B:43:0x00c9, B:45:0x00cc, B:47:0x00d2, B:49:0x00de, B:51:0x00e8, B:54:0x00fb, B:53:0x00f6, B:55:0x00fd, B:284:0x04bd, B:286:0x04c3, B:58:0x0105, B:60:0x0114, B:62:0x012e, B:64:0x0135, B:66:0x013b, B:67:0x013f, B:69:0x0145, B:72:0x014d, B:74:0x0153, B:76:0x015a, B:78:0x0160, B:79:0x0164, B:81:0x016a, B:82:0x016e, B:84:0x0178, B:86:0x017e, B:88:0x0188, B:90:0x0196, B:92:0x019c, B:94:0x01a2, B:96:0x01ac, B:98:0x01bc, B:101:0x01c5, B:103:0x01cb, B:105:0x01d5, B:107:0x01e5, B:110:0x01ee, B:112:0x01f4, B:114:0x01fa, B:116:0x0204, B:118:0x020a, B:119:0x020d, B:122:0x0214, B:124:0x021b, B:126:0x0225, B:128:0x0233, B:130:0x0239, B:132:0x023f, B:134:0x0249, B:136:0x0259, B:139:0x0262, B:141:0x0268, B:143:0x0272, B:145:0x0282, B:148:0x028b, B:150:0x0291, B:152:0x0297, B:154:0x02a1, B:156:0x02a7, B:157:0x02aa, B:159:0x02af, B:162:0x02b6, B:164:0x02bb, B:167:0x02ca, B:168:0x02cd, B:170:0x02d3, B:172:0x02d9, B:173:0x02dc, B:175:0x02e1, B:177:0x02e7, B:178:0x02ea, B:181:0x02f0, B:183:0x02fa, B:185:0x0300, B:188:0x030e, B:190:0x0314, B:191:0x0317, B:193:0x031d, B:195:0x0327, B:197:0x032d, B:198:0x0330, B:199:0x0333, B:201:0x033d, B:203:0x0343, B:204:0x0346, B:205:0x0349, B:207:0x0353, B:209:0x0359, B:210:0x035c, B:211:0x035f, B:213:0x036d, B:215:0x0373, B:216:0x0376, B:219:0x038f, B:223:0x03a0, B:225:0x03a6, B:227:0x03ae, B:237:0x03d6, B:239:0x03e1, B:241:0x03e9, B:242:0x03fd, B:243:0x0400, B:245:0x0406, B:246:0x0409, B:248:0x0415, B:250:0x041f, B:252:0x0425, B:253:0x0428, B:254:0x042b, B:256:0x0435, B:258:0x043b, B:259:0x043e, B:261:0x0443, B:263:0x044d, B:265:0x0453, B:266:0x0456, B:267:0x0459, B:269:0x0463, B:271:0x0469, B:272:0x046c, B:273:0x046f, B:276:0x047f, B:229:0x03b6, B:231:0x03c2, B:234:0x03c9, B:282:0x0497, B:7:0x0038), top: B:362:0x001d }] */
    /* JADX WARN: Removed duplicated region for block: B:180:0x02ef  */
    /* JADX WARN: Removed duplicated region for block: B:183:0x02fa A[Catch: Exception -> 0x05e3, TryCatch #9 {Exception -> 0x05e3, blocks: (B:3:0x001d, B:9:0x004f, B:11:0x0055, B:13:0x005d, B:15:0x0063, B:20:0x006f, B:24:0x007a, B:31:0x009d, B:33:0x00a1, B:35:0x00a7, B:37:0x00ad, B:39:0x00ba, B:40:0x00be, B:42:0x00c1, B:43:0x00c9, B:45:0x00cc, B:47:0x00d2, B:49:0x00de, B:51:0x00e8, B:54:0x00fb, B:53:0x00f6, B:55:0x00fd, B:284:0x04bd, B:286:0x04c3, B:58:0x0105, B:60:0x0114, B:62:0x012e, B:64:0x0135, B:66:0x013b, B:67:0x013f, B:69:0x0145, B:72:0x014d, B:74:0x0153, B:76:0x015a, B:78:0x0160, B:79:0x0164, B:81:0x016a, B:82:0x016e, B:84:0x0178, B:86:0x017e, B:88:0x0188, B:90:0x0196, B:92:0x019c, B:94:0x01a2, B:96:0x01ac, B:98:0x01bc, B:101:0x01c5, B:103:0x01cb, B:105:0x01d5, B:107:0x01e5, B:110:0x01ee, B:112:0x01f4, B:114:0x01fa, B:116:0x0204, B:118:0x020a, B:119:0x020d, B:122:0x0214, B:124:0x021b, B:126:0x0225, B:128:0x0233, B:130:0x0239, B:132:0x023f, B:134:0x0249, B:136:0x0259, B:139:0x0262, B:141:0x0268, B:143:0x0272, B:145:0x0282, B:148:0x028b, B:150:0x0291, B:152:0x0297, B:154:0x02a1, B:156:0x02a7, B:157:0x02aa, B:159:0x02af, B:162:0x02b6, B:164:0x02bb, B:167:0x02ca, B:168:0x02cd, B:170:0x02d3, B:172:0x02d9, B:173:0x02dc, B:175:0x02e1, B:177:0x02e7, B:178:0x02ea, B:181:0x02f0, B:183:0x02fa, B:185:0x0300, B:188:0x030e, B:190:0x0314, B:191:0x0317, B:193:0x031d, B:195:0x0327, B:197:0x032d, B:198:0x0330, B:199:0x0333, B:201:0x033d, B:203:0x0343, B:204:0x0346, B:205:0x0349, B:207:0x0353, B:209:0x0359, B:210:0x035c, B:211:0x035f, B:213:0x036d, B:215:0x0373, B:216:0x0376, B:219:0x038f, B:223:0x03a0, B:225:0x03a6, B:227:0x03ae, B:237:0x03d6, B:239:0x03e1, B:241:0x03e9, B:242:0x03fd, B:243:0x0400, B:245:0x0406, B:246:0x0409, B:248:0x0415, B:250:0x041f, B:252:0x0425, B:253:0x0428, B:254:0x042b, B:256:0x0435, B:258:0x043b, B:259:0x043e, B:261:0x0443, B:263:0x044d, B:265:0x0453, B:266:0x0456, B:267:0x0459, B:269:0x0463, B:271:0x0469, B:272:0x046c, B:273:0x046f, B:276:0x047f, B:229:0x03b6, B:231:0x03c2, B:234:0x03c9, B:282:0x0497, B:7:0x0038), top: B:362:0x001d }] */
    /* JADX WARN: Removed duplicated region for block: B:184:0x02ff  */
    /* JADX WARN: Removed duplicated region for block: B:188:0x030e A[Catch: Exception -> 0x05e3, TRY_ENTER, TryCatch #9 {Exception -> 0x05e3, blocks: (B:3:0x001d, B:9:0x004f, B:11:0x0055, B:13:0x005d, B:15:0x0063, B:20:0x006f, B:24:0x007a, B:31:0x009d, B:33:0x00a1, B:35:0x00a7, B:37:0x00ad, B:39:0x00ba, B:40:0x00be, B:42:0x00c1, B:43:0x00c9, B:45:0x00cc, B:47:0x00d2, B:49:0x00de, B:51:0x00e8, B:54:0x00fb, B:53:0x00f6, B:55:0x00fd, B:284:0x04bd, B:286:0x04c3, B:58:0x0105, B:60:0x0114, B:62:0x012e, B:64:0x0135, B:66:0x013b, B:67:0x013f, B:69:0x0145, B:72:0x014d, B:74:0x0153, B:76:0x015a, B:78:0x0160, B:79:0x0164, B:81:0x016a, B:82:0x016e, B:84:0x0178, B:86:0x017e, B:88:0x0188, B:90:0x0196, B:92:0x019c, B:94:0x01a2, B:96:0x01ac, B:98:0x01bc, B:101:0x01c5, B:103:0x01cb, B:105:0x01d5, B:107:0x01e5, B:110:0x01ee, B:112:0x01f4, B:114:0x01fa, B:116:0x0204, B:118:0x020a, B:119:0x020d, B:122:0x0214, B:124:0x021b, B:126:0x0225, B:128:0x0233, B:130:0x0239, B:132:0x023f, B:134:0x0249, B:136:0x0259, B:139:0x0262, B:141:0x0268, B:143:0x0272, B:145:0x0282, B:148:0x028b, B:150:0x0291, B:152:0x0297, B:154:0x02a1, B:156:0x02a7, B:157:0x02aa, B:159:0x02af, B:162:0x02b6, B:164:0x02bb, B:167:0x02ca, B:168:0x02cd, B:170:0x02d3, B:172:0x02d9, B:173:0x02dc, B:175:0x02e1, B:177:0x02e7, B:178:0x02ea, B:181:0x02f0, B:183:0x02fa, B:185:0x0300, B:188:0x030e, B:190:0x0314, B:191:0x0317, B:193:0x031d, B:195:0x0327, B:197:0x032d, B:198:0x0330, B:199:0x0333, B:201:0x033d, B:203:0x0343, B:204:0x0346, B:205:0x0349, B:207:0x0353, B:209:0x0359, B:210:0x035c, B:211:0x035f, B:213:0x036d, B:215:0x0373, B:216:0x0376, B:219:0x038f, B:223:0x03a0, B:225:0x03a6, B:227:0x03ae, B:237:0x03d6, B:239:0x03e1, B:241:0x03e9, B:242:0x03fd, B:243:0x0400, B:245:0x0406, B:246:0x0409, B:248:0x0415, B:250:0x041f, B:252:0x0425, B:253:0x0428, B:254:0x042b, B:256:0x0435, B:258:0x043b, B:259:0x043e, B:261:0x0443, B:263:0x044d, B:265:0x0453, B:266:0x0456, B:267:0x0459, B:269:0x0463, B:271:0x0469, B:272:0x046c, B:273:0x046f, B:276:0x047f, B:229:0x03b6, B:231:0x03c2, B:234:0x03c9, B:282:0x0497, B:7:0x0038), top: B:362:0x001d }] */
    /* JADX WARN: Removed duplicated region for block: B:193:0x031d A[Catch: Exception -> 0x05e3, TryCatch #9 {Exception -> 0x05e3, blocks: (B:3:0x001d, B:9:0x004f, B:11:0x0055, B:13:0x005d, B:15:0x0063, B:20:0x006f, B:24:0x007a, B:31:0x009d, B:33:0x00a1, B:35:0x00a7, B:37:0x00ad, B:39:0x00ba, B:40:0x00be, B:42:0x00c1, B:43:0x00c9, B:45:0x00cc, B:47:0x00d2, B:49:0x00de, B:51:0x00e8, B:54:0x00fb, B:53:0x00f6, B:55:0x00fd, B:284:0x04bd, B:286:0x04c3, B:58:0x0105, B:60:0x0114, B:62:0x012e, B:64:0x0135, B:66:0x013b, B:67:0x013f, B:69:0x0145, B:72:0x014d, B:74:0x0153, B:76:0x015a, B:78:0x0160, B:79:0x0164, B:81:0x016a, B:82:0x016e, B:84:0x0178, B:86:0x017e, B:88:0x0188, B:90:0x0196, B:92:0x019c, B:94:0x01a2, B:96:0x01ac, B:98:0x01bc, B:101:0x01c5, B:103:0x01cb, B:105:0x01d5, B:107:0x01e5, B:110:0x01ee, B:112:0x01f4, B:114:0x01fa, B:116:0x0204, B:118:0x020a, B:119:0x020d, B:122:0x0214, B:124:0x021b, B:126:0x0225, B:128:0x0233, B:130:0x0239, B:132:0x023f, B:134:0x0249, B:136:0x0259, B:139:0x0262, B:141:0x0268, B:143:0x0272, B:145:0x0282, B:148:0x028b, B:150:0x0291, B:152:0x0297, B:154:0x02a1, B:156:0x02a7, B:157:0x02aa, B:159:0x02af, B:162:0x02b6, B:164:0x02bb, B:167:0x02ca, B:168:0x02cd, B:170:0x02d3, B:172:0x02d9, B:173:0x02dc, B:175:0x02e1, B:177:0x02e7, B:178:0x02ea, B:181:0x02f0, B:183:0x02fa, B:185:0x0300, B:188:0x030e, B:190:0x0314, B:191:0x0317, B:193:0x031d, B:195:0x0327, B:197:0x032d, B:198:0x0330, B:199:0x0333, B:201:0x033d, B:203:0x0343, B:204:0x0346, B:205:0x0349, B:207:0x0353, B:209:0x0359, B:210:0x035c, B:211:0x035f, B:213:0x036d, B:215:0x0373, B:216:0x0376, B:219:0x038f, B:223:0x03a0, B:225:0x03a6, B:227:0x03ae, B:237:0x03d6, B:239:0x03e1, B:241:0x03e9, B:242:0x03fd, B:243:0x0400, B:245:0x0406, B:246:0x0409, B:248:0x0415, B:250:0x041f, B:252:0x0425, B:253:0x0428, B:254:0x042b, B:256:0x0435, B:258:0x043b, B:259:0x043e, B:261:0x0443, B:263:0x044d, B:265:0x0453, B:266:0x0456, B:267:0x0459, B:269:0x0463, B:271:0x0469, B:272:0x046c, B:273:0x046f, B:276:0x047f, B:229:0x03b6, B:231:0x03c2, B:234:0x03c9, B:282:0x0497, B:7:0x0038), top: B:362:0x001d }] */
    /* JADX WARN: Removed duplicated region for block: B:207:0x0353 A[Catch: Exception -> 0x05e3, TryCatch #9 {Exception -> 0x05e3, blocks: (B:3:0x001d, B:9:0x004f, B:11:0x0055, B:13:0x005d, B:15:0x0063, B:20:0x006f, B:24:0x007a, B:31:0x009d, B:33:0x00a1, B:35:0x00a7, B:37:0x00ad, B:39:0x00ba, B:40:0x00be, B:42:0x00c1, B:43:0x00c9, B:45:0x00cc, B:47:0x00d2, B:49:0x00de, B:51:0x00e8, B:54:0x00fb, B:53:0x00f6, B:55:0x00fd, B:284:0x04bd, B:286:0x04c3, B:58:0x0105, B:60:0x0114, B:62:0x012e, B:64:0x0135, B:66:0x013b, B:67:0x013f, B:69:0x0145, B:72:0x014d, B:74:0x0153, B:76:0x015a, B:78:0x0160, B:79:0x0164, B:81:0x016a, B:82:0x016e, B:84:0x0178, B:86:0x017e, B:88:0x0188, B:90:0x0196, B:92:0x019c, B:94:0x01a2, B:96:0x01ac, B:98:0x01bc, B:101:0x01c5, B:103:0x01cb, B:105:0x01d5, B:107:0x01e5, B:110:0x01ee, B:112:0x01f4, B:114:0x01fa, B:116:0x0204, B:118:0x020a, B:119:0x020d, B:122:0x0214, B:124:0x021b, B:126:0x0225, B:128:0x0233, B:130:0x0239, B:132:0x023f, B:134:0x0249, B:136:0x0259, B:139:0x0262, B:141:0x0268, B:143:0x0272, B:145:0x0282, B:148:0x028b, B:150:0x0291, B:152:0x0297, B:154:0x02a1, B:156:0x02a7, B:157:0x02aa, B:159:0x02af, B:162:0x02b6, B:164:0x02bb, B:167:0x02ca, B:168:0x02cd, B:170:0x02d3, B:172:0x02d9, B:173:0x02dc, B:175:0x02e1, B:177:0x02e7, B:178:0x02ea, B:181:0x02f0, B:183:0x02fa, B:185:0x0300, B:188:0x030e, B:190:0x0314, B:191:0x0317, B:193:0x031d, B:195:0x0327, B:197:0x032d, B:198:0x0330, B:199:0x0333, B:201:0x033d, B:203:0x0343, B:204:0x0346, B:205:0x0349, B:207:0x0353, B:209:0x0359, B:210:0x035c, B:211:0x035f, B:213:0x036d, B:215:0x0373, B:216:0x0376, B:219:0x038f, B:223:0x03a0, B:225:0x03a6, B:227:0x03ae, B:237:0x03d6, B:239:0x03e1, B:241:0x03e9, B:242:0x03fd, B:243:0x0400, B:245:0x0406, B:246:0x0409, B:248:0x0415, B:250:0x041f, B:252:0x0425, B:253:0x0428, B:254:0x042b, B:256:0x0435, B:258:0x043b, B:259:0x043e, B:261:0x0443, B:263:0x044d, B:265:0x0453, B:266:0x0456, B:267:0x0459, B:269:0x0463, B:271:0x0469, B:272:0x046c, B:273:0x046f, B:276:0x047f, B:229:0x03b6, B:231:0x03c2, B:234:0x03c9, B:282:0x0497, B:7:0x0038), top: B:362:0x001d }] */
    /* JADX WARN: Removed duplicated region for block: B:213:0x036d A[Catch: Exception -> 0x05e3, TryCatch #9 {Exception -> 0x05e3, blocks: (B:3:0x001d, B:9:0x004f, B:11:0x0055, B:13:0x005d, B:15:0x0063, B:20:0x006f, B:24:0x007a, B:31:0x009d, B:33:0x00a1, B:35:0x00a7, B:37:0x00ad, B:39:0x00ba, B:40:0x00be, B:42:0x00c1, B:43:0x00c9, B:45:0x00cc, B:47:0x00d2, B:49:0x00de, B:51:0x00e8, B:54:0x00fb, B:53:0x00f6, B:55:0x00fd, B:284:0x04bd, B:286:0x04c3, B:58:0x0105, B:60:0x0114, B:62:0x012e, B:64:0x0135, B:66:0x013b, B:67:0x013f, B:69:0x0145, B:72:0x014d, B:74:0x0153, B:76:0x015a, B:78:0x0160, B:79:0x0164, B:81:0x016a, B:82:0x016e, B:84:0x0178, B:86:0x017e, B:88:0x0188, B:90:0x0196, B:92:0x019c, B:94:0x01a2, B:96:0x01ac, B:98:0x01bc, B:101:0x01c5, B:103:0x01cb, B:105:0x01d5, B:107:0x01e5, B:110:0x01ee, B:112:0x01f4, B:114:0x01fa, B:116:0x0204, B:118:0x020a, B:119:0x020d, B:122:0x0214, B:124:0x021b, B:126:0x0225, B:128:0x0233, B:130:0x0239, B:132:0x023f, B:134:0x0249, B:136:0x0259, B:139:0x0262, B:141:0x0268, B:143:0x0272, B:145:0x0282, B:148:0x028b, B:150:0x0291, B:152:0x0297, B:154:0x02a1, B:156:0x02a7, B:157:0x02aa, B:159:0x02af, B:162:0x02b6, B:164:0x02bb, B:167:0x02ca, B:168:0x02cd, B:170:0x02d3, B:172:0x02d9, B:173:0x02dc, B:175:0x02e1, B:177:0x02e7, B:178:0x02ea, B:181:0x02f0, B:183:0x02fa, B:185:0x0300, B:188:0x030e, B:190:0x0314, B:191:0x0317, B:193:0x031d, B:195:0x0327, B:197:0x032d, B:198:0x0330, B:199:0x0333, B:201:0x033d, B:203:0x0343, B:204:0x0346, B:205:0x0349, B:207:0x0353, B:209:0x0359, B:210:0x035c, B:211:0x035f, B:213:0x036d, B:215:0x0373, B:216:0x0376, B:219:0x038f, B:223:0x03a0, B:225:0x03a6, B:227:0x03ae, B:237:0x03d6, B:239:0x03e1, B:241:0x03e9, B:242:0x03fd, B:243:0x0400, B:245:0x0406, B:246:0x0409, B:248:0x0415, B:250:0x041f, B:252:0x0425, B:253:0x0428, B:254:0x042b, B:256:0x0435, B:258:0x043b, B:259:0x043e, B:261:0x0443, B:263:0x044d, B:265:0x0453, B:266:0x0456, B:267:0x0459, B:269:0x0463, B:271:0x0469, B:272:0x046c, B:273:0x046f, B:276:0x047f, B:229:0x03b6, B:231:0x03c2, B:234:0x03c9, B:282:0x0497, B:7:0x0038), top: B:362:0x001d }] */
    /* JADX WARN: Removed duplicated region for block: B:236:0x03d3  */
    /* JADX WARN: Removed duplicated region for block: B:239:0x03e1 A[Catch: Exception -> 0x05e3, TryCatch #9 {Exception -> 0x05e3, blocks: (B:3:0x001d, B:9:0x004f, B:11:0x0055, B:13:0x005d, B:15:0x0063, B:20:0x006f, B:24:0x007a, B:31:0x009d, B:33:0x00a1, B:35:0x00a7, B:37:0x00ad, B:39:0x00ba, B:40:0x00be, B:42:0x00c1, B:43:0x00c9, B:45:0x00cc, B:47:0x00d2, B:49:0x00de, B:51:0x00e8, B:54:0x00fb, B:53:0x00f6, B:55:0x00fd, B:284:0x04bd, B:286:0x04c3, B:58:0x0105, B:60:0x0114, B:62:0x012e, B:64:0x0135, B:66:0x013b, B:67:0x013f, B:69:0x0145, B:72:0x014d, B:74:0x0153, B:76:0x015a, B:78:0x0160, B:79:0x0164, B:81:0x016a, B:82:0x016e, B:84:0x0178, B:86:0x017e, B:88:0x0188, B:90:0x0196, B:92:0x019c, B:94:0x01a2, B:96:0x01ac, B:98:0x01bc, B:101:0x01c5, B:103:0x01cb, B:105:0x01d5, B:107:0x01e5, B:110:0x01ee, B:112:0x01f4, B:114:0x01fa, B:116:0x0204, B:118:0x020a, B:119:0x020d, B:122:0x0214, B:124:0x021b, B:126:0x0225, B:128:0x0233, B:130:0x0239, B:132:0x023f, B:134:0x0249, B:136:0x0259, B:139:0x0262, B:141:0x0268, B:143:0x0272, B:145:0x0282, B:148:0x028b, B:150:0x0291, B:152:0x0297, B:154:0x02a1, B:156:0x02a7, B:157:0x02aa, B:159:0x02af, B:162:0x02b6, B:164:0x02bb, B:167:0x02ca, B:168:0x02cd, B:170:0x02d3, B:172:0x02d9, B:173:0x02dc, B:175:0x02e1, B:177:0x02e7, B:178:0x02ea, B:181:0x02f0, B:183:0x02fa, B:185:0x0300, B:188:0x030e, B:190:0x0314, B:191:0x0317, B:193:0x031d, B:195:0x0327, B:197:0x032d, B:198:0x0330, B:199:0x0333, B:201:0x033d, B:203:0x0343, B:204:0x0346, B:205:0x0349, B:207:0x0353, B:209:0x0359, B:210:0x035c, B:211:0x035f, B:213:0x036d, B:215:0x0373, B:216:0x0376, B:219:0x038f, B:223:0x03a0, B:225:0x03a6, B:227:0x03ae, B:237:0x03d6, B:239:0x03e1, B:241:0x03e9, B:242:0x03fd, B:243:0x0400, B:245:0x0406, B:246:0x0409, B:248:0x0415, B:250:0x041f, B:252:0x0425, B:253:0x0428, B:254:0x042b, B:256:0x0435, B:258:0x043b, B:259:0x043e, B:261:0x0443, B:263:0x044d, B:265:0x0453, B:266:0x0456, B:267:0x0459, B:269:0x0463, B:271:0x0469, B:272:0x046c, B:273:0x046f, B:276:0x047f, B:229:0x03b6, B:231:0x03c2, B:234:0x03c9, B:282:0x0497, B:7:0x0038), top: B:362:0x001d }] */
    /* JADX WARN: Removed duplicated region for block: B:245:0x0406 A[Catch: Exception -> 0x05e3, TryCatch #9 {Exception -> 0x05e3, blocks: (B:3:0x001d, B:9:0x004f, B:11:0x0055, B:13:0x005d, B:15:0x0063, B:20:0x006f, B:24:0x007a, B:31:0x009d, B:33:0x00a1, B:35:0x00a7, B:37:0x00ad, B:39:0x00ba, B:40:0x00be, B:42:0x00c1, B:43:0x00c9, B:45:0x00cc, B:47:0x00d2, B:49:0x00de, B:51:0x00e8, B:54:0x00fb, B:53:0x00f6, B:55:0x00fd, B:284:0x04bd, B:286:0x04c3, B:58:0x0105, B:60:0x0114, B:62:0x012e, B:64:0x0135, B:66:0x013b, B:67:0x013f, B:69:0x0145, B:72:0x014d, B:74:0x0153, B:76:0x015a, B:78:0x0160, B:79:0x0164, B:81:0x016a, B:82:0x016e, B:84:0x0178, B:86:0x017e, B:88:0x0188, B:90:0x0196, B:92:0x019c, B:94:0x01a2, B:96:0x01ac, B:98:0x01bc, B:101:0x01c5, B:103:0x01cb, B:105:0x01d5, B:107:0x01e5, B:110:0x01ee, B:112:0x01f4, B:114:0x01fa, B:116:0x0204, B:118:0x020a, B:119:0x020d, B:122:0x0214, B:124:0x021b, B:126:0x0225, B:128:0x0233, B:130:0x0239, B:132:0x023f, B:134:0x0249, B:136:0x0259, B:139:0x0262, B:141:0x0268, B:143:0x0272, B:145:0x0282, B:148:0x028b, B:150:0x0291, B:152:0x0297, B:154:0x02a1, B:156:0x02a7, B:157:0x02aa, B:159:0x02af, B:162:0x02b6, B:164:0x02bb, B:167:0x02ca, B:168:0x02cd, B:170:0x02d3, B:172:0x02d9, B:173:0x02dc, B:175:0x02e1, B:177:0x02e7, B:178:0x02ea, B:181:0x02f0, B:183:0x02fa, B:185:0x0300, B:188:0x030e, B:190:0x0314, B:191:0x0317, B:193:0x031d, B:195:0x0327, B:197:0x032d, B:198:0x0330, B:199:0x0333, B:201:0x033d, B:203:0x0343, B:204:0x0346, B:205:0x0349, B:207:0x0353, B:209:0x0359, B:210:0x035c, B:211:0x035f, B:213:0x036d, B:215:0x0373, B:216:0x0376, B:219:0x038f, B:223:0x03a0, B:225:0x03a6, B:227:0x03ae, B:237:0x03d6, B:239:0x03e1, B:241:0x03e9, B:242:0x03fd, B:243:0x0400, B:245:0x0406, B:246:0x0409, B:248:0x0415, B:250:0x041f, B:252:0x0425, B:253:0x0428, B:254:0x042b, B:256:0x0435, B:258:0x043b, B:259:0x043e, B:261:0x0443, B:263:0x044d, B:265:0x0453, B:266:0x0456, B:267:0x0459, B:269:0x0463, B:271:0x0469, B:272:0x046c, B:273:0x046f, B:276:0x047f, B:229:0x03b6, B:231:0x03c2, B:234:0x03c9, B:282:0x0497, B:7:0x0038), top: B:362:0x001d }] */
    /* JADX WARN: Removed duplicated region for block: B:247:0x040d  */
    /* JADX WARN: Removed duplicated region for block: B:250:0x041f A[Catch: Exception -> 0x05e3, TryCatch #9 {Exception -> 0x05e3, blocks: (B:3:0x001d, B:9:0x004f, B:11:0x0055, B:13:0x005d, B:15:0x0063, B:20:0x006f, B:24:0x007a, B:31:0x009d, B:33:0x00a1, B:35:0x00a7, B:37:0x00ad, B:39:0x00ba, B:40:0x00be, B:42:0x00c1, B:43:0x00c9, B:45:0x00cc, B:47:0x00d2, B:49:0x00de, B:51:0x00e8, B:54:0x00fb, B:53:0x00f6, B:55:0x00fd, B:284:0x04bd, B:286:0x04c3, B:58:0x0105, B:60:0x0114, B:62:0x012e, B:64:0x0135, B:66:0x013b, B:67:0x013f, B:69:0x0145, B:72:0x014d, B:74:0x0153, B:76:0x015a, B:78:0x0160, B:79:0x0164, B:81:0x016a, B:82:0x016e, B:84:0x0178, B:86:0x017e, B:88:0x0188, B:90:0x0196, B:92:0x019c, B:94:0x01a2, B:96:0x01ac, B:98:0x01bc, B:101:0x01c5, B:103:0x01cb, B:105:0x01d5, B:107:0x01e5, B:110:0x01ee, B:112:0x01f4, B:114:0x01fa, B:116:0x0204, B:118:0x020a, B:119:0x020d, B:122:0x0214, B:124:0x021b, B:126:0x0225, B:128:0x0233, B:130:0x0239, B:132:0x023f, B:134:0x0249, B:136:0x0259, B:139:0x0262, B:141:0x0268, B:143:0x0272, B:145:0x0282, B:148:0x028b, B:150:0x0291, B:152:0x0297, B:154:0x02a1, B:156:0x02a7, B:157:0x02aa, B:159:0x02af, B:162:0x02b6, B:164:0x02bb, B:167:0x02ca, B:168:0x02cd, B:170:0x02d3, B:172:0x02d9, B:173:0x02dc, B:175:0x02e1, B:177:0x02e7, B:178:0x02ea, B:181:0x02f0, B:183:0x02fa, B:185:0x0300, B:188:0x030e, B:190:0x0314, B:191:0x0317, B:193:0x031d, B:195:0x0327, B:197:0x032d, B:198:0x0330, B:199:0x0333, B:201:0x033d, B:203:0x0343, B:204:0x0346, B:205:0x0349, B:207:0x0353, B:209:0x0359, B:210:0x035c, B:211:0x035f, B:213:0x036d, B:215:0x0373, B:216:0x0376, B:219:0x038f, B:223:0x03a0, B:225:0x03a6, B:227:0x03ae, B:237:0x03d6, B:239:0x03e1, B:241:0x03e9, B:242:0x03fd, B:243:0x0400, B:245:0x0406, B:246:0x0409, B:248:0x0415, B:250:0x041f, B:252:0x0425, B:253:0x0428, B:254:0x042b, B:256:0x0435, B:258:0x043b, B:259:0x043e, B:261:0x0443, B:263:0x044d, B:265:0x0453, B:266:0x0456, B:267:0x0459, B:269:0x0463, B:271:0x0469, B:272:0x046c, B:273:0x046f, B:276:0x047f, B:229:0x03b6, B:231:0x03c2, B:234:0x03c9, B:282:0x0497, B:7:0x0038), top: B:362:0x001d }] */
    /* JADX WARN: Removed duplicated region for block: B:256:0x0435 A[Catch: Exception -> 0x05e3, TryCatch #9 {Exception -> 0x05e3, blocks: (B:3:0x001d, B:9:0x004f, B:11:0x0055, B:13:0x005d, B:15:0x0063, B:20:0x006f, B:24:0x007a, B:31:0x009d, B:33:0x00a1, B:35:0x00a7, B:37:0x00ad, B:39:0x00ba, B:40:0x00be, B:42:0x00c1, B:43:0x00c9, B:45:0x00cc, B:47:0x00d2, B:49:0x00de, B:51:0x00e8, B:54:0x00fb, B:53:0x00f6, B:55:0x00fd, B:284:0x04bd, B:286:0x04c3, B:58:0x0105, B:60:0x0114, B:62:0x012e, B:64:0x0135, B:66:0x013b, B:67:0x013f, B:69:0x0145, B:72:0x014d, B:74:0x0153, B:76:0x015a, B:78:0x0160, B:79:0x0164, B:81:0x016a, B:82:0x016e, B:84:0x0178, B:86:0x017e, B:88:0x0188, B:90:0x0196, B:92:0x019c, B:94:0x01a2, B:96:0x01ac, B:98:0x01bc, B:101:0x01c5, B:103:0x01cb, B:105:0x01d5, B:107:0x01e5, B:110:0x01ee, B:112:0x01f4, B:114:0x01fa, B:116:0x0204, B:118:0x020a, B:119:0x020d, B:122:0x0214, B:124:0x021b, B:126:0x0225, B:128:0x0233, B:130:0x0239, B:132:0x023f, B:134:0x0249, B:136:0x0259, B:139:0x0262, B:141:0x0268, B:143:0x0272, B:145:0x0282, B:148:0x028b, B:150:0x0291, B:152:0x0297, B:154:0x02a1, B:156:0x02a7, B:157:0x02aa, B:159:0x02af, B:162:0x02b6, B:164:0x02bb, B:167:0x02ca, B:168:0x02cd, B:170:0x02d3, B:172:0x02d9, B:173:0x02dc, B:175:0x02e1, B:177:0x02e7, B:178:0x02ea, B:181:0x02f0, B:183:0x02fa, B:185:0x0300, B:188:0x030e, B:190:0x0314, B:191:0x0317, B:193:0x031d, B:195:0x0327, B:197:0x032d, B:198:0x0330, B:199:0x0333, B:201:0x033d, B:203:0x0343, B:204:0x0346, B:205:0x0349, B:207:0x0353, B:209:0x0359, B:210:0x035c, B:211:0x035f, B:213:0x036d, B:215:0x0373, B:216:0x0376, B:219:0x038f, B:223:0x03a0, B:225:0x03a6, B:227:0x03ae, B:237:0x03d6, B:239:0x03e1, B:241:0x03e9, B:242:0x03fd, B:243:0x0400, B:245:0x0406, B:246:0x0409, B:248:0x0415, B:250:0x041f, B:252:0x0425, B:253:0x0428, B:254:0x042b, B:256:0x0435, B:258:0x043b, B:259:0x043e, B:261:0x0443, B:263:0x044d, B:265:0x0453, B:266:0x0456, B:267:0x0459, B:269:0x0463, B:271:0x0469, B:272:0x046c, B:273:0x046f, B:276:0x047f, B:229:0x03b6, B:231:0x03c2, B:234:0x03c9, B:282:0x0497, B:7:0x0038), top: B:362:0x001d }] */
    /* JADX WARN: Removed duplicated region for block: B:261:0x0443 A[Catch: Exception -> 0x05e3, TryCatch #9 {Exception -> 0x05e3, blocks: (B:3:0x001d, B:9:0x004f, B:11:0x0055, B:13:0x005d, B:15:0x0063, B:20:0x006f, B:24:0x007a, B:31:0x009d, B:33:0x00a1, B:35:0x00a7, B:37:0x00ad, B:39:0x00ba, B:40:0x00be, B:42:0x00c1, B:43:0x00c9, B:45:0x00cc, B:47:0x00d2, B:49:0x00de, B:51:0x00e8, B:54:0x00fb, B:53:0x00f6, B:55:0x00fd, B:284:0x04bd, B:286:0x04c3, B:58:0x0105, B:60:0x0114, B:62:0x012e, B:64:0x0135, B:66:0x013b, B:67:0x013f, B:69:0x0145, B:72:0x014d, B:74:0x0153, B:76:0x015a, B:78:0x0160, B:79:0x0164, B:81:0x016a, B:82:0x016e, B:84:0x0178, B:86:0x017e, B:88:0x0188, B:90:0x0196, B:92:0x019c, B:94:0x01a2, B:96:0x01ac, B:98:0x01bc, B:101:0x01c5, B:103:0x01cb, B:105:0x01d5, B:107:0x01e5, B:110:0x01ee, B:112:0x01f4, B:114:0x01fa, B:116:0x0204, B:118:0x020a, B:119:0x020d, B:122:0x0214, B:124:0x021b, B:126:0x0225, B:128:0x0233, B:130:0x0239, B:132:0x023f, B:134:0x0249, B:136:0x0259, B:139:0x0262, B:141:0x0268, B:143:0x0272, B:145:0x0282, B:148:0x028b, B:150:0x0291, B:152:0x0297, B:154:0x02a1, B:156:0x02a7, B:157:0x02aa, B:159:0x02af, B:162:0x02b6, B:164:0x02bb, B:167:0x02ca, B:168:0x02cd, B:170:0x02d3, B:172:0x02d9, B:173:0x02dc, B:175:0x02e1, B:177:0x02e7, B:178:0x02ea, B:181:0x02f0, B:183:0x02fa, B:185:0x0300, B:188:0x030e, B:190:0x0314, B:191:0x0317, B:193:0x031d, B:195:0x0327, B:197:0x032d, B:198:0x0330, B:199:0x0333, B:201:0x033d, B:203:0x0343, B:204:0x0346, B:205:0x0349, B:207:0x0353, B:209:0x0359, B:210:0x035c, B:211:0x035f, B:213:0x036d, B:215:0x0373, B:216:0x0376, B:219:0x038f, B:223:0x03a0, B:225:0x03a6, B:227:0x03ae, B:237:0x03d6, B:239:0x03e1, B:241:0x03e9, B:242:0x03fd, B:243:0x0400, B:245:0x0406, B:246:0x0409, B:248:0x0415, B:250:0x041f, B:252:0x0425, B:253:0x0428, B:254:0x042b, B:256:0x0435, B:258:0x043b, B:259:0x043e, B:261:0x0443, B:263:0x044d, B:265:0x0453, B:266:0x0456, B:267:0x0459, B:269:0x0463, B:271:0x0469, B:272:0x046c, B:273:0x046f, B:276:0x047f, B:229:0x03b6, B:231:0x03c2, B:234:0x03c9, B:282:0x0497, B:7:0x0038), top: B:362:0x001d }] */
    /* JADX WARN: Removed duplicated region for block: B:275:0x047d  */
    /* JADX WARN: Removed duplicated region for block: B:276:0x047f A[Catch: Exception -> 0x05e3, TryCatch #9 {Exception -> 0x05e3, blocks: (B:3:0x001d, B:9:0x004f, B:11:0x0055, B:13:0x005d, B:15:0x0063, B:20:0x006f, B:24:0x007a, B:31:0x009d, B:33:0x00a1, B:35:0x00a7, B:37:0x00ad, B:39:0x00ba, B:40:0x00be, B:42:0x00c1, B:43:0x00c9, B:45:0x00cc, B:47:0x00d2, B:49:0x00de, B:51:0x00e8, B:54:0x00fb, B:53:0x00f6, B:55:0x00fd, B:284:0x04bd, B:286:0x04c3, B:58:0x0105, B:60:0x0114, B:62:0x012e, B:64:0x0135, B:66:0x013b, B:67:0x013f, B:69:0x0145, B:72:0x014d, B:74:0x0153, B:76:0x015a, B:78:0x0160, B:79:0x0164, B:81:0x016a, B:82:0x016e, B:84:0x0178, B:86:0x017e, B:88:0x0188, B:90:0x0196, B:92:0x019c, B:94:0x01a2, B:96:0x01ac, B:98:0x01bc, B:101:0x01c5, B:103:0x01cb, B:105:0x01d5, B:107:0x01e5, B:110:0x01ee, B:112:0x01f4, B:114:0x01fa, B:116:0x0204, B:118:0x020a, B:119:0x020d, B:122:0x0214, B:124:0x021b, B:126:0x0225, B:128:0x0233, B:130:0x0239, B:132:0x023f, B:134:0x0249, B:136:0x0259, B:139:0x0262, B:141:0x0268, B:143:0x0272, B:145:0x0282, B:148:0x028b, B:150:0x0291, B:152:0x0297, B:154:0x02a1, B:156:0x02a7, B:157:0x02aa, B:159:0x02af, B:162:0x02b6, B:164:0x02bb, B:167:0x02ca, B:168:0x02cd, B:170:0x02d3, B:172:0x02d9, B:173:0x02dc, B:175:0x02e1, B:177:0x02e7, B:178:0x02ea, B:181:0x02f0, B:183:0x02fa, B:185:0x0300, B:188:0x030e, B:190:0x0314, B:191:0x0317, B:193:0x031d, B:195:0x0327, B:197:0x032d, B:198:0x0330, B:199:0x0333, B:201:0x033d, B:203:0x0343, B:204:0x0346, B:205:0x0349, B:207:0x0353, B:209:0x0359, B:210:0x035c, B:211:0x035f, B:213:0x036d, B:215:0x0373, B:216:0x0376, B:219:0x038f, B:223:0x03a0, B:225:0x03a6, B:227:0x03ae, B:237:0x03d6, B:239:0x03e1, B:241:0x03e9, B:242:0x03fd, B:243:0x0400, B:245:0x0406, B:246:0x0409, B:248:0x0415, B:250:0x041f, B:252:0x0425, B:253:0x0428, B:254:0x042b, B:256:0x0435, B:258:0x043b, B:259:0x043e, B:261:0x0443, B:263:0x044d, B:265:0x0453, B:266:0x0456, B:267:0x0459, B:269:0x0463, B:271:0x0469, B:272:0x046c, B:273:0x046f, B:276:0x047f, B:229:0x03b6, B:231:0x03c2, B:234:0x03c9, B:282:0x0497, B:7:0x0038), top: B:362:0x001d }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static /* synthetic */ void lambda$fetchLocationAddress$29(Locale locale, final Location location, int i, Locale locale2, final LocationFetchCallback locationFetchCallback) throws IOException {
        TLRPC.TL_messageMediaVenue tL_messageMediaVenue;
        TLRPC.TL_messageMediaVenue tL_messageMediaVenue2;
        TLRPC.TL_messageMediaVenue tL_messageMediaVenue3;
        final String str;
        final String str2;
        final TLRPC.TL_messageMediaVenue tL_messageMediaVenue4;
        final TLRPC.TL_messageMediaVenue tL_messageMediaVenue5;
        List<Address> fromLocation;
        List<Address> fromLocation2;
        TL_stories$TL_geoPointAddress tL_stories$TL_geoPointAddress;
        String string;
        String string2;
        String string3;
        String str3;
        String str4;
        String str5;
        boolean z;
        String strDetectOcean;
        String adminArea;
        String locality;
        String str6;
        String subLocality;
        String str7;
        String locality2;
        boolean z2;
        String subThoroughfare;
        boolean z3;
        String thoroughfare;
        String locality3;
        String countryName;
        String str8;
        String str9;
        StringBuilder sb;
        String countryName2;
        String locality4;
        boolean z4;
        String str10;
        String subLocality2;
        String str11;
        String locality5;
        String addressLine;
        StringBuilder sb2 = new StringBuilder();
        TL_stories$TL_geoPointAddress tL_stories$TL_geoPointAddress2 = new TL_stories$TL_geoPointAddress();
        TL_stories$TL_geoPointAddress tL_stories$TL_geoPointAddress3 = new TL_stories$TL_geoPointAddress();
        String str12 = null;
        try {
            fromLocation = new Geocoder(ApplicationLoader.applicationContext, locale).getFromLocation(location.getLatitude(), location.getLongitude(), 1);
            fromLocation2 = i == 2 ? locale2 == locale ? fromLocation : new Geocoder(ApplicationLoader.applicationContext, locale2).getFromLocation(location.getLatitude(), location.getLongitude(), 1) : null;
        } catch (Exception unused) {
            tL_messageMediaVenue = null;
        }
        if (fromLocation.size() > 0) {
            Address address = fromLocation.get(0);
            Address address2 = (fromLocation2 == null || fromLocation2.size() < 1) ? null : fromLocation2.get(0);
            if (i != 1) {
                StringBuilder sb3 = new StringBuilder();
                StringBuilder sb4 = new StringBuilder();
                StringBuilder sb5 = new StringBuilder();
                StringBuilder sb6 = new StringBuilder();
                String locality6 = TextUtils.isEmpty(null) ? address.getLocality() : null;
                if (TextUtils.isEmpty(locality6)) {
                    locality6 = address.getAdminArea();
                }
                if (TextUtils.isEmpty(locality6)) {
                    locality6 = address.getSubAdminArea();
                }
                String str13 = locality6;
                if (address2 != null) {
                    locality = TextUtils.isEmpty(null) ? address2.getLocality() : null;
                    if (TextUtils.isEmpty(locality)) {
                        locality = address2.getAdminArea();
                    }
                    if (TextUtils.isEmpty(locality)) {
                        locality = address2.getSubAdminArea();
                    }
                    adminArea = address2.getAdminArea();
                } else {
                    adminArea = null;
                    locality = null;
                }
                String thoroughfare2 = (!TextUtils.isEmpty(null) || TextUtils.equals(address.getThoroughfare(), str13) || TextUtils.equals(address.getThoroughfare(), address.getCountryName())) ? null : address.getThoroughfare();
                if (TextUtils.isEmpty(thoroughfare2) && !TextUtils.equals(address.getSubLocality(), str13)) {
                    str6 = thoroughfare2;
                    if (!TextUtils.equals(address.getSubLocality(), address.getCountryName())) {
                        subLocality = address.getSubLocality();
                    }
                    if (TextUtils.isEmpty(subLocality) || TextUtils.equals(address.getLocality(), str13)) {
                        str7 = subLocality;
                    } else {
                        str7 = subLocality;
                        if (!TextUtils.equals(address.getLocality(), address.getCountryName())) {
                            locality2 = address.getLocality();
                        }
                        if (TextUtils.isEmpty(locality2) || TextUtils.equals(locality2, str13) || TextUtils.equals(locality2, address.getCountryName())) {
                            sb6 = null;
                        } else {
                            if (sb6.length() > 0) {
                                sb6.append(", ");
                            }
                            sb6.append(locality2);
                        }
                        if (address2 != null) {
                            String thoroughfare3 = (!TextUtils.isEmpty(null) || TextUtils.equals(address2.getThoroughfare(), str13) || TextUtils.equals(address2.getThoroughfare(), address2.getCountryName())) ? null : address2.getThoroughfare();
                            if (TextUtils.isEmpty(thoroughfare3) && !TextUtils.equals(address2.getSubLocality(), str13)) {
                                str10 = thoroughfare3;
                                if (!TextUtils.equals(address2.getSubLocality(), address2.getCountryName())) {
                                    subLocality2 = address2.getSubLocality();
                                }
                                if (TextUtils.isEmpty(subLocality2) || TextUtils.equals(address2.getLocality(), str13)) {
                                    str11 = subLocality2;
                                } else {
                                    str11 = subLocality2;
                                    if (!TextUtils.equals(address2.getLocality(), address2.getCountryName())) {
                                        locality5 = address2.getLocality();
                                    }
                                    if (TextUtils.isEmpty(locality5) || TextUtils.equals(locality5, adminArea) || TextUtils.equals(locality5, address2.getCountryName())) {
                                        sb2 = null;
                                    } else {
                                        if (sb2.length() > 0) {
                                            sb2.append(", ");
                                        }
                                        sb2.append(locality5);
                                    }
                                    if (!TextUtils.isEmpty(sb2)) {
                                        int i2 = 0;
                                        while (true) {
                                            String[] strArr = unnamedRoads;
                                            if (i2 >= strArr.length) {
                                                break;
                                            }
                                            if (strArr[i2].equalsIgnoreCase(sb2.toString())) {
                                                sb6 = null;
                                                sb2 = null;
                                                break;
                                            }
                                            i2++;
                                        }
                                    }
                                }
                                locality5 = str11;
                                if (TextUtils.isEmpty(locality5)) {
                                    sb2 = null;
                                    if (!TextUtils.isEmpty(sb2)) {
                                    }
                                }
                                AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.messenger.LocationController$$ExternalSyntheticLambda10
                                    @Override // java.lang.Runnable
                                    public final void run() {
                                        LocationController.lambda$fetchLocationAddress$28(locationFetchCallback, str2, str, tL_messageMediaVenue4, tL_messageMediaVenue5, location);
                                    }
                                });
                            }
                            str10 = thoroughfare3;
                            subLocality2 = str10;
                            if (TextUtils.isEmpty(subLocality2)) {
                                str11 = subLocality2;
                                locality5 = str11;
                                if (TextUtils.isEmpty(locality5)) {
                                }
                            }
                            AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.messenger.LocationController$$ExternalSyntheticLambda10
                                @Override // java.lang.Runnable
                                public final void run() {
                                    LocationController.lambda$fetchLocationAddress$28(locationFetchCallback, str2, str, tL_messageMediaVenue4, tL_messageMediaVenue5, location);
                                }
                            });
                        }
                        if (TextUtils.isEmpty(str13)) {
                            if (sb5.length() > 0) {
                                sb5.append(", ");
                            }
                            sb5.append(str13);
                            if (sb6 != null) {
                                if (sb6.length() > 0) {
                                    sb6.append(", ");
                                }
                                sb6.append(str13);
                            }
                            z2 = false;
                        } else {
                            z2 = true;
                        }
                        subThoroughfare = address.getSubThoroughfare();
                        if (TextUtils.isEmpty(subThoroughfare)) {
                            sb3.append(subThoroughfare);
                            z3 = true;
                        } else {
                            z3 = false;
                        }
                        thoroughfare = address.getThoroughfare();
                        boolean z5 = z2;
                        if (!TextUtils.isEmpty(thoroughfare)) {
                            if (sb3.length() > 0) {
                                sb3.append(" ");
                            }
                            sb3.append(thoroughfare);
                            z3 = true;
                        }
                        if (!z3) {
                            String adminArea2 = address.getAdminArea();
                            if (!TextUtils.isEmpty(adminArea2)) {
                                if (sb3.length() > 0) {
                                    sb3.append(", ");
                                }
                                sb3.append(adminArea2);
                            }
                            String subAdminArea = address.getSubAdminArea();
                            if (!TextUtils.isEmpty(subAdminArea)) {
                                if (sb3.length() > 0) {
                                    sb3.append(", ");
                                }
                                sb3.append(subAdminArea);
                            }
                        }
                        locality3 = address.getLocality();
                        if (!TextUtils.isEmpty(locality3)) {
                            if (sb3.length() > 0) {
                                sb3.append(", ");
                            }
                            sb3.append(locality3);
                        }
                        String countryCode = address.getCountryCode();
                        countryName = address.getCountryName();
                        if (TextUtils.isEmpty(countryName)) {
                            if (sb3.length() > 0) {
                                sb3.append(", ");
                            }
                            sb3.append(countryName);
                            str8 = countryCode;
                            String language = locale.getLanguage();
                            str9 = adminArea;
                            sb = sb2;
                            if ("US".equals(address.getCountryCode())) {
                                tL_stories$TL_geoPointAddress = tL_stories$TL_geoPointAddress3;
                            } else {
                                tL_stories$TL_geoPointAddress = tL_stories$TL_geoPointAddress3;
                                if ("AE".equals(address.getCountryCode())) {
                                }
                                if ("GB".equals(address.getCountryCode()) || !"en".equals(language)) {
                                    if ("US".equals(address.getCountryCode())) {
                                        countryName = "USA";
                                    }
                                    if (sb5.length() > 0) {
                                        sb5.append(", ");
                                    }
                                    sb5.append(countryName);
                                } else {
                                    String[] strArrSplit = countryName.split(" ");
                                    countryName = "";
                                    for (String str14 : strArrSplit) {
                                        if (str14.length() > 0) {
                                            countryName = countryName + str14.charAt(0);
                                        }
                                    }
                                    if (sb5.length() > 0) {
                                    }
                                    sb5.append(countryName);
                                }
                            }
                            if ("en".equals(language) || "uk".equals(language) || "ru".equals(language)) {
                                String[] strArrSplit2 = countryName.split(" ");
                                countryName = "";
                                while (i < r5) {
                                }
                                if (sb5.length() > 0) {
                                }
                                sb5.append(countryName);
                            } else {
                                if ("GB".equals(address.getCountryCode())) {
                                }
                                if ("US".equals(address.getCountryCode())) {
                                }
                                if (sb5.length() > 0) {
                                }
                                sb5.append(countryName);
                            }
                            AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.messenger.LocationController$$ExternalSyntheticLambda10
                                @Override // java.lang.Runnable
                                public final void run() {
                                    LocationController.lambda$fetchLocationAddress$28(locationFetchCallback, str2, str, tL_messageMediaVenue4, tL_messageMediaVenue5, location);
                                }
                            });
                        }
                        str8 = countryCode;
                        str9 = adminArea;
                        sb = sb2;
                        tL_stories$TL_geoPointAddress = tL_stories$TL_geoPointAddress3;
                        countryName2 = address.getCountryName();
                        if (!TextUtils.isEmpty(countryName2)) {
                            if (sb4.length() > 0) {
                                sb4.append(", ");
                            }
                            sb4.append(countryName2);
                        }
                        locality4 = address.getLocality();
                        if (!TextUtils.isEmpty(locality4)) {
                            if (sb4.length() > 0) {
                                sb4.append(", ");
                            }
                            sb4.append(locality4);
                        }
                        if (!z3) {
                            String adminArea3 = address.getAdminArea();
                            if (!TextUtils.isEmpty(adminArea3)) {
                                if (sb4.length() > 0) {
                                    sb4.append(", ");
                                }
                                sb4.append(adminArea3);
                            }
                            String subAdminArea2 = address.getSubAdminArea();
                            if (!TextUtils.isEmpty(subAdminArea2)) {
                                if (sb4.length() > 0) {
                                    sb4.append(", ");
                                }
                                sb4.append(subAdminArea2);
                            }
                        }
                        string = sb3.toString();
                        string2 = sb4.toString();
                        string3 = sb5.toString();
                        String string4 = sb6 != null ? null : sb6.toString();
                        z4 = z5;
                        str12 = string4;
                        str5 = str9;
                        sb2 = sb;
                        str3 = str8;
                    }
                    locality2 = str7;
                    if (TextUtils.isEmpty(locality2)) {
                        sb6 = null;
                        if (address2 != null) {
                        }
                        if (TextUtils.isEmpty(str13)) {
                        }
                        subThoroughfare = address.getSubThoroughfare();
                        if (TextUtils.isEmpty(subThoroughfare)) {
                        }
                        thoroughfare = address.getThoroughfare();
                        boolean z52 = z2;
                        if (!TextUtils.isEmpty(thoroughfare)) {
                        }
                        if (!z3) {
                        }
                        locality3 = address.getLocality();
                        if (!TextUtils.isEmpty(locality3)) {
                        }
                        String countryCode2 = address.getCountryCode();
                        countryName = address.getCountryName();
                        if (TextUtils.isEmpty(countryName)) {
                        }
                        countryName2 = address.getCountryName();
                        if (!TextUtils.isEmpty(countryName2)) {
                        }
                        locality4 = address.getLocality();
                        if (!TextUtils.isEmpty(locality4)) {
                        }
                        if (!z3) {
                        }
                        string = sb3.toString();
                        string2 = sb4.toString();
                        string3 = sb5.toString();
                        if (sb6 != null) {
                        }
                        z4 = z52;
                        str12 = string4;
                        str5 = str9;
                        sb2 = sb;
                        str3 = str8;
                    }
                    AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.messenger.LocationController$$ExternalSyntheticLambda10
                        @Override // java.lang.Runnable
                        public final void run() {
                            LocationController.lambda$fetchLocationAddress$28(locationFetchCallback, str2, str, tL_messageMediaVenue4, tL_messageMediaVenue5, location);
                        }
                    });
                }
                str6 = thoroughfare2;
                subLocality = str6;
                if (TextUtils.isEmpty(subLocality)) {
                    str7 = subLocality;
                    locality2 = str7;
                    if (TextUtils.isEmpty(locality2)) {
                    }
                }
                AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.messenger.LocationController$$ExternalSyntheticLambda10
                    @Override // java.lang.Runnable
                    public final void run() {
                        LocationController.lambda$fetchLocationAddress$28(locationFetchCallback, str2, str, tL_messageMediaVenue4, tL_messageMediaVenue5, location);
                    }
                });
            }
            ArrayList arrayList = new ArrayList();
            try {
                addressLine = address.getAddressLine(0);
            } catch (Exception unused2) {
                addressLine = null;
            }
            if (TextUtils.isEmpty(addressLine)) {
                try {
                    arrayList.add(address.getSubThoroughfare());
                } catch (Exception unused3) {
                }
                try {
                    arrayList.add(address.getThoroughfare());
                } catch (Exception unused4) {
                }
                try {
                    arrayList.add(address.getAdminArea());
                } catch (Exception unused5) {
                }
                try {
                    arrayList.add(address.getCountryName());
                } catch (Exception unused6) {
                }
            } else {
                arrayList.add(addressLine);
            }
            int i3 = 0;
            while (i3 < arrayList.size()) {
                if (arrayList.get(i3) != null) {
                    String[] strArrSplit3 = ((String) arrayList.get(i3)).split(", ");
                    if (strArrSplit3.length > 1) {
                        arrayList.remove(i3);
                        for (String str15 : strArrSplit3) {
                            arrayList.add(i3, str15);
                            i3++;
                        }
                    }
                }
                i3++;
            }
            int i4 = 0;
            while (i4 < arrayList.size()) {
                if (TextUtils.isEmpty((CharSequence) arrayList.get(i4)) || arrayList.indexOf(arrayList.get(i4)) != i4 || ((String) arrayList.get(i4)).matches("^\\s*\\d{4,}\\s*$")) {
                    arrayList.remove(i4);
                    i4--;
                }
                i4++;
            }
            string = arrayList.isEmpty() ? null : TextUtils.join(", ", arrayList);
            string2 = string;
            tL_stories$TL_geoPointAddress = tL_stories$TL_geoPointAddress3;
            string3 = null;
            str3 = null;
            str5 = null;
            locality = null;
            z4 = true;
            z = z4;
            str4 = locality;
        } else {
            tL_stories$TL_geoPointAddress = tL_stories$TL_geoPointAddress3;
            string = i == 1 ? null : String.format(Locale.US, "Unknown address (%f,%f)", Double.valueOf(location.getLatitude()), Double.valueOf(location.getLongitude()));
            string2 = string;
            string3 = null;
            str3 = null;
            str4 = null;
            str5 = null;
            z = true;
            str12 = null;
        }
        if (TextUtils.isEmpty(string3)) {
            tL_messageMediaVenue2 = null;
        } else {
            tL_messageMediaVenue2 = new TLRPC.TL_messageMediaVenue();
            try {
                TLRPC.TL_geoPoint tL_geoPoint = new TLRPC.TL_geoPoint();
                tL_messageMediaVenue2.geo = tL_geoPoint;
                tL_geoPoint.lat = location.getLatitude();
                tL_messageMediaVenue2.geo._long = location.getLongitude();
                tL_messageMediaVenue2.query_id = -1L;
                tL_messageMediaVenue2.title = string3;
                tL_messageMediaVenue2.icon = z ? "https://ss3.4sqi.net/img/categories_v2/building/government_capitolbuilding_64.png" : "https://ss3.4sqi.net/img/categories_v2/travel/hotel_64.png";
                tL_messageMediaVenue2.emoji = countryCodeToEmoji(str3);
                tL_messageMediaVenue2.address = LocaleController.getString(z ? R.string.Country : R.string.PassportCity);
                tL_messageMediaVenue2.geoAddress = tL_stories$TL_geoPointAddress2;
                tL_stories$TL_geoPointAddress2.country_iso2 = str3;
                if (!z) {
                    if (!TextUtils.isEmpty(str5)) {
                        tL_stories$TL_geoPointAddress2.flags |= 1;
                        tL_stories$TL_geoPointAddress2.state = str5;
                    }
                    if (!TextUtils.isEmpty(str4)) {
                        tL_stories$TL_geoPointAddress2.flags |= 2;
                        tL_stories$TL_geoPointAddress2.city = str4;
                    }
                }
            } catch (Exception unused7) {
                tL_messageMediaVenue3 = null;
                str2 = String.format(Locale.US, "Unknown address (%f,%f)", Double.valueOf(location.getLatitude()), Double.valueOf(location.getLongitude()));
                str = str2;
                tL_messageMediaVenue4 = tL_messageMediaVenue2;
                tL_messageMediaVenue5 = tL_messageMediaVenue3;
                AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.messenger.LocationController$$ExternalSyntheticLambda10
                    @Override // java.lang.Runnable
                    public final void run() {
                        LocationController.lambda$fetchLocationAddress$28(locationFetchCallback, str2, str, tL_messageMediaVenue4, tL_messageMediaVenue5, location);
                    }
                });
            }
        }
        if (TextUtils.isEmpty(str12)) {
            tL_messageMediaVenue3 = null;
        } else {
            TLRPC.TL_messageMediaVenue tL_messageMediaVenue6 = new TLRPC.TL_messageMediaVenue();
            try {
                TLRPC.TL_geoPoint tL_geoPoint2 = new TLRPC.TL_geoPoint();
                tL_messageMediaVenue6.geo = tL_geoPoint2;
                tL_geoPoint2.lat = location.getLatitude();
                tL_messageMediaVenue6.geo._long = location.getLongitude();
                tL_messageMediaVenue6.query_id = -1L;
                tL_messageMediaVenue6.title = str12;
                tL_messageMediaVenue6.icon = "pin";
                tL_messageMediaVenue6.address = LocaleController.getString(R.string.PassportStreet1);
                TL_stories$TL_geoPointAddress tL_stories$TL_geoPointAddress4 = tL_stories$TL_geoPointAddress;
                tL_messageMediaVenue6.geoAddress = tL_stories$TL_geoPointAddress4;
                tL_stories$TL_geoPointAddress4.country_iso2 = str3;
                if (!TextUtils.isEmpty(str5)) {
                    tL_stories$TL_geoPointAddress4.flags |= 1;
                    tL_stories$TL_geoPointAddress4.state = str5;
                }
                if (!TextUtils.isEmpty(str4)) {
                    tL_stories$TL_geoPointAddress4.flags |= 2;
                    tL_stories$TL_geoPointAddress4.city = str4;
                }
                if (!TextUtils.isEmpty(sb2)) {
                    tL_stories$TL_geoPointAddress4.flags |= 4;
                    tL_stories$TL_geoPointAddress4.street = sb2.toString();
                }
                tL_messageMediaVenue3 = tL_messageMediaVenue6;
            } catch (Exception unused8) {
                tL_messageMediaVenue3 = tL_messageMediaVenue6;
                str2 = String.format(Locale.US, "Unknown address (%f,%f)", Double.valueOf(location.getLatitude()), Double.valueOf(location.getLongitude()));
                str = str2;
                tL_messageMediaVenue4 = tL_messageMediaVenue2;
                tL_messageMediaVenue5 = tL_messageMediaVenue3;
                AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.messenger.LocationController$$ExternalSyntheticLambda10
                    @Override // java.lang.Runnable
                    public final void run() {
                        LocationController.lambda$fetchLocationAddress$28(locationFetchCallback, str2, str, tL_messageMediaVenue4, tL_messageMediaVenue5, location);
                    }
                });
            }
        }
        if (tL_messageMediaVenue2 == null && tL_messageMediaVenue3 == null) {
            try {
                strDetectOcean = detectOcean(location.getLongitude(), location.getLatitude());
            } catch (Exception unused9) {
                TLRPC.TL_messageMediaVenue tL_messageMediaVenue7 = tL_messageMediaVenue3;
                tL_messageMediaVenue = tL_messageMediaVenue2;
                tL_messageMediaVenue2 = tL_messageMediaVenue;
                tL_messageMediaVenue3 = tL_messageMediaVenue7;
                str2 = String.format(Locale.US, "Unknown address (%f,%f)", Double.valueOf(location.getLatitude()), Double.valueOf(location.getLongitude()));
                str = str2;
                tL_messageMediaVenue4 = tL_messageMediaVenue2;
                tL_messageMediaVenue5 = tL_messageMediaVenue3;
                AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.messenger.LocationController$$ExternalSyntheticLambda10
                    @Override // java.lang.Runnable
                    public final void run() {
                        LocationController.lambda$fetchLocationAddress$28(locationFetchCallback, str2, str, tL_messageMediaVenue4, tL_messageMediaVenue5, location);
                    }
                });
            }
            if (strDetectOcean != null) {
                TLRPC.TL_messageMediaVenue tL_messageMediaVenue8 = new TLRPC.TL_messageMediaVenue();
                try {
                    TLRPC.TL_geoPoint tL_geoPoint3 = new TLRPC.TL_geoPoint();
                    tL_messageMediaVenue8.geo = tL_geoPoint3;
                    tL_geoPoint3.lat = location.getLatitude();
                    tL_messageMediaVenue8.geo._long = location.getLongitude();
                    tL_messageMediaVenue8.query_id = -1L;
                    tL_messageMediaVenue8.title = strDetectOcean;
                    tL_messageMediaVenue8.icon = "pin";
                    tL_messageMediaVenue8.emoji = "🌊";
                    tL_messageMediaVenue8.address = "Ocean";
                    str = string2;
                    tL_messageMediaVenue4 = tL_messageMediaVenue8;
                    tL_messageMediaVenue5 = tL_messageMediaVenue3;
                    str2 = string;
                } catch (Exception unused10) {
                    tL_messageMediaVenue2 = tL_messageMediaVenue8;
                    str2 = String.format(Locale.US, "Unknown address (%f,%f)", Double.valueOf(location.getLatitude()), Double.valueOf(location.getLongitude()));
                    str = str2;
                    tL_messageMediaVenue4 = tL_messageMediaVenue2;
                    tL_messageMediaVenue5 = tL_messageMediaVenue3;
                    AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.messenger.LocationController$$ExternalSyntheticLambda10
                        @Override // java.lang.Runnable
                        public final void run() {
                            LocationController.lambda$fetchLocationAddress$28(locationFetchCallback, str2, str, tL_messageMediaVenue4, tL_messageMediaVenue5, location);
                        }
                    });
                }
                AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.messenger.LocationController$$ExternalSyntheticLambda10
                    @Override // java.lang.Runnable
                    public final void run() {
                        LocationController.lambda$fetchLocationAddress$28(locationFetchCallback, str2, str, tL_messageMediaVenue4, tL_messageMediaVenue5, location);
                    }
                });
            }
        }
        str2 = string;
        str = string2;
        tL_messageMediaVenue4 = tL_messageMediaVenue2;
        tL_messageMediaVenue5 = tL_messageMediaVenue3;
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.messenger.LocationController$$ExternalSyntheticLambda10
            @Override // java.lang.Runnable
            public final void run() {
                LocationController.lambda$fetchLocationAddress$28(locationFetchCallback, str2, str, tL_messageMediaVenue4, tL_messageMediaVenue5, location);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$loadLiveLocations$25(long j, TLObject tLObject) {
        this.cacheRequests.delete(j);
        TLRPC.messages_Messages messages_messages = (TLRPC.messages_Messages) tLObject;
        int i = 0;
        while (i < messages_messages.messages.size()) {
            if (!(((TLRPC.Message) messages_messages.messages.get(i)).media instanceof TLRPC.TL_messageMediaGeoLive)) {
                messages_messages.messages.remove(i);
                i--;
            }
            i++;
        }
        getMessagesStorage().putUsersAndChats(messages_messages.users, messages_messages.chats, true, true);
        getMessagesController().putUsers(messages_messages.users, false);
        getMessagesController().putChats(messages_messages.chats, false);
        this.locationsCache.put(j, messages_messages.messages);
        NotificationCenter.getGlobalInstance().lambda$postNotificationNameOnUIThread$1(NotificationCenter.liveLocationsCacheChanged, Long.valueOf(j), Integer.valueOf(this.currentAccount));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$loadLiveLocations$26(final long j, final TLObject tLObject, TLRPC.TL_error tL_error) {
        if (tL_error != null) {
            return;
        }
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.messenger.LocationController$$ExternalSyntheticLambda26
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$loadLiveLocations$25(j, tLObject);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$loadSharingLocations$14(ArrayList arrayList) {
        this.sharingLocationsUI.addAll(arrayList);
        for (int i = 0; i < arrayList.size(); i++) {
            SharingLocationInfo sharingLocationInfo = (SharingLocationInfo) arrayList.get(i);
            this.sharingLocationsMapUI.put(sharingLocationInfo.did, sharingLocationInfo);
        }
        startService();
        NotificationCenter.getGlobalInstance().lambda$postNotificationNameOnUIThread$1(NotificationCenter.liveLocationsChanged, new Object[0]);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$loadSharingLocations$15(final ArrayList arrayList) {
        this.sharingLocations.addAll(arrayList);
        for (int i = 0; i < this.sharingLocations.size(); i++) {
            SharingLocationInfo sharingLocationInfo = this.sharingLocations.get(i);
            this.sharingLocationsMap.put(sharingLocationInfo.did, sharingLocationInfo);
        }
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.messenger.LocationController$$ExternalSyntheticLambda28
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$loadSharingLocations$14(arrayList);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$loadSharingLocations$16(ArrayList arrayList, ArrayList arrayList2, final ArrayList arrayList3) {
        getMessagesController().putUsers(arrayList, true);
        getMessagesController().putChats(arrayList2, true);
        Utilities.stageQueue.postRunnable(new Runnable() { // from class: org.telegram.messenger.LocationController$$ExternalSyntheticLambda8
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$loadSharingLocations$15(arrayList3);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$loadSharingLocations$17() {
        Long lValueOf;
        ArrayList<Long> arrayList;
        final ArrayList arrayList2 = new ArrayList();
        final ArrayList<TLRPC.User> arrayList3 = new ArrayList<>();
        final ArrayList<TLRPC.Chat> arrayList4 = new ArrayList<>();
        try {
            ArrayList<Long> arrayList5 = new ArrayList<>();
            ArrayList<Long> arrayList6 = new ArrayList<>();
            SQLiteCursor sQLiteCursorQueryFinalized = getMessagesStorage().getDatabase().queryFinalized("SELECT uid, mid, date, period, message, proximity FROM sharing_locations WHERE 1", new Object[0]);
            while (sQLiteCursorQueryFinalized.next()) {
                SharingLocationInfo sharingLocationInfo = new SharingLocationInfo();
                sharingLocationInfo.did = sQLiteCursorQueryFinalized.longValue(0);
                sharingLocationInfo.mid = sQLiteCursorQueryFinalized.intValue(1);
                sharingLocationInfo.stopTime = sQLiteCursorQueryFinalized.intValue(2);
                sharingLocationInfo.period = sQLiteCursorQueryFinalized.intValue(3);
                sharingLocationInfo.proximityMeters = sQLiteCursorQueryFinalized.intValue(5);
                sharingLocationInfo.account = this.currentAccount;
                NativeByteBuffer nativeByteBufferByteBufferValue = sQLiteCursorQueryFinalized.byteBufferValue(4);
                if (nativeByteBufferByteBufferValue != null) {
                    MessageObject messageObject = new MessageObject(this.currentAccount, TLRPC.Message.TLdeserialize(nativeByteBufferByteBufferValue, nativeByteBufferByteBufferValue.readInt32(false), false), false, false);
                    sharingLocationInfo.messageObject = messageObject;
                    MessagesStorage.addUsersAndChatsFromMessage(messageObject.messageOwner, arrayList5, arrayList6, null);
                    nativeByteBufferByteBufferValue.reuse();
                }
                arrayList2.add(sharingLocationInfo);
                if (DialogObject.isChatDialog(sharingLocationInfo.did)) {
                    if (!arrayList6.contains(Long.valueOf(-sharingLocationInfo.did))) {
                        lValueOf = Long.valueOf(-sharingLocationInfo.did);
                        arrayList = arrayList6;
                        arrayList.add(lValueOf);
                    }
                } else if (DialogObject.isUserDialog(sharingLocationInfo.did) && !arrayList5.contains(Long.valueOf(sharingLocationInfo.did))) {
                    lValueOf = Long.valueOf(sharingLocationInfo.did);
                    arrayList = arrayList5;
                    arrayList.add(lValueOf);
                }
            }
            sQLiteCursorQueryFinalized.dispose();
            if (!arrayList6.isEmpty()) {
                getMessagesStorage().getChatsInternal(TextUtils.join(",", arrayList6), arrayList4);
            }
            getMessagesStorage().getUsersInternal(arrayList5, arrayList3);
        } catch (Exception e) {
            FileLog.e(e);
        }
        if (arrayList2.isEmpty()) {
            return;
        }
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.messenger.LocationController$$ExternalSyntheticLambda27
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$loadSharingLocations$16(arrayList3, arrayList4, arrayList2);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$markLiveLoactionsAsRead$27(TLObject tLObject, TLRPC.TL_error tL_error) {
        if (tLObject instanceof TLRPC.TL_messages_affectedMessages) {
            TLRPC.TL_messages_affectedMessages tL_messages_affectedMessages = (TLRPC.TL_messages_affectedMessages) tLObject;
            getMessagesController().processNewDifferenceParams(-1, tL_messages_affectedMessages.pts, -1, tL_messages_affectedMessages.pts_count);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$0() {
        LocationController locationController = getAccountInstance().getLocationController();
        getNotificationCenter().addObserver(locationController, NotificationCenter.didReceiveNewMessages);
        getNotificationCenter().addObserver(locationController, NotificationCenter.messagesDeleted);
        getNotificationCenter().addObserver(locationController, NotificationCenter.replaceMessagesObjects);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onConnected$1(Integer num) {
        getNotificationCenter().lambda$postNotificationNameOnUIThread$1(NotificationCenter.needShowPlayServicesAlert, num);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onConnected$2(final Integer num) {
        if (this.sharingLocations.isEmpty()) {
            return;
        }
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.messenger.LocationController$$ExternalSyntheticLambda9
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$onConnected$1(num);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onConnected$3() {
        this.servicesAvailable = Boolean.FALSE;
        try {
            this.apiClient.disconnect();
            start();
        } catch (Throwable unused) {
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onConnected$4(final Integer num) {
        int iIntValue = num.intValue();
        if (iIntValue == 0) {
            startFusedLocationRequest(true);
        } else if (iIntValue == 1) {
            Utilities.stageQueue.postRunnable(new Runnable() { // from class: org.telegram.messenger.LocationController$$ExternalSyntheticLambda14
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$onConnected$2(num);
                }
            });
        } else {
            if (iIntValue != 2) {
                return;
            }
            Utilities.stageQueue.postRunnable(new Runnable() { // from class: org.telegram.messenger.LocationController$$ExternalSyntheticLambda13
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$onConnected$3();
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$removeAllLocationSharings$22(TLObject tLObject, TLRPC.TL_error tL_error) {
        if (tL_error != null) {
            return;
        }
        getMessagesController().processUpdates((TLRPC.Updates) tLObject, false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$removeAllLocationSharings$23() {
        this.sharingLocationsUI.clear();
        this.sharingLocationsMapUI.clear();
        stopService();
        NotificationCenter.getGlobalInstance().lambda$postNotificationNameOnUIThread$1(NotificationCenter.liveLocationsChanged, new Object[0]);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$removeAllLocationSharings$24() {
        for (int i = 0; i < this.sharingLocations.size(); i++) {
            SharingLocationInfo sharingLocationInfo = this.sharingLocations.get(i);
            TLRPC.TL_messages_editMessage tL_messages_editMessage = new TLRPC.TL_messages_editMessage();
            tL_messages_editMessage.peer = getMessagesController().getInputPeer(sharingLocationInfo.did);
            tL_messages_editMessage.id = sharingLocationInfo.mid;
            tL_messages_editMessage.flags |= LiteMode.FLAG_ANIMATED_EMOJI_KEYBOARD_NOT_PREMIUM;
            TLRPC.TL_inputMediaGeoLive tL_inputMediaGeoLive = new TLRPC.TL_inputMediaGeoLive();
            tL_messages_editMessage.media = tL_inputMediaGeoLive;
            tL_inputMediaGeoLive.stopped = true;
            tL_inputMediaGeoLive.geo_point = new TLRPC.TL_inputGeoPointEmpty();
            getConnectionsManager().sendRequest(tL_messages_editMessage, new RequestDelegate() { // from class: org.telegram.messenger.LocationController$$ExternalSyntheticLambda24
                @Override // org.telegram.tgnet.RequestDelegate
                public final void run(TLObject tLObject, TLRPC.TL_error tL_error) {
                    this.f$0.lambda$removeAllLocationSharings$22(tLObject, tL_error);
                }
            });
        }
        this.sharingLocations.clear();
        this.sharingLocationsMap.clear();
        saveSharingLocation(null, 2);
        stop(true);
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.messenger.LocationController$$ExternalSyntheticLambda25
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$removeAllLocationSharings$23();
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$removeSharingLocation$19(TLObject tLObject, TLRPC.TL_error tL_error) {
        if (tL_error != null) {
            return;
        }
        getMessagesController().processUpdates((TLRPC.Updates) tLObject, false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$removeSharingLocation$20(SharingLocationInfo sharingLocationInfo) {
        this.sharingLocationsUI.remove(sharingLocationInfo);
        this.sharingLocationsMapUI.remove(sharingLocationInfo.did);
        if (this.sharingLocationsUI.isEmpty()) {
            stopService();
        }
        NotificationCenter.getGlobalInstance().lambda$postNotificationNameOnUIThread$1(NotificationCenter.liveLocationsChanged, new Object[0]);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$removeSharingLocation$21(long j) {
        final SharingLocationInfo sharingLocationInfo = (SharingLocationInfo) this.sharingLocationsMap.get(j);
        this.sharingLocationsMap.remove(j);
        if (sharingLocationInfo != null) {
            TLRPC.TL_messages_editMessage tL_messages_editMessage = new TLRPC.TL_messages_editMessage();
            tL_messages_editMessage.peer = getMessagesController().getInputPeer(sharingLocationInfo.did);
            tL_messages_editMessage.id = sharingLocationInfo.mid;
            tL_messages_editMessage.flags |= LiteMode.FLAG_ANIMATED_EMOJI_KEYBOARD_NOT_PREMIUM;
            TLRPC.TL_inputMediaGeoLive tL_inputMediaGeoLive = new TLRPC.TL_inputMediaGeoLive();
            tL_messages_editMessage.media = tL_inputMediaGeoLive;
            tL_inputMediaGeoLive.stopped = true;
            tL_inputMediaGeoLive.geo_point = new TLRPC.TL_inputGeoPointEmpty();
            getConnectionsManager().sendRequest(tL_messages_editMessage, new RequestDelegate() { // from class: org.telegram.messenger.LocationController$$ExternalSyntheticLambda15
                @Override // org.telegram.tgnet.RequestDelegate
                public final void run(TLObject tLObject, TLRPC.TL_error tL_error) {
                    this.f$0.lambda$removeSharingLocation$19(tLObject, tL_error);
                }
            });
            this.sharingLocations.remove(sharingLocationInfo);
            saveSharingLocation(sharingLocationInfo, 1);
            AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.messenger.LocationController$$ExternalSyntheticLambda16
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$removeSharingLocation$20(sharingLocationInfo);
                }
            });
            if (this.sharingLocations.isEmpty()) {
                stop(true);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$saveSharingLocation$18(int i, SharingLocationInfo sharingLocationInfo) {
        SQLitePreparedStatement sQLitePreparedStatementExecuteFast;
        try {
            if (i == 2) {
                sQLitePreparedStatementExecuteFast = getMessagesStorage().getDatabase().executeFast("DELETE FROM sharing_locations WHERE 1");
            } else {
                if (i != 1) {
                    if (sharingLocationInfo == null) {
                        return;
                    }
                    SQLitePreparedStatement sQLitePreparedStatementExecuteFast2 = getMessagesStorage().getDatabase().executeFast("REPLACE INTO sharing_locations VALUES(?, ?, ?, ?, ?, ?)");
                    sQLitePreparedStatementExecuteFast2.requery();
                    NativeByteBuffer nativeByteBuffer = new NativeByteBuffer(sharingLocationInfo.messageObject.messageOwner.getObjectSize());
                    sharingLocationInfo.messageObject.messageOwner.serializeToStream(nativeByteBuffer);
                    sQLitePreparedStatementExecuteFast2.bindLong(1, sharingLocationInfo.did);
                    sQLitePreparedStatementExecuteFast2.bindInteger(2, sharingLocationInfo.mid);
                    sQLitePreparedStatementExecuteFast2.bindInteger(3, sharingLocationInfo.stopTime);
                    sQLitePreparedStatementExecuteFast2.bindInteger(4, sharingLocationInfo.period);
                    sQLitePreparedStatementExecuteFast2.bindByteBuffer(5, nativeByteBuffer);
                    sQLitePreparedStatementExecuteFast2.bindInteger(6, sharingLocationInfo.proximityMeters);
                    sQLitePreparedStatementExecuteFast2.step();
                    sQLitePreparedStatementExecuteFast2.dispose();
                    nativeByteBuffer.reuse();
                    return;
                }
                if (sharingLocationInfo == null) {
                    return;
                }
                sQLitePreparedStatementExecuteFast = getMessagesStorage().getDatabase().executeFast("DELETE FROM sharing_locations WHERE uid = " + sharingLocationInfo.did);
            }
            sQLitePreparedStatementExecuteFast.stepThis().dispose();
        } catch (Exception e) {
            FileLog.e(e);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$setLastKnownLocation$10() {
        NotificationCenter.getGlobalInstance().lambda$postNotificationNameOnUIThread$1(NotificationCenter.newLocationAvailable, new Object[0]);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$setProximityLocation$12(int i, long j) {
        try {
            SQLitePreparedStatement sQLitePreparedStatementExecuteFast = getMessagesStorage().getDatabase().executeFast("UPDATE sharing_locations SET proximity = ? WHERE uid = ?");
            sQLitePreparedStatementExecuteFast.requery();
            sQLitePreparedStatementExecuteFast.bindInteger(1, i);
            sQLitePreparedStatementExecuteFast.bindLong(2, j);
            sQLitePreparedStatementExecuteFast.step();
            sQLitePreparedStatementExecuteFast.dispose();
        } catch (Exception e) {
            FileLog.e(e);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$setProximityLocation$13() {
        broadcastLastKnownLocation(true);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$startFusedLocationRequest$5(boolean z) {
        if (!z) {
            this.servicesAvailable = Boolean.FALSE;
        }
        if (this.sharingLocations.isEmpty()) {
            return;
        }
        if (!z) {
            start();
            return;
        }
        try {
            ApplicationLoader.getLocationServiceProvider().getLastLocation(new Consumer() { // from class: org.telegram.messenger.LocationController$$ExternalSyntheticLambda7
                @Override // androidx.core.util.Consumer
                public final void accept(Object obj) {
                    this.f$0.setLastKnownLocation((Location) obj);
                }
            });
            ApplicationLoader.getLocationServiceProvider().requestLocationUpdates(this.locationRequest, this.fusedLocationListener);
        } catch (Throwable th) {
            FileLog.e(th);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$update$8(SharingLocationInfo sharingLocationInfo) {
        this.sharingLocationsUI.remove(sharingLocationInfo);
        this.sharingLocationsMapUI.remove(sharingLocationInfo.did);
        if (this.sharingLocationsUI.isEmpty()) {
            stopService();
        }
        NotificationCenter.getGlobalInstance().lambda$postNotificationNameOnUIThread$1(NotificationCenter.liveLocationsChanged, new Object[0]);
    }

    private void loadSharingLocations() {
        getMessagesStorage().getStorageQueue().postRunnable(new Runnable() { // from class: org.telegram.messenger.LocationController$$ExternalSyntheticLambda6
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$loadSharingLocations$17();
            }
        });
    }

    private void saveSharingLocation(final SharingLocationInfo sharingLocationInfo, final int i) {
        getMessagesStorage().getStorageQueue().postRunnable(new Runnable() { // from class: org.telegram.messenger.LocationController$$ExternalSyntheticLambda21
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$saveSharingLocation$18(i, sharingLocationInfo);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setLastKnownLocation(Location location) {
        if (location == null || (SystemClock.elapsedRealtimeNanos() - location.getElapsedRealtimeNanos()) / 1000000000 <= 300) {
            this.lastKnownLocation = location;
            if (location != null) {
                AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.messenger.LocationController$$ExternalSyntheticLambda11
                    @Override // java.lang.Runnable
                    public final void run() {
                        LocationController.lambda$setLastKnownLocation$10();
                    }
                });
            }
        }
    }

    private boolean shouldSendLocationNow() {
        return shouldStopGps() && Math.abs(this.lastLocationSendTime - SystemClock.elapsedRealtime()) >= 2000;
    }

    private boolean shouldStopGps() {
        return SystemClock.elapsedRealtime() > this.locationEndWatchTime;
    }

    private void start() {
        if (this.started) {
            return;
        }
        this.lastLocationStartTime = SystemClock.elapsedRealtime();
        this.started = true;
        if (checkServices()) {
            try {
                this.apiClient.connect();
                return;
            } catch (Throwable th) {
                FileLog.e(th);
            }
        }
        try {
            this.locationManager.requestLocationUpdates("gps", 1L, BitmapDescriptorFactory.HUE_RED, this.gpsLocationListener);
        } catch (Exception e) {
            FileLog.e(e);
        }
        try {
            this.locationManager.requestLocationUpdates("network", 1L, BitmapDescriptorFactory.HUE_RED, this.networkLocationListener);
        } catch (Exception e2) {
            FileLog.e(e2);
        }
        try {
            this.locationManager.requestLocationUpdates("passive", 1L, BitmapDescriptorFactory.HUE_RED, this.passiveLocationListener);
        } catch (Exception e3) {
            FileLog.e(e3);
        }
        if (this.lastKnownLocation == null) {
            try {
                setLastKnownLocation(this.locationManager.getLastKnownLocation("gps"));
                if (this.lastKnownLocation == null) {
                    setLastKnownLocation(this.locationManager.getLastKnownLocation("network"));
                }
            } catch (Exception e4) {
                FileLog.e(e4);
            }
        }
    }

    private void startService() {
        try {
            if (!PermissionRequest.hasPermission("android.permission.ACCESS_COARSE_LOCATION") && !PermissionRequest.hasPermission("android.permission.ACCESS_FINE_LOCATION")) {
                return;
            }
            ApplicationLoader.applicationContext.startService(new Intent(ApplicationLoader.applicationContext, (Class<?>) LocationSharingService.class));
        } catch (Throwable th) {
            FileLog.e(th);
        }
    }

    private void stop(boolean z) {
        this.started = false;
        if (checkServices()) {
            try {
                ApplicationLoader.getLocationServiceProvider().removeLocationUpdates(this.fusedLocationListener);
                this.apiClient.disconnect();
            } catch (Throwable th) {
                FileLog.e(th, false);
            }
        }
        this.locationManager.removeUpdates(this.gpsLocationListener);
        if (z) {
            this.locationManager.removeUpdates(this.networkLocationListener);
            this.locationManager.removeUpdates(this.passiveLocationListener);
        }
    }

    private void stopService() {
        ApplicationLoader.applicationContext.stopService(new Intent(ApplicationLoader.applicationContext, (Class<?>) LocationSharingService.class));
    }

    protected void addSharingLocation(TLRPC.Message message) {
        final SharingLocationInfo sharingLocationInfo = new SharingLocationInfo();
        sharingLocationInfo.did = message.dialog_id;
        sharingLocationInfo.mid = message.id;
        TLRPC.MessageMedia messageMedia = message.media;
        sharingLocationInfo.period = messageMedia.period;
        int i = messageMedia.proximity_notification_radius;
        sharingLocationInfo.proximityMeters = i;
        sharingLocationInfo.lastSentProximityMeters = i;
        sharingLocationInfo.account = this.currentAccount;
        sharingLocationInfo.messageObject = new MessageObject(this.currentAccount, message, false, false);
        if (sharingLocationInfo.period == Integer.MAX_VALUE) {
            sharingLocationInfo.stopTime = Integer.MAX_VALUE;
        } else {
            sharingLocationInfo.stopTime = getConnectionsManager().getCurrentTime() + sharingLocationInfo.period;
        }
        final SharingLocationInfo sharingLocationInfo2 = (SharingLocationInfo) this.sharingLocationsMap.get(sharingLocationInfo.did);
        this.sharingLocationsMap.put(sharingLocationInfo.did, sharingLocationInfo);
        if (sharingLocationInfo2 != null) {
            this.sharingLocations.remove(sharingLocationInfo2);
        }
        this.sharingLocations.add(sharingLocationInfo);
        saveSharingLocation(sharingLocationInfo, 0);
        this.lastLocationSendTime = SystemClock.elapsedRealtime() - 25000;
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.messenger.LocationController$$ExternalSyntheticLambda17
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$addSharingLocation$11(sharingLocationInfo2, sharingLocationInfo);
            }
        });
    }

    public void cleanup() {
        this.sharingLocationsUI.clear();
        this.sharingLocationsMapUI.clear();
        this.locationsCache.clear();
        this.cacheRequests.clear();
        this.lastReadLocationTime.clear();
        stopService();
        Utilities.stageQueue.postRunnable(new Runnable() { // from class: org.telegram.messenger.LocationController$$ExternalSyntheticLambda4
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$cleanup$9();
            }
        });
    }

    @Override // org.telegram.messenger.NotificationCenter.NotificationCenterDelegate
    public void didReceivedNotification(int i, int i2, Object... objArr) {
        ArrayList arrayList;
        ArrayList arrayList2;
        if (i == NotificationCenter.didReceiveNewMessages) {
            if (((Boolean) objArr[2]).booleanValue()) {
                return;
            }
            Long l = (Long) objArr[0];
            long jLongValue = l.longValue();
            if (isSharingLocation(jLongValue) && (arrayList2 = (ArrayList) this.locationsCache.get(jLongValue)) != null) {
                ArrayList arrayList3 = (ArrayList) objArr[1];
                boolean z = false;
                for (int i3 = 0; i3 < arrayList3.size(); i3++) {
                    MessageObject messageObject = (MessageObject) arrayList3.get(i3);
                    if (messageObject.isLiveLocation()) {
                        int i4 = 0;
                        while (true) {
                            if (i4 >= arrayList2.size()) {
                                arrayList2.add(messageObject.messageOwner);
                                break;
                            } else {
                                if (MessageObject.getFromChatId((TLRPC.Message) arrayList2.get(i4)) == messageObject.getFromChatId()) {
                                    arrayList2.set(i4, messageObject.messageOwner);
                                    break;
                                }
                                i4++;
                            }
                        }
                        z = true;
                    } else if (messageObject.messageOwner.action instanceof TLRPC.TL_messageActionGeoProximityReached) {
                        long dialogId = messageObject.getDialogId();
                        if (DialogObject.isUserDialog(dialogId)) {
                            setProximityLocation(dialogId, 0, false);
                        }
                    }
                }
                if (z) {
                    NotificationCenter.getGlobalInstance().lambda$postNotificationNameOnUIThread$1(NotificationCenter.liveLocationsCacheChanged, l, Integer.valueOf(this.currentAccount));
                    return;
                }
                return;
            }
            return;
        }
        if (i == NotificationCenter.messagesDeleted) {
            if (((Boolean) objArr[2]).booleanValue() || this.sharingLocationsUI.isEmpty()) {
                return;
            }
            ArrayList arrayList4 = (ArrayList) objArr[0];
            long jLongValue2 = ((Long) objArr[1]).longValue();
            ArrayList arrayList5 = null;
            for (int i5 = 0; i5 < this.sharingLocationsUI.size(); i5++) {
                SharingLocationInfo sharingLocationInfo = this.sharingLocationsUI.get(i5);
                MessageObject messageObject2 = sharingLocationInfo.messageObject;
                if (jLongValue2 == (messageObject2 != null ? messageObject2.getChannelId() : 0L) && arrayList4.contains(Integer.valueOf(sharingLocationInfo.mid))) {
                    if (arrayList5 == null) {
                        arrayList5 = new ArrayList();
                    }
                    arrayList5.add(Long.valueOf(sharingLocationInfo.did));
                }
            }
            if (arrayList5 != null) {
                for (int i6 = 0; i6 < arrayList5.size(); i6++) {
                    removeSharingLocation(((Long) arrayList5.get(i6)).longValue());
                }
                return;
            }
            return;
        }
        if (i == NotificationCenter.replaceMessagesObjects) {
            Long l2 = (Long) objArr[0];
            long jLongValue3 = l2.longValue();
            if (isSharingLocation(jLongValue3) && (arrayList = (ArrayList) this.locationsCache.get(jLongValue3)) != null) {
                ArrayList arrayList6 = (ArrayList) objArr[1];
                boolean z2 = false;
                for (int i7 = 0; i7 < arrayList6.size(); i7++) {
                    MessageObject messageObject3 = (MessageObject) arrayList6.get(i7);
                    int i8 = 0;
                    while (true) {
                        if (i8 >= arrayList.size()) {
                            break;
                        }
                        if (MessageObject.getFromChatId((TLRPC.Message) arrayList.get(i8)) == messageObject3.getFromChatId()) {
                            if (messageObject3.isLiveLocation()) {
                                arrayList.set(i8, messageObject3.messageOwner);
                            } else {
                                arrayList.remove(i8);
                            }
                            z2 = true;
                        } else {
                            i8++;
                        }
                    }
                }
                if (z2) {
                    NotificationCenter.getGlobalInstance().lambda$postNotificationNameOnUIThread$1(NotificationCenter.liveLocationsCacheChanged, l2, Integer.valueOf(this.currentAccount));
                }
            }
        }
    }

    public Location getLastKnownLocation() {
        return this.lastKnownLocation;
    }

    public SharingLocationInfo getSharingLocationInfo(long j) {
        return (SharingLocationInfo) this.sharingLocationsMapUI.get(j);
    }

    public boolean isSharingLocation(long j) {
        return this.sharingLocationsMapUI.indexOfKey(j) >= 0;
    }

    public void loadLiveLocations(final long j) {
        if (this.cacheRequests.indexOfKey(j) >= 0) {
            return;
        }
        this.cacheRequests.put(j, Boolean.TRUE);
        TLRPC.TL_messages_getRecentLocations tL_messages_getRecentLocations = new TLRPC.TL_messages_getRecentLocations();
        tL_messages_getRecentLocations.peer = getMessagesController().getInputPeer(j);
        tL_messages_getRecentLocations.limit = 100;
        getConnectionsManager().sendRequest(tL_messages_getRecentLocations, new RequestDelegate() { // from class: org.telegram.messenger.LocationController$$ExternalSyntheticLambda23
            @Override // org.telegram.tgnet.RequestDelegate
            public final void run(TLObject tLObject, TLRPC.TL_error tL_error) {
                this.f$0.lambda$loadLiveLocations$26(j, tLObject, tL_error);
            }
        });
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:23:0x0077  */
    /* JADX WARN: Type inference failed for: r1v10, types: [org.telegram.tgnet.TLRPC$TL_channels_readMessageContents] */
    /* JADX WARN: Type inference failed for: r1v6, types: [org.telegram.tgnet.TLRPC$TL_messages_readMessageContents] */
    /* JADX WARN: Type inference failed for: r1v7, types: [org.telegram.tgnet.TLObject] */
    /* JADX WARN: Type inference failed for: r7v2, types: [org.telegram.tgnet.ConnectionsManager] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void markLiveLoactionsAsRead(long j) {
        ArrayList arrayList;
        ?? tL_messages_readMessageContents;
        if (DialogObject.isEncryptedDialog(j) || (arrayList = (ArrayList) this.locationsCache.get(j)) == null || arrayList.isEmpty()) {
            return;
        }
        Integer num = (Integer) this.lastReadLocationTime.get(j);
        int iElapsedRealtime = (int) (SystemClock.elapsedRealtime() / 1000);
        if (num == null || num.intValue() + 60 <= iElapsedRealtime) {
            this.lastReadLocationTime.put(j, Integer.valueOf(iElapsedRealtime));
            int i = 0;
            if (DialogObject.isChatDialog(j)) {
                long j2 = -j;
                if (ChatObject.isChannel(j2, this.currentAccount)) {
                    tL_messages_readMessageContents = new TLRPC.TL_channels_readMessageContents();
                    int size = arrayList.size();
                    while (i < size) {
                        tL_messages_readMessageContents.id.add(Integer.valueOf(((TLRPC.Message) arrayList.get(i)).id));
                        i++;
                    }
                    tL_messages_readMessageContents.channel = getMessagesController().getInputChannel(j2);
                } else {
                    tL_messages_readMessageContents = new TLRPC.TL_messages_readMessageContents();
                    int size2 = arrayList.size();
                    while (i < size2) {
                        tL_messages_readMessageContents.id.add(Integer.valueOf(((TLRPC.Message) arrayList.get(i)).id));
                        i++;
                    }
                }
            }
            getConnectionsManager().sendRequest(tL_messages_readMessageContents, new RequestDelegate() { // from class: org.telegram.messenger.LocationController$$ExternalSyntheticLambda29
                @Override // org.telegram.tgnet.RequestDelegate
                public final void run(TLObject tLObject, TLRPC.TL_error tL_error) {
                    this.f$0.lambda$markLiveLoactionsAsRead$27(tLObject, tL_error);
                }
            });
        }
    }

    @Override // org.telegram.messenger.ILocationServiceProvider.IAPIConnectionCallbacks
    public void onConnected(Bundle bundle) {
        this.wasConnectedToPlayServices = true;
        try {
            if (Build.VERSION.SDK_INT >= 21) {
                ApplicationLoader.getLocationServiceProvider().checkLocationSettings(this.locationRequest, new Consumer() { // from class: org.telegram.messenger.LocationController$$ExternalSyntheticLambda5
                    @Override // androidx.core.util.Consumer
                    public final void accept(Object obj) {
                        this.f$0.lambda$onConnected$4((Integer) obj);
                    }
                });
            } else {
                startFusedLocationRequest(true);
            }
        } catch (Throwable th) {
            FileLog.e(th);
        }
    }

    @Override // org.telegram.messenger.ILocationServiceProvider.IAPIOnConnectionFailedListener
    public void onConnectionFailed() {
        if (this.wasConnectedToPlayServices) {
            return;
        }
        this.servicesAvailable = Boolean.FALSE;
        if (this.started) {
            this.started = false;
            start();
        }
    }

    @Override // org.telegram.messenger.ILocationServiceProvider.IAPIConnectionCallbacks
    public void onConnectionSuspended(int i) {
    }

    public void removeAllLocationSharings() {
        Utilities.stageQueue.postRunnable(new Runnable() { // from class: org.telegram.messenger.LocationController$$ExternalSyntheticLambda30
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$removeAllLocationSharings$24();
            }
        });
    }

    public void removeSharingLocation(final long j) {
        Utilities.stageQueue.postRunnable(new Runnable() { // from class: org.telegram.messenger.LocationController$$ExternalSyntheticLambda2
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$removeSharingLocation$21(j);
            }
        });
    }

    public void setMapLocation(Location location, boolean z) {
        long jElapsedRealtime;
        long j;
        Location location2;
        if (location == null) {
            return;
        }
        this.lastLocationByMaps = true;
        if (!z && ((location2 = this.lastKnownLocation) == null || location2.distanceTo(location) < 20.0f)) {
            if (this.locationSentSinceLastMapUpdate) {
                jElapsedRealtime = SystemClock.elapsedRealtime();
                j = 10000;
            }
            setLastKnownLocation(location);
        }
        jElapsedRealtime = SystemClock.elapsedRealtime();
        j = 30000;
        this.lastLocationSendTime = jElapsedRealtime - j;
        this.locationSentSinceLastMapUpdate = false;
        setLastKnownLocation(location);
    }

    protected void setNewLocationEndWatchTime() {
        if (this.sharingLocations.isEmpty()) {
            return;
        }
        this.locationEndWatchTime = SystemClock.elapsedRealtime() + 65000;
        start();
    }

    public boolean setProximityLocation(final long j, final int i, boolean z) {
        SharingLocationInfo sharingLocationInfo = (SharingLocationInfo) this.sharingLocationsMapUI.get(j);
        if (sharingLocationInfo != null) {
            sharingLocationInfo.proximityMeters = i;
        }
        getMessagesStorage().getStorageQueue().postRunnable(new Runnable() { // from class: org.telegram.messenger.LocationController$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$setProximityLocation$12(i, j);
            }
        });
        if (z) {
            Utilities.stageQueue.postRunnable(new Runnable() { // from class: org.telegram.messenger.LocationController$$ExternalSyntheticLambda1
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$setProximityLocation$13();
                }
            });
        }
        return sharingLocationInfo != null;
    }

    public void startFusedLocationRequest(final boolean z) {
        Utilities.stageQueue.postRunnable(new Runnable() { // from class: org.telegram.messenger.LocationController$$ExternalSyntheticLambda19
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$startFusedLocationRequest$5(z);
            }
        });
    }

    protected void update() {
        getUserConfig();
        if (!this.sharingLocations.isEmpty()) {
            int i = 0;
            while (i < this.sharingLocations.size()) {
                final SharingLocationInfo sharingLocationInfo = this.sharingLocations.get(i);
                if (sharingLocationInfo.stopTime <= getConnectionsManager().getCurrentTime()) {
                    this.sharingLocations.remove(i);
                    this.sharingLocationsMap.remove(sharingLocationInfo.did);
                    saveSharingLocation(sharingLocationInfo, 1);
                    AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.messenger.LocationController$$ExternalSyntheticLambda3
                        @Override // java.lang.Runnable
                        public final void run() {
                            this.f$0.lambda$update$8(sharingLocationInfo);
                        }
                    });
                    i--;
                }
                i++;
            }
        }
        if (!this.started) {
            if (this.sharingLocations.isEmpty() || Math.abs(this.lastLocationSendTime - SystemClock.elapsedRealtime()) <= 30000) {
                return;
            }
            this.lastLocationStartTime = SystemClock.elapsedRealtime();
            start();
            return;
        }
        long jElapsedRealtime = SystemClock.elapsedRealtime();
        if (this.lastLocationByMaps || Math.abs(this.lastLocationStartTime - jElapsedRealtime) > 10000 || shouldSendLocationNow()) {
            this.lastLocationByMaps = false;
            this.locationSentSinceLastMapUpdate = true;
            boolean z = SystemClock.elapsedRealtime() - this.lastLocationSendTime > 2000;
            this.lastLocationStartTime = jElapsedRealtime;
            this.lastLocationSendTime = SystemClock.elapsedRealtime();
            broadcastLastKnownLocation(z);
        }
    }
}
