package com.google.android.gms.cast;

import android.graphics.Color;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.cast.internal.CastUtils;
import com.google.android.gms.common.internal.Objects;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.util.JsonUtils;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes.dex */
public final class TextTrackStyle extends AbstractSafeParcelable {
    public static final Parcelable.Creator<TextTrackStyle> CREATOR = new zzds();
    String zza;
    private float zzb;
    private int zzc;
    private int zzd;
    private int zze;
    private int zzf;
    private int zzg;
    private int zzh;
    private int zzi;
    private String zzj;
    private int zzk;
    private int zzl;
    private JSONObject zzm;

    public TextTrackStyle() {
        this(1.0f, 0, 0, -1, 0, -1, 0, 0, null, -1, -1, null);
    }

    TextTrackStyle(float f, int i, int i2, int i3, int i4, int i5, int i6, int i7, String str, int i8, int i9, String str2) {
        this.zzb = f;
        this.zzc = i;
        this.zzd = i2;
        this.zze = i3;
        this.zzf = i4;
        this.zzg = i5;
        this.zzh = i6;
        this.zzi = i7;
        this.zzj = str;
        this.zzk = i8;
        this.zzl = i9;
        this.zza = str2;
        if (str2 == null) {
            this.zzm = null;
            return;
        }
        try {
            this.zzm = new JSONObject(this.zza);
        } catch (JSONException unused) {
            this.zzm = null;
            this.zza = null;
        }
    }

    private static final int zzb(String str) throws NumberFormatException {
        if (str != null && str.length() == 9 && str.charAt(0) == '#') {
            try {
                return Color.argb(Integer.parseInt(str.substring(7, 9), 16), Integer.parseInt(str.substring(1, 3), 16), Integer.parseInt(str.substring(3, 5), 16), Integer.parseInt(str.substring(5, 7), 16));
            } catch (NumberFormatException unused) {
            }
        }
        return 0;
    }

    private static final String zzc(int i) {
        return String.format("#%02X%02X%02X%02X", Integer.valueOf(Color.red(i)), Integer.valueOf(Color.green(i)), Integer.valueOf(Color.blue(i)), Integer.valueOf(Color.alpha(i)));
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof TextTrackStyle)) {
            return false;
        }
        TextTrackStyle textTrackStyle = (TextTrackStyle) obj;
        JSONObject jSONObject = this.zzm;
        boolean z = jSONObject == null;
        JSONObject jSONObject2 = textTrackStyle.zzm;
        if (z != (jSONObject2 == null)) {
            return false;
        }
        return (jSONObject == null || jSONObject2 == null || JsonUtils.areJsonValuesEquivalent(jSONObject, jSONObject2)) && this.zzb == textTrackStyle.zzb && this.zzc == textTrackStyle.zzc && this.zzd == textTrackStyle.zzd && this.zze == textTrackStyle.zze && this.zzf == textTrackStyle.zzf && this.zzg == textTrackStyle.zzg && this.zzh == textTrackStyle.zzh && this.zzi == textTrackStyle.zzi && CastUtils.zze(this.zzj, textTrackStyle.zzj) && this.zzk == textTrackStyle.zzk && this.zzl == textTrackStyle.zzl;
    }

    public void fromJson(JSONObject jSONObject) {
        int i;
        this.zzb = (float) jSONObject.optDouble("fontScale", 1.0d);
        this.zzc = zzb(jSONObject.optString("foregroundColor"));
        this.zzd = zzb(jSONObject.optString("backgroundColor"));
        if (jSONObject.has("edgeType")) {
            String string = jSONObject.getString("edgeType");
            if ("NONE".equals(string)) {
                this.zze = 0;
            } else if ("OUTLINE".equals(string)) {
                this.zze = 1;
            } else if ("DROP_SHADOW".equals(string)) {
                this.zze = 2;
            } else if ("RAISED".equals(string)) {
                this.zze = 3;
            } else if ("DEPRESSED".equals(string)) {
                this.zze = 4;
            }
        }
        this.zzf = zzb(jSONObject.optString("edgeColor"));
        if (jSONObject.has("windowType")) {
            String string2 = jSONObject.getString("windowType");
            if ("NONE".equals(string2)) {
                this.zzg = 0;
            } else if ("NORMAL".equals(string2)) {
                this.zzg = 1;
            } else if ("ROUNDED_CORNERS".equals(string2)) {
                this.zzg = 2;
            }
        }
        this.zzh = zzb(jSONObject.optString("windowColor"));
        if (this.zzg == 2) {
            this.zzi = jSONObject.optInt("windowRoundedCornerRadius", 0);
        }
        this.zzj = CastUtils.optStringOrNull(jSONObject, "fontFamily");
        if (jSONObject.has("fontGenericFamily")) {
            String string3 = jSONObject.getString("fontGenericFamily");
            if ("SANS_SERIF".equals(string3)) {
                this.zzk = 0;
            } else if ("MONOSPACED_SANS_SERIF".equals(string3)) {
                this.zzk = 1;
            } else if ("SERIF".equals(string3)) {
                this.zzk = 2;
            } else if ("MONOSPACED_SERIF".equals(string3)) {
                this.zzk = 3;
            } else if ("CASUAL".equals(string3)) {
                this.zzk = 4;
            } else {
                if (!"CURSIVE".equals(string3)) {
                    i = "SMALL_CAPITALS".equals(string3) ? 6 : 5;
                }
                this.zzk = i;
            }
        }
        if (jSONObject.has("fontStyle")) {
            String string4 = jSONObject.getString("fontStyle");
            if ("NORMAL".equals(string4)) {
                this.zzl = 0;
            } else if ("BOLD".equals(string4)) {
                this.zzl = 1;
            } else if ("ITALIC".equals(string4)) {
                this.zzl = 2;
            } else if ("BOLD_ITALIC".equals(string4)) {
                this.zzl = 3;
            }
        }
        this.zzm = jSONObject.optJSONObject("customData");
    }

    public int getBackgroundColor() {
        return this.zzd;
    }

    public int getEdgeColor() {
        return this.zzf;
    }

    public int getEdgeType() {
        return this.zze;
    }

    public String getFontFamily() {
        return this.zzj;
    }

    public int getFontGenericFamily() {
        return this.zzk;
    }

    public float getFontScale() {
        return this.zzb;
    }

    public int getFontStyle() {
        return this.zzl;
    }

    public int getForegroundColor() {
        return this.zzc;
    }

    public int getWindowColor() {
        return this.zzh;
    }

    public int getWindowCornerRadius() {
        return this.zzi;
    }

    public int getWindowType() {
        return this.zzg;
    }

    public int hashCode() {
        return Objects.hashCode(Float.valueOf(this.zzb), Integer.valueOf(this.zzc), Integer.valueOf(this.zzd), Integer.valueOf(this.zze), Integer.valueOf(this.zzf), Integer.valueOf(this.zzg), Integer.valueOf(this.zzh), Integer.valueOf(this.zzi), this.zzj, Integer.valueOf(this.zzk), Integer.valueOf(this.zzl), String.valueOf(this.zzm));
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        JSONObject jSONObject = this.zzm;
        this.zza = jSONObject == null ? null : jSONObject.toString();
        int iBeginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeFloat(parcel, 2, getFontScale());
        SafeParcelWriter.writeInt(parcel, 3, getForegroundColor());
        SafeParcelWriter.writeInt(parcel, 4, getBackgroundColor());
        SafeParcelWriter.writeInt(parcel, 5, getEdgeType());
        SafeParcelWriter.writeInt(parcel, 6, getEdgeColor());
        SafeParcelWriter.writeInt(parcel, 7, getWindowType());
        SafeParcelWriter.writeInt(parcel, 8, getWindowColor());
        SafeParcelWriter.writeInt(parcel, 9, getWindowCornerRadius());
        SafeParcelWriter.writeString(parcel, 10, getFontFamily(), false);
        SafeParcelWriter.writeInt(parcel, 11, getFontGenericFamily());
        SafeParcelWriter.writeInt(parcel, 12, getFontStyle());
        SafeParcelWriter.writeString(parcel, 13, this.zza, false);
        SafeParcelWriter.finishObjectHeader(parcel, iBeginObjectHeader);
    }

    /* JADX WARN: Removed duplicated region for block: B:60:0x00bc  */
    /* JADX WARN: Removed duplicated region for block: B:68:0x00cf A[Catch: JSONException -> 0x00db, TryCatch #0 {JSONException -> 0x00db, blocks: (B:3:0x0005, B:5:0x0011, B:6:0x001a, B:8:0x001e, B:9:0x0027, B:19:0x003e, B:24:0x004e, B:26:0x0052, B:27:0x005b, B:33:0x0068, B:36:0x0075, B:38:0x0079, B:39:0x0082, B:41:0x0086, B:42:0x008d, B:44:0x0091, B:45:0x0096, B:50:0x00a0, B:57:0x00b6, B:65:0x00c5, B:69:0x00d2, B:71:0x00d6, B:68:0x00cf, B:34:0x006e, B:35:0x0072, B:23:0x004b), top: B:74:0x0005 }] */
    /* JADX WARN: Removed duplicated region for block: B:71:0x00d6 A[Catch: JSONException -> 0x00db, TRY_LEAVE, TryCatch #0 {JSONException -> 0x00db, blocks: (B:3:0x0005, B:5:0x0011, B:6:0x001a, B:8:0x001e, B:9:0x0027, B:19:0x003e, B:24:0x004e, B:26:0x0052, B:27:0x005b, B:33:0x0068, B:36:0x0075, B:38:0x0079, B:39:0x0082, B:41:0x0086, B:42:0x008d, B:44:0x0091, B:45:0x0096, B:50:0x00a0, B:57:0x00b6, B:65:0x00c5, B:69:0x00d2, B:71:0x00d6, B:68:0x00cf, B:34:0x006e, B:35:0x0072, B:23:0x004b), top: B:74:0x0005 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final JSONObject zza() throws JSONException {
        int i;
        JSONObject jSONObject;
        String str;
        String str2;
        String str3;
        JSONObject jSONObject2 = new JSONObject();
        try {
            jSONObject2.put("fontScale", this.zzb);
            int i2 = this.zzc;
            if (i2 != 0) {
                jSONObject2.put("foregroundColor", zzc(i2));
            }
            int i3 = this.zzd;
            if (i3 != 0) {
                jSONObject2.put("backgroundColor", zzc(i3));
            }
            int i4 = this.zze;
            if (i4 != 0) {
                if (i4 == 1) {
                    str3 = "OUTLINE";
                } else if (i4 == 2) {
                    str3 = "DROP_SHADOW";
                } else if (i4 == 3) {
                    str3 = "RAISED";
                } else if (i4 == 4) {
                    str3 = "DEPRESSED";
                }
                jSONObject2.put("edgeType", str3);
            } else {
                jSONObject2.put("edgeType", "NONE");
            }
            int i5 = this.zzf;
            if (i5 != 0) {
                jSONObject2.put("edgeColor", zzc(i5));
            }
            int i6 = this.zzg;
            if (i6 == 0) {
                jSONObject2.put("windowType", "NONE");
            } else if (i6 == 1) {
                jSONObject2.put("windowType", "NORMAL");
            } else if (i6 == 2) {
                jSONObject2.put("windowType", "ROUNDED_CORNERS");
            }
            int i7 = this.zzh;
            if (i7 != 0) {
                jSONObject2.put("windowColor", zzc(i7));
            }
            if (this.zzg == 2) {
                jSONObject2.put("windowRoundedCornerRadius", this.zzi);
            }
            String str4 = this.zzj;
            if (str4 != null) {
                jSONObject2.put("fontFamily", str4);
            }
        } catch (JSONException unused) {
        }
        switch (this.zzk) {
            case 0:
                str2 = "SANS_SERIF";
                jSONObject2.put("fontGenericFamily", str2);
                i = this.zzl;
                if (i == 0) {
                    if (i == 1) {
                        str = "BOLD";
                    } else if (i == 2) {
                        str = "ITALIC";
                    } else if (i == 3) {
                        str = "BOLD_ITALIC";
                    }
                    jSONObject2.put("fontStyle", str);
                } else {
                    jSONObject2.put("fontStyle", "NORMAL");
                }
                jSONObject = this.zzm;
                if (jSONObject != null) {
                    jSONObject2.put("customData", jSONObject);
                }
                return jSONObject2;
            case 1:
                str2 = "MONOSPACED_SANS_SERIF";
                jSONObject2.put("fontGenericFamily", str2);
                i = this.zzl;
                if (i == 0) {
                }
                jSONObject = this.zzm;
                if (jSONObject != null) {
                }
                return jSONObject2;
            case 2:
                str2 = "SERIF";
                jSONObject2.put("fontGenericFamily", str2);
                i = this.zzl;
                if (i == 0) {
                }
                jSONObject = this.zzm;
                if (jSONObject != null) {
                }
                return jSONObject2;
            case 3:
                str2 = "MONOSPACED_SERIF";
                jSONObject2.put("fontGenericFamily", str2);
                i = this.zzl;
                if (i == 0) {
                }
                jSONObject = this.zzm;
                if (jSONObject != null) {
                }
                return jSONObject2;
            case 4:
                str2 = "CASUAL";
                jSONObject2.put("fontGenericFamily", str2);
                i = this.zzl;
                if (i == 0) {
                }
                jSONObject = this.zzm;
                if (jSONObject != null) {
                }
                return jSONObject2;
            case 5:
                str2 = "CURSIVE";
                jSONObject2.put("fontGenericFamily", str2);
                i = this.zzl;
                if (i == 0) {
                }
                jSONObject = this.zzm;
                if (jSONObject != null) {
                }
                return jSONObject2;
            case 6:
                str2 = "SMALL_CAPITALS";
                jSONObject2.put("fontGenericFamily", str2);
                i = this.zzl;
                if (i == 0) {
                }
                jSONObject = this.zzm;
                if (jSONObject != null) {
                }
                return jSONObject2;
            default:
                i = this.zzl;
                if (i == 0) {
                }
                jSONObject = this.zzm;
                if (jSONObject != null) {
                }
                return jSONObject2;
        }
        return jSONObject2;
    }
}
