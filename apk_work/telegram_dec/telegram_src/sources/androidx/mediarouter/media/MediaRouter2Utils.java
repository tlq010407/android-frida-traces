package androidx.mediarouter.media;

import android.media.MediaRoute2Info;
import android.media.RouteDiscoveryPreference;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import androidx.mediarouter.media.MediaRouteDescriptor;
import com.huawei.hms.adapter.internal.CommonCode;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Set;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes.dex */
abstract class MediaRouter2Utils {

    private static final class Api34Impl {
        public static void copyDescriptorVisibilityToBuilder(MediaRoute2Info.Builder builder, MediaRouteDescriptor mediaRouteDescriptor) {
            if (mediaRouteDescriptor.isVisibilityPublic()) {
                builder.setVisibilityPublic();
            } else {
                builder.setVisibilityRestricted(mediaRouteDescriptor.getAllowedPackages());
            }
        }

        public static Set<String> getDeduplicationIds(MediaRoute2Info mediaRoute2Info) {
            return mediaRoute2Info.getDeduplicationIds();
        }

        public static int getType(MediaRoute2Info mediaRoute2Info) {
            return mediaRoute2Info.getType();
        }

        public static void setDeduplicationIds(MediaRoute2Info.Builder builder, Set<String> set) {
            builder.setDeduplicationIds(set);
        }

        public static void setDeviceType(MediaRoute2Info.Builder builder, int i) {
            builder.setType(i);
        }
    }

    private static int fwkDeviceTypeToAndroidXDeviceType(int i) {
        if (i == 2) {
            return 12;
        }
        if (i == 3) {
            return 13;
        }
        if (i == 4) {
            return 14;
        }
        if (i == 22) {
            return 20;
        }
        if (i == 23) {
            return 21;
        }
        if (i == 26) {
            return 22;
        }
        if (i == 29) {
            return 24;
        }
        if (i == 2000) {
            return 1000;
        }
        switch (i) {
            case 8:
                return 3;
            case 9:
                return 16;
            case 10:
                return 23;
            case 11:
                return 17;
            case 12:
                return 18;
            case 13:
                return 19;
            default:
                switch (i) {
                    case 1001:
                        return 1;
                    case CommonCode.BusInterceptor.PRIVACY_CANCEL /* 1002 */:
                        return 2;
                    case 1003:
                        return 4;
                    case 1004:
                        return 5;
                    case 1005:
                        return 6;
                    case 1006:
                        return 7;
                    case 1007:
                        return 8;
                    case 1008:
                        return 9;
                    case 1009:
                        return 10;
                    case 1010:
                        return 11;
                    default:
                        return 0;
                }
        }
    }

    static List getRouteIds(List list) {
        if (list == null) {
            return new ArrayList();
        }
        ArrayList arrayList = new ArrayList();
        Iterator it = list.iterator();
        while (it.hasNext()) {
            MediaRoute2Info mediaRoute2InfoM = MediaRoute2Provider$$ExternalSyntheticApiModelOutline10.m(it.next());
            if (mediaRoute2InfoM != null) {
                arrayList.add(mediaRoute2InfoM.getId());
            }
        }
        return arrayList;
    }

    static RouteDiscoveryPreference toDiscoveryPreference(MediaRouteDiscoveryRequest mediaRouteDiscoveryRequest) {
        RouteDiscoveryPreference.Builder builder;
        if (mediaRouteDiscoveryRequest == null || !mediaRouteDiscoveryRequest.isValid()) {
            builder = new RouteDiscoveryPreference.Builder(new ArrayList(), false);
        } else {
            boolean zIsActiveScan = mediaRouteDiscoveryRequest.isActiveScan();
            ArrayList arrayList = new ArrayList();
            Iterator it = mediaRouteDiscoveryRequest.getSelector().getControlCategories().iterator();
            while (it.hasNext()) {
                arrayList.add(toRouteFeature((String) it.next()));
            }
            builder = new RouteDiscoveryPreference.Builder(arrayList, zIsActiveScan);
        }
        return builder.build();
    }

    public static MediaRouteDescriptor toMediaRouteDescriptor(MediaRoute2Info mediaRoute2Info) {
        int iFwkDeviceTypeToAndroidXDeviceType;
        if (mediaRoute2Info == null) {
            return null;
        }
        MediaRouteDescriptor.Builder canDisconnect = new MediaRouteDescriptor.Builder(mediaRoute2Info.getId(), mediaRoute2Info.getName().toString()).setConnectionState(mediaRoute2Info.getConnectionState()).setVolumeHandling(mediaRoute2Info.getVolumeHandling()).setVolumeMax(mediaRoute2Info.getVolumeMax()).setVolume(mediaRoute2Info.getVolume()).setExtras(mediaRoute2Info.getExtras()).setEnabled(true).setCanDisconnect(false);
        if (Build.VERSION.SDK_INT >= 34) {
            canDisconnect.setDeduplicationIds(Api34Impl.getDeduplicationIds(mediaRoute2Info));
            iFwkDeviceTypeToAndroidXDeviceType = fwkDeviceTypeToAndroidXDeviceType(Api34Impl.getType(mediaRoute2Info));
        } else {
            iFwkDeviceTypeToAndroidXDeviceType = 0;
        }
        CharSequence description = mediaRoute2Info.getDescription();
        if (description != null) {
            canDisconnect.setDescription(description.toString());
        }
        Uri iconUri = mediaRoute2Info.getIconUri();
        if (iconUri != null) {
            canDisconnect.setIconUri(iconUri);
        }
        Bundle extras = mediaRoute2Info.getExtras();
        if (extras == null || !extras.containsKey("androidx.mediarouter.media.KEY_EXTRAS") || !extras.containsKey("androidx.mediarouter.media.KEY_DEVICE_TYPE") || !extras.containsKey("androidx.mediarouter.media.KEY_CONTROL_FILTERS")) {
            return null;
        }
        canDisconnect.setExtras(extras.getBundle("androidx.mediarouter.media.KEY_EXTRAS"));
        if (iFwkDeviceTypeToAndroidXDeviceType == 0) {
            iFwkDeviceTypeToAndroidXDeviceType = extras.getInt("androidx.mediarouter.media.KEY_DEVICE_TYPE", 0);
        }
        canDisconnect.setDeviceType(iFwkDeviceTypeToAndroidXDeviceType);
        canDisconnect.setPlaybackType(extras.getInt("androidx.mediarouter.media.KEY_PLAYBACK_TYPE", 1));
        ArrayList parcelableArrayList = extras.getParcelableArrayList("androidx.mediarouter.media.KEY_CONTROL_FILTERS");
        if (parcelableArrayList != null) {
            canDisconnect.addControlFilters(parcelableArrayList);
        }
        return canDisconnect.build();
    }

    static String toRouteFeature(String str) {
        str.hashCode();
        switch (str) {
            case "android.media.intent.category.REMOTE_PLAYBACK":
                return "android.media.route.feature.REMOTE_PLAYBACK";
            case "android.media.intent.category.LIVE_AUDIO":
                return "android.media.route.feature.LIVE_AUDIO";
            case "android.media.intent.category.LIVE_VIDEO":
                return "android.media.route.feature.LIVE_VIDEO";
            default:
                return str;
        }
    }
}
