package com.google.android.gms.safetynet;

import android.os.Parcel;
import android.os.ParcelFileDescriptor;
import android.os.Parcelable;
import com.google.android.gms.common.data.DataHolder;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import java.io.BufferedOutputStream;
import java.io.Closeable;
import java.io.DataOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes.dex */
public class SafeBrowsingData extends AbstractSafeParcelable {
    public static final Parcelable.Creator<SafeBrowsingData> CREATOR = new zzj();
    private String zzb;
    private DataHolder zzc;
    private ParcelFileDescriptor zzd;
    private long zze;
    private byte[] zzf;
    private byte[] zzg;
    private File zzh;

    public SafeBrowsingData(String str, DataHolder dataHolder, ParcelFileDescriptor parcelFileDescriptor, long j, byte[] bArr) {
        this.zzb = str;
        this.zzc = dataHolder;
        this.zzd = parcelFileDescriptor;
        this.zze = j;
        this.zzf = bArr;
    }

    private static final void zza(Closeable closeable) throws IOException {
        try {
            closeable.close();
        } catch (IOException unused) {
        }
    }

    public ParcelFileDescriptor getFileDescriptor() {
        return this.zzd;
    }

    public long getLastUpdateTimeMs() {
        return this.zze;
    }

    public DataHolder getListsDataHolder() {
        return this.zzc;
    }

    public String getMetadata() {
        return this.zzb;
    }

    public byte[] getState() {
        return this.zzf;
    }

    /* JADX WARN: Removed duplicated region for block: B:27:0x0043  */
    @Override // android.os.Parcelable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void writeToParcel(Parcel parcel, int i) throws Throwable {
        File fileCreateTempFile;
        FileOutputStream fileOutputStream;
        File file = null;
        if (this.zzd == null && this.zzg != null) {
            File file2 = this.zzh;
            if (file2 == null) {
                fileOutputStream = null;
                if (fileOutputStream != null) {
                    DataOutputStream dataOutputStream = new DataOutputStream(new BufferedOutputStream(fileOutputStream));
                    try {
                        dataOutputStream.writeInt(this.zzg.length);
                        dataOutputStream.write(this.zzg);
                        zza(dataOutputStream);
                        i |= 1;
                    } catch (IOException unused) {
                        zza(dataOutputStream);
                    } catch (Throwable th) {
                        zza(dataOutputStream);
                        throw th;
                    }
                }
            } else {
                try {
                    fileCreateTempFile = File.createTempFile("xlb", ".tmp", file2);
                } catch (IOException unused2) {
                    fileCreateTempFile = null;
                } catch (Throwable th2) {
                    th = th2;
                }
                try {
                    fileOutputStream = new FileOutputStream(fileCreateTempFile);
                    this.zzd = ParcelFileDescriptor.open(fileCreateTempFile, 268435456);
                    if (fileCreateTempFile != null) {
                        fileCreateTempFile.delete();
                    }
                } catch (IOException unused3) {
                    if (fileCreateTempFile != null) {
                        fileCreateTempFile.delete();
                    }
                    fileOutputStream = null;
                    if (fileOutputStream != null) {
                    }
                    zzj.zza(this, parcel, i);
                    this.zzd = null;
                } catch (Throwable th3) {
                    th = th3;
                    file = fileCreateTempFile;
                    if (file != null) {
                        file.delete();
                    }
                    throw th;
                }
                if (fileOutputStream != null) {
                }
            }
        }
        zzj.zza(this, parcel, i);
        this.zzd = null;
    }
}
