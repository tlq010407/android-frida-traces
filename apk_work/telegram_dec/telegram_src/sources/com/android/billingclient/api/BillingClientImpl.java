package com.android.billingclient.api;

import android.app.Activity;
import android.app.PendingIntent;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.content.pm.ServiceInfo;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.text.TextUtils;
import androidx.appcompat.app.WindowDecorActionBar$$ExternalSyntheticThrowCCEIfNotNull0;
import com.android.billingclient.api.BillingFlowParams;
import com.android.billingclient.api.BillingResult;
import com.android.billingclient.api.QueryProductDetailsParams;
import com.google.android.gms.internal.play_billing.zzb;
import com.google.android.gms.internal.play_billing.zze;
import com.google.android.gms.internal.play_billing.zzfb;
import com.google.android.gms.internal.play_billing.zzfl;
import com.google.android.gms.internal.play_billing.zzfm;
import com.google.android.gms.internal.play_billing.zzz;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.Callable;
import java.util.concurrent.CancellationException;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.Future;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
import org.json.JSONException;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes.dex */
class BillingClientImpl extends BillingClient {
    private volatile int zza;
    private final String zzb;
    private final Handler zzc;
    private volatile zzh zzd;
    private Context zze;
    private zzar zzf;
    private volatile zze zzg;
    private volatile zzaf zzh;
    private boolean zzi;
    private boolean zzj;
    private int zzk;
    private boolean zzl;
    private boolean zzm;
    private boolean zzn;
    private boolean zzo;
    private boolean zzp;
    private boolean zzq;
    private boolean zzr;
    private boolean zzs;
    private boolean zzt;
    private boolean zzu;
    private boolean zzv;
    private boolean zzw;
    private zzbe zzx;
    private boolean zzy;
    private ExecutorService zzz;

    private BillingClientImpl(Context context, zzbe zzbeVar, PurchasesUpdatedListener purchasesUpdatedListener, String str, String str2, AlternativeBillingListener alternativeBillingListener, zzar zzarVar) {
        this.zza = 0;
        this.zzc = new Handler(Looper.getMainLooper());
        this.zzk = 0;
        this.zzb = str;
        initialize(context, purchasesUpdatedListener, zzbeVar, alternativeBillingListener, str, null);
    }

    BillingClientImpl(String str, zzbe zzbeVar, Context context, PurchasesUpdatedListener purchasesUpdatedListener, AlternativeBillingListener alternativeBillingListener, zzar zzarVar) {
        this(context, zzbeVar, purchasesUpdatedListener, zzR(), null, alternativeBillingListener, null);
    }

    BillingClientImpl(String str, zzbe zzbeVar, Context context, zzaz zzazVar, zzar zzarVar) {
        this.zza = 0;
        this.zzc = new Handler(Looper.getMainLooper());
        this.zzk = 0;
        this.zzb = zzR();
        this.zze = context.getApplicationContext();
        zzfl zzflVarZzv = zzfm.zzv();
        zzflVarZzv.zzj(zzR());
        zzflVarZzv.zzi(this.zze.getPackageName());
        this.zzf = new zzaw(this.zze, (zzfm) zzflVarZzv.zzc());
        zzb.zzj("BillingClient", "Billing client should have a valid listener but the provided is null.");
        this.zzd = new zzh(this.zze, null, this.zzf);
        this.zzx = zzbeVar;
    }

    private void initialize(Context context, PurchasesUpdatedListener purchasesUpdatedListener, zzbe zzbeVar, AlternativeBillingListener alternativeBillingListener, String str, zzar zzarVar) {
        this.zze = context.getApplicationContext();
        zzfl zzflVarZzv = zzfm.zzv();
        zzflVarZzv.zzj(str);
        zzflVarZzv.zzi(this.zze.getPackageName());
        if (zzarVar == null) {
            zzarVar = new zzaw(this.zze, (zzfm) zzflVarZzv.zzc());
        }
        this.zzf = zzarVar;
        if (purchasesUpdatedListener == null) {
            zzb.zzj("BillingClient", "Billing client should have a valid listener but the provided is null.");
        }
        this.zzd = new zzh(this.zze, purchasesUpdatedListener, alternativeBillingListener, this.zzf);
        this.zzx = zzbeVar;
        this.zzy = alternativeBillingListener != null;
    }

    static /* synthetic */ zzbj zzN(BillingClientImpl billingClientImpl, String str, int i) {
        zzb.zzi("BillingClient", "Querying owned items, item type: ".concat(String.valueOf(str)));
        ArrayList arrayList = new ArrayList();
        boolean z = true;
        Bundle bundleZzc = zzb.zzc(billingClientImpl.zzn, billingClientImpl.zzv, true, false, billingClientImpl.zzb);
        List list = null;
        String string = null;
        while (true) {
            try {
                Bundle bundleZzj = billingClientImpl.zzn ? billingClientImpl.zzg.zzj(z != billingClientImpl.zzv ? 9 : 19, billingClientImpl.zze.getPackageName(), str, string, bundleZzc) : billingClientImpl.zzg.zzi(3, billingClientImpl.zze.getPackageName(), str, string);
                zzbk zzbkVarZza = zzbl.zza(bundleZzj, "BillingClient", "getPurchase()");
                BillingResult billingResultZza = zzbkVarZza.zza();
                if (billingResultZza != zzat.zzl) {
                    billingClientImpl.zzf.zza(zzaq.zza(zzbkVarZza.zzb(), 9, billingResultZza));
                    return new zzbj(billingResultZza, list);
                }
                ArrayList<String> stringArrayList = bundleZzj.getStringArrayList("INAPP_PURCHASE_ITEM_LIST");
                ArrayList<String> stringArrayList2 = bundleZzj.getStringArrayList("INAPP_PURCHASE_DATA_LIST");
                ArrayList<String> stringArrayList3 = bundleZzj.getStringArrayList("INAPP_DATA_SIGNATURE_LIST");
                boolean z2 = false;
                for (int i2 = 0; i2 < stringArrayList2.size(); i2++) {
                    String str2 = stringArrayList2.get(i2);
                    String str3 = stringArrayList3.get(i2);
                    zzb.zzi("BillingClient", "Sku is owned: ".concat(String.valueOf(stringArrayList.get(i2))));
                    try {
                        Purchase purchase = new Purchase(str2, str3);
                        if (TextUtils.isEmpty(purchase.getPurchaseToken())) {
                            zzb.zzj("BillingClient", "BUG: empty/null token!");
                            z2 = true;
                        }
                        arrayList.add(purchase);
                    } catch (JSONException e) {
                        zzb.zzk("BillingClient", "Got an exception trying to decode the purchase!", e);
                        zzar zzarVar = billingClientImpl.zzf;
                        BillingResult billingResult = zzat.zzj;
                        zzarVar.zza(zzaq.zza(51, 9, billingResult));
                        return new zzbj(billingResult, null);
                    }
                }
                if (z2) {
                    billingClientImpl.zzf.zza(zzaq.zza(26, 9, zzat.zzj));
                }
                string = bundleZzj.getString("INAPP_CONTINUATION_TOKEN");
                zzb.zzi("BillingClient", "Continuation token: ".concat(String.valueOf(string)));
                if (TextUtils.isEmpty(string)) {
                    return new zzbj(zzat.zzl, arrayList);
                }
                list = null;
                z = true;
            } catch (Exception e2) {
                zzar zzarVar2 = billingClientImpl.zzf;
                BillingResult billingResult2 = zzat.zzm;
                zzarVar2.zza(zzaq.zza(52, 9, billingResult2));
                zzb.zzk("BillingClient", "Got exception trying to get purchasesm try to reconnect", e2);
                return new zzbj(billingResult2, null);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final Handler zzO() {
        return Looper.myLooper() == null ? this.zzc : new Handler(Looper.myLooper());
    }

    private final BillingResult zzP(final BillingResult billingResult) {
        if (Thread.interrupted()) {
            return billingResult;
        }
        this.zzc.post(new Runnable() { // from class: com.android.billingclient.api.zzx
            @Override // java.lang.Runnable
            public final void run() {
                this.zza.zzH(billingResult);
            }
        });
        return billingResult;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final BillingResult zzQ() {
        return (this.zza == 0 || this.zza == 3) ? zzat.zzm : zzat.zzj;
    }

    private static String zzR() {
        try {
            return (String) Class.forName("com.android.billingclient.ktx.BuildConfig").getField("VERSION_NAME").get(null);
        } catch (Exception unused) {
            return "6.0.1";
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final Future zzS(Callable callable, long j, final Runnable runnable, Handler handler) {
        if (this.zzz == null) {
            this.zzz = Executors.newFixedThreadPool(zzb.zza, new zzab(this));
        }
        try {
            final Future futureSubmit = this.zzz.submit(callable);
            double d = j;
            Runnable runnable2 = new Runnable() { // from class: com.android.billingclient.api.zzw
                @Override // java.lang.Runnable
                public final void run() {
                    Future future = futureSubmit;
                    Runnable runnable3 = runnable;
                    if (future.isDone() || future.isCancelled()) {
                        return;
                    }
                    future.cancel(true);
                    zzb.zzj("BillingClient", "Async task is taking too long, cancel it!");
                    if (runnable3 != null) {
                        runnable3.run();
                    }
                }
            };
            Double.isNaN(d);
            handler.postDelayed(runnable2, (long) (d * 0.95d));
            return futureSubmit;
        } catch (Exception e) {
            zzb.zzk("BillingClient", "Async task throws exception!", e);
            return null;
        }
    }

    private final void zzU(String str, final PurchasesResponseListener purchasesResponseListener) {
        if (!isReady()) {
            zzar zzarVar = this.zzf;
            BillingResult billingResult = zzat.zzm;
            zzarVar.zza(zzaq.zza(2, 9, billingResult));
            purchasesResponseListener.onQueryPurchasesResponse(billingResult, com.google.android.gms.internal.play_billing.zzu.zzk());
            return;
        }
        if (TextUtils.isEmpty(str)) {
            zzb.zzj("BillingClient", "Please provide a valid product type.");
            zzar zzarVar2 = this.zzf;
            BillingResult billingResult2 = zzat.zzg;
            zzarVar2.zza(zzaq.zza(50, 9, billingResult2));
            purchasesResponseListener.onQueryPurchasesResponse(billingResult2, com.google.android.gms.internal.play_billing.zzu.zzk());
            return;
        }
        if (zzS(new zzy(this, str, purchasesResponseListener), 30000L, new Runnable() { // from class: com.android.billingclient.api.zzu
            @Override // java.lang.Runnable
            public final void run() {
                this.zza.zzL(purchasesResponseListener);
            }
        }, zzO()) == null) {
            BillingResult billingResultZzQ = zzQ();
            this.zzf.zza(zzaq.zza(25, 9, billingResultZzQ));
            purchasesResponseListener.onQueryPurchasesResponse(billingResultZzQ, com.google.android.gms.internal.play_billing.zzu.zzk());
        }
    }

    @Override // com.android.billingclient.api.BillingClient
    public final void consumeAsync(final ConsumeParams consumeParams, final ConsumeResponseListener consumeResponseListener) {
        if (!isReady()) {
            zzar zzarVar = this.zzf;
            BillingResult billingResult = zzat.zzm;
            zzarVar.zza(zzaq.zza(2, 4, billingResult));
            consumeResponseListener.onConsumeResponse(billingResult, consumeParams.getPurchaseToken());
            return;
        }
        if (zzS(new Callable() { // from class: com.android.billingclient.api.zzm
            @Override // java.util.concurrent.Callable
            public final Object call() {
                this.zza.zzk(consumeParams, consumeResponseListener);
                return null;
            }
        }, 30000L, new Runnable() { // from class: com.android.billingclient.api.zzn
            @Override // java.lang.Runnable
            public final void run() {
                this.zza.zzI(consumeResponseListener, consumeParams);
            }
        }, zzO()) == null) {
            BillingResult billingResultZzQ = zzQ();
            this.zzf.zza(zzaq.zza(25, 4, billingResultZzQ));
            consumeResponseListener.onConsumeResponse(billingResultZzQ, consumeParams.getPurchaseToken());
        }
    }

    @Override // com.android.billingclient.api.BillingClient
    public final boolean isReady() {
        return (this.zza != 2 || this.zzg == null || this.zzh == null) ? false : true;
    }

    /* JADX WARN: Removed duplicated region for block: B:120:0x02e7  */
    /* JADX WARN: Removed duplicated region for block: B:123:0x02ef  */
    /* JADX WARN: Removed duplicated region for block: B:126:0x02fa  */
    /* JADX WARN: Removed duplicated region for block: B:127:0x0302  */
    /* JADX WARN: Removed duplicated region for block: B:138:0x0337  */
    /* JADX WARN: Removed duplicated region for block: B:141:0x0342  */
    /* JADX WARN: Removed duplicated region for block: B:145:0x034d  */
    /* JADX WARN: Removed duplicated region for block: B:147:0x0351  */
    /* JADX WARN: Removed duplicated region for block: B:148:0x0354  */
    /* JADX WARN: Removed duplicated region for block: B:43:0x00e6  */
    /* JADX WARN: Removed duplicated region for block: B:46:0x00f9  */
    /* JADX WARN: Removed duplicated region for block: B:49:0x0108  */
    /* JADX WARN: Removed duplicated region for block: B:52:0x0114  */
    /* JADX WARN: Removed duplicated region for block: B:55:0x0130  */
    /* JADX WARN: Removed duplicated region for block: B:58:0x0140  */
    /* JADX WARN: Removed duplicated region for block: B:61:0x014f  */
    /* JADX WARN: Removed duplicated region for block: B:64:0x015e  */
    /* JADX WARN: Removed duplicated region for block: B:66:0x0165  */
    /* JADX WARN: Removed duplicated region for block: B:67:0x016c  */
    /* JADX WARN: Removed duplicated region for block: B:69:0x016f  */
    /* JADX WARN: Removed duplicated region for block: B:72:0x0184  */
    /* JADX WARN: Removed duplicated region for block: B:87:0x01f6  */
    @Override // com.android.billingclient.api.BillingClient
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final BillingResult launchBillingFlow(Activity activity, final BillingFlowParams billingFlowParams) {
        String str;
        String str2;
        Callable callable;
        Runnable runnable;
        Handler handler;
        long j;
        BillingClientImpl billingClientImpl;
        zzar zzarVar;
        BillingResult billingResult;
        int i;
        zzfb zzfbVarZza;
        int iZza;
        boolean z;
        String str3;
        String str4;
        String str5;
        String str6;
        String str7;
        String str8;
        boolean z2;
        Intent intent;
        String str9;
        int i2;
        if (isReady()) {
            ArrayList arrayListZzg = billingFlowParams.zzg();
            List listZzh = billingFlowParams.zzh();
            WindowDecorActionBar$$ExternalSyntheticThrowCCEIfNotNull0.m(zzz.zza(arrayListZzg, null));
            BillingFlowParams.ProductDetailsParams productDetailsParams = (BillingFlowParams.ProductDetailsParams) zzz.zza(listZzh, null);
            final String productId = productDetailsParams.zza().getProductId();
            final String productType = productDetailsParams.zza().getProductType();
            String str10 = "BillingClient";
            if (!productType.equals("subs") || this.zzi) {
                if (billingFlowParams.zzq() && !this.zzl) {
                    zzb.zzj("BillingClient", "Current client doesn't support extra params for buy intent.");
                    zzarVar = this.zzf;
                    billingResult = zzat.zzh;
                    i2 = 18;
                } else if (arrayListZzg.size() > 1 && !this.zzs) {
                    zzb.zzj("BillingClient", "Current client doesn't support multi-item purchases.");
                    zzarVar = this.zzf;
                    billingResult = zzat.zzt;
                    i2 = 19;
                } else if (listZzh.isEmpty() || this.zzt) {
                    if (this.zzl) {
                        boolean z3 = this.zzn;
                        boolean z4 = this.zzy;
                        String str11 = this.zzb;
                        final Bundle bundle = new Bundle();
                        bundle.putString("playBillingLibraryVersion", str11);
                        if (billingFlowParams.zzb() != 0) {
                            iZza = billingFlowParams.zzb();
                        } else {
                            if (billingFlowParams.zza() != 0) {
                                iZza = billingFlowParams.zza();
                            }
                            if (!TextUtils.isEmpty(billingFlowParams.zzc())) {
                                bundle.putString("accountId", billingFlowParams.zzc());
                            }
                            if (!TextUtils.isEmpty(billingFlowParams.zzd())) {
                                bundle.putString("obfuscatedProfileId", billingFlowParams.zzd());
                            }
                            if (billingFlowParams.zzp()) {
                                bundle.putBoolean("isOfferPersonalizedByDeveloper", true);
                            }
                            if (!TextUtils.isEmpty(null)) {
                                bundle.putStringArrayList("skusToReplace", new ArrayList<>(Arrays.asList(null)));
                            }
                            if (!TextUtils.isEmpty(billingFlowParams.zze())) {
                                bundle.putString("oldSkuPurchaseToken", billingFlowParams.zze());
                            }
                            if (!TextUtils.isEmpty(null)) {
                                bundle.putString("oldSkuPurchaseId", null);
                            }
                            if (!TextUtils.isEmpty(billingFlowParams.zzf())) {
                                bundle.putString("originalExternalTransactionId", billingFlowParams.zzf());
                            }
                            if (!TextUtils.isEmpty(null)) {
                                bundle.putString("paymentsPurchaseParams", null);
                            }
                            if (z3) {
                                z = true;
                            } else {
                                z = true;
                                bundle.putBoolean("enablePendingPurchases", true);
                            }
                            if (z4) {
                                bundle.putBoolean("enableAlternativeBilling", z);
                            }
                            str = "BUY_INTENT";
                            if (arrayListZzg.isEmpty()) {
                                ArrayList<String> arrayList = new ArrayList<>();
                                new ArrayList();
                                new ArrayList();
                                new ArrayList();
                                new ArrayList();
                                Iterator it = arrayListZzg.iterator();
                                if (it.hasNext()) {
                                    WindowDecorActionBar$$ExternalSyntheticThrowCCEIfNotNull0.m(it.next());
                                    throw null;
                                }
                                if (!arrayList.isEmpty()) {
                                    bundle.putStringArrayList("skuDetailsTokens", arrayList);
                                }
                                if (arrayListZzg.size() > 1) {
                                    ArrayList<String> arrayList2 = new ArrayList<>(arrayListZzg.size() - 1);
                                    ArrayList<String> arrayList3 = new ArrayList<>(arrayListZzg.size() - 1);
                                    if (1 < arrayListZzg.size()) {
                                        WindowDecorActionBar$$ExternalSyntheticThrowCCEIfNotNull0.m(arrayListZzg.get(1));
                                        throw null;
                                    }
                                    bundle.putStringArrayList("additionalSkus", arrayList2);
                                    bundle.putStringArrayList("additionalSkuTypes", arrayList3);
                                }
                                str4 = "proxyPackageVersion";
                                str5 = productId;
                                str3 = productType;
                                str6 = "BillingClient";
                            } else {
                                ArrayList<String> arrayList4 = new ArrayList<>(listZzh.size() - 1);
                                ArrayList<String> arrayList5 = new ArrayList<>(listZzh.size() - 1);
                                ArrayList<String> arrayList6 = new ArrayList<>();
                                ArrayList<String> arrayList7 = new ArrayList<>();
                                str3 = productType;
                                ArrayList<String> arrayList8 = new ArrayList<>();
                                str4 = "proxyPackageVersion";
                                str5 = productId;
                                int i3 = 0;
                                while (i3 < listZzh.size()) {
                                    BillingFlowParams.ProductDetailsParams productDetailsParams2 = (BillingFlowParams.ProductDetailsParams) listZzh.get(i3);
                                    ProductDetails productDetailsZza = productDetailsParams2.zza();
                                    if (productDetailsZza.zzb().isEmpty()) {
                                        str7 = str10;
                                    } else {
                                        str7 = str10;
                                        arrayList6.add(productDetailsZza.zzb());
                                    }
                                    arrayList7.add(productDetailsParams2.zzb());
                                    if (!TextUtils.isEmpty(productDetailsZza.zzc())) {
                                        arrayList8.add(productDetailsZza.zzc());
                                    }
                                    if (i3 > 0) {
                                        arrayList4.add(((BillingFlowParams.ProductDetailsParams) listZzh.get(i3)).zza().getProductId());
                                        arrayList5.add(((BillingFlowParams.ProductDetailsParams) listZzh.get(i3)).zza().getProductType());
                                    }
                                    i3++;
                                    str10 = str7;
                                }
                                str6 = str10;
                                bundle.putStringArrayList("SKU_OFFER_ID_TOKEN_LIST", arrayList7);
                                if (!arrayList6.isEmpty()) {
                                    bundle.putStringArrayList("skuDetailsTokens", arrayList6);
                                }
                                if (!arrayList8.isEmpty()) {
                                    bundle.putStringArrayList("SKU_SERIALIZED_DOCID_LIST", arrayList8);
                                }
                                if (!arrayList4.isEmpty()) {
                                    bundle.putStringArrayList("additionalSkus", arrayList4);
                                    bundle.putStringArrayList("additionalSkuTypes", arrayList5);
                                }
                            }
                            if (bundle.containsKey("SKU_OFFER_ID_TOKEN_LIST") || this.zzq) {
                                if (productDetailsParams != null || TextUtils.isEmpty(productDetailsParams.zza().zza())) {
                                    str8 = null;
                                    z2 = false;
                                } else {
                                    bundle.putString("skuPackageName", productDetailsParams.zza().zza());
                                    str8 = null;
                                    z2 = true;
                                }
                                if (!TextUtils.isEmpty(str8)) {
                                    bundle.putString("accountName", str8);
                                }
                                intent = activity.getIntent();
                                if (intent != null) {
                                    str2 = str6;
                                    zzb.zzj(str2, "Activity's intent is null.");
                                } else {
                                    str2 = str6;
                                    if (!TextUtils.isEmpty(intent.getStringExtra("PROXY_PACKAGE"))) {
                                        String stringExtra = intent.getStringExtra("PROXY_PACKAGE");
                                        bundle.putString("proxyPackage", stringExtra);
                                        try {
                                            str9 = str4;
                                            try {
                                                bundle.putString(str9, this.zze.getPackageManager().getPackageInfo(stringExtra, 0).versionName);
                                            } catch (PackageManager.NameNotFoundException unused) {
                                                bundle.putString(str9, "package not found");
                                                if (this.zzt) {
                                                }
                                                zzarVar.zza(zzfbVarZza);
                                                zzP(billingResult);
                                                return billingResult;
                                            }
                                        } catch (PackageManager.NameNotFoundException unused2) {
                                            str9 = str4;
                                        }
                                    }
                                }
                                final int i4 = (!this.zzt || listZzh.isEmpty()) ? (this.zzr || !z2) ? !this.zzn ? 9 : 6 : 15 : 17;
                                final String str12 = str5;
                                final String str13 = str3;
                                Callable callable2 = new Callable() { // from class: com.android.billingclient.api.zzs
                                    @Override // java.util.concurrent.Callable
                                    public final Object call() {
                                        return this.zza.zzc(i4, str12, str13, billingFlowParams, bundle);
                                    }
                                };
                                runnable = null;
                                handler = this.zzc;
                                j = 5000;
                                billingClientImpl = this;
                                callable = callable2;
                            } else {
                                zzarVar = this.zzf;
                                billingResult = zzat.zzu;
                                i = 21;
                                zzfbVarZza = zzaq.zza(i, 2, billingResult);
                            }
                        }
                        bundle.putInt("prorationMode", iZza);
                        if (!TextUtils.isEmpty(billingFlowParams.zzc())) {
                        }
                        if (!TextUtils.isEmpty(billingFlowParams.zzd())) {
                        }
                        if (billingFlowParams.zzp()) {
                        }
                        if (!TextUtils.isEmpty(null)) {
                        }
                        if (!TextUtils.isEmpty(billingFlowParams.zze())) {
                        }
                        if (!TextUtils.isEmpty(null)) {
                        }
                        if (!TextUtils.isEmpty(billingFlowParams.zzf())) {
                        }
                        if (!TextUtils.isEmpty(null)) {
                        }
                        if (z3) {
                        }
                        if (z4) {
                        }
                        str = "BUY_INTENT";
                        if (arrayListZzg.isEmpty()) {
                        }
                        if (bundle.containsKey("SKU_OFFER_ID_TOKEN_LIST")) {
                        }
                        if (productDetailsParams != null) {
                            str8 = null;
                            z2 = false;
                            if (!TextUtils.isEmpty(str8)) {
                            }
                            intent = activity.getIntent();
                            if (intent != null) {
                            }
                            if (this.zzt) {
                                if (this.zzr) {
                                    final String str122 = str5;
                                    final String str132 = str3;
                                    Callable callable22 = new Callable() { // from class: com.android.billingclient.api.zzs
                                        @Override // java.util.concurrent.Callable
                                        public final Object call() {
                                            return this.zza.zzc(i4, str122, str132, billingFlowParams, bundle);
                                        }
                                    };
                                    runnable = null;
                                    handler = this.zzc;
                                    j = 5000;
                                    billingClientImpl = this;
                                    callable = callable22;
                                }
                            }
                        }
                    } else {
                        str = "BUY_INTENT";
                        str2 = "BillingClient";
                        callable = new Callable() { // from class: com.android.billingclient.api.zzt
                            @Override // java.util.concurrent.Callable
                            public final Object call() {
                                return this.zza.zzd(productId, productType);
                            }
                        };
                        runnable = null;
                        handler = this.zzc;
                        j = 5000;
                        billingClientImpl = this;
                    }
                    try {
                        Bundle bundle2 = (Bundle) billingClientImpl.zzS(callable, j, runnable, handler).get(5000L, TimeUnit.MILLISECONDS);
                        int iZzb = zzb.zzb(bundle2, str2);
                        String strZzf = zzb.zzf(bundle2, str2);
                        if (iZzb == 0) {
                            Intent intent2 = new Intent(activity, (Class<?>) ProxyBillingActivity.class);
                            String str14 = str;
                            intent2.putExtra(str14, (PendingIntent) bundle2.getParcelable(str14));
                            activity.startActivity(intent2);
                            return zzat.zzl;
                        }
                        zzb.zzj(str2, "Unable to buy item, Error response code: " + iZzb);
                        BillingResult.Builder builderNewBuilder = BillingResult.newBuilder();
                        builderNewBuilder.setResponseCode(iZzb);
                        builderNewBuilder.setDebugMessage(strZzf);
                        BillingResult billingResultBuild = builderNewBuilder.build();
                        this.zzf.zza(zzaq.zza(3, 2, billingResultBuild));
                        zzP(billingResultBuild);
                        return billingResultBuild;
                    } catch (CancellationException e) {
                        e = e;
                        zzb.zzk(str2, "Time out while launching billing flow. Try to reconnect", e);
                        zzarVar = this.zzf;
                        billingResult = zzat.zzn;
                        i = 4;
                        zzfbVarZza = zzaq.zza(i, 2, billingResult);
                        zzarVar.zza(zzfbVarZza);
                        zzP(billingResult);
                        return billingResult;
                    } catch (TimeoutException e2) {
                        e = e2;
                        zzb.zzk(str2, "Time out while launching billing flow. Try to reconnect", e);
                        zzarVar = this.zzf;
                        billingResult = zzat.zzn;
                        i = 4;
                        zzfbVarZza = zzaq.zza(i, 2, billingResult);
                        zzarVar.zza(zzfbVarZza);
                        zzP(billingResult);
                        return billingResult;
                    } catch (Exception e3) {
                        zzb.zzk(str2, "Exception while launching billing flow. Try to reconnect", e3);
                        zzarVar = this.zzf;
                        billingResult = zzat.zzm;
                        i = 5;
                    }
                } else {
                    zzb.zzj("BillingClient", "Current client doesn't support purchases with ProductDetails.");
                    zzarVar = this.zzf;
                    billingResult = zzat.zzv;
                    i2 = 20;
                }
                zzfbVarZza = zzaq.zza(i2, 2, billingResult);
            } else {
                zzb.zzj("BillingClient", "Current client doesn't support subscriptions.");
                zzarVar = this.zzf;
                billingResult = zzat.zzo;
                zzfbVarZza = zzaq.zza(9, 2, billingResult);
            }
        } else {
            zzarVar = this.zzf;
            billingResult = zzat.zzm;
            zzfbVarZza = zzaq.zza(2, 2, billingResult);
        }
        zzarVar.zza(zzfbVarZza);
        zzP(billingResult);
        return billingResult;
    }

    @Override // com.android.billingclient.api.BillingClient
    public final void queryProductDetailsAsync(final QueryProductDetailsParams queryProductDetailsParams, final ProductDetailsResponseListener productDetailsResponseListener) {
        if (!isReady()) {
            zzar zzarVar = this.zzf;
            BillingResult billingResult = zzat.zzm;
            zzarVar.zza(zzaq.zza(2, 7, billingResult));
            productDetailsResponseListener.onProductDetailsResponse(billingResult, new ArrayList());
            return;
        }
        if (this.zzt) {
            if (zzS(new Callable() { // from class: com.android.billingclient.api.zzk
                @Override // java.util.concurrent.Callable
                public final Object call() {
                    this.zza.zzl(queryProductDetailsParams, productDetailsResponseListener);
                    return null;
                }
            }, 30000L, new Runnable() { // from class: com.android.billingclient.api.zzl
                @Override // java.lang.Runnable
                public final void run() {
                    this.zza.zzJ(productDetailsResponseListener);
                }
            }, zzO()) == null) {
                BillingResult billingResultZzQ = zzQ();
                this.zzf.zza(zzaq.zza(25, 7, billingResultZzQ));
                productDetailsResponseListener.onProductDetailsResponse(billingResultZzQ, new ArrayList());
                return;
            }
            return;
        }
        zzb.zzj("BillingClient", "Querying product details is not supported.");
        zzar zzarVar2 = this.zzf;
        BillingResult billingResult2 = zzat.zzv;
        zzarVar2.zza(zzaq.zza(20, 7, billingResult2));
        productDetailsResponseListener.onProductDetailsResponse(billingResult2, new ArrayList());
    }

    @Override // com.android.billingclient.api.BillingClient
    public final void queryPurchasesAsync(QueryPurchasesParams queryPurchasesParams, PurchasesResponseListener purchasesResponseListener) {
        zzU(queryPurchasesParams.zza(), purchasesResponseListener);
    }

    @Override // com.android.billingclient.api.BillingClient
    public final void startConnection(BillingClientStateListener billingClientStateListener) {
        if (isReady()) {
            zzb.zzi("BillingClient", "Service connection is valid. No need to re-initialize.");
            this.zzf.zzb(zzaq.zzb(6));
            billingClientStateListener.onBillingSetupFinished(zzat.zzl);
            return;
        }
        int i = 1;
        if (this.zza == 1) {
            zzb.zzj("BillingClient", "Client is already in the process of connecting to billing service.");
            zzar zzarVar = this.zzf;
            BillingResult billingResult = zzat.zzd;
            zzarVar.zza(zzaq.zza(37, 6, billingResult));
            billingClientStateListener.onBillingSetupFinished(billingResult);
            return;
        }
        if (this.zza == 3) {
            zzb.zzj("BillingClient", "Client was already closed and can't be reused. Please create another instance.");
            zzar zzarVar2 = this.zzf;
            BillingResult billingResult2 = zzat.zzm;
            zzarVar2.zza(zzaq.zza(38, 6, billingResult2));
            billingClientStateListener.onBillingSetupFinished(billingResult2);
            return;
        }
        this.zza = 1;
        this.zzd.zze();
        zzb.zzi("BillingClient", "Starting in-app billing setup.");
        this.zzh = new zzaf(this, billingClientStateListener, null);
        Intent intent = new Intent("com.android.vending.billing.InAppBillingService.BIND");
        intent.setPackage("com.android.vending");
        List<ResolveInfo> listQueryIntentServices = this.zze.getPackageManager().queryIntentServices(intent, 0);
        if (listQueryIntentServices == null || listQueryIntentServices.isEmpty()) {
            i = 41;
        } else {
            ServiceInfo serviceInfo = listQueryIntentServices.get(0).serviceInfo;
            if (serviceInfo != null) {
                String str = serviceInfo.packageName;
                String str2 = serviceInfo.name;
                if (!"com.android.vending".equals(str) || str2 == null) {
                    zzb.zzj("BillingClient", "The device doesn't have valid Play Store.");
                    i = 40;
                } else {
                    ComponentName componentName = new ComponentName(str, str2);
                    Intent intent2 = new Intent(intent);
                    intent2.setComponent(componentName);
                    intent2.putExtra("playBillingLibraryVersion", this.zzb);
                    if (this.zze.bindService(intent2, this.zzh, 1)) {
                        zzb.zzi("BillingClient", "Service was bonded successfully.");
                        return;
                    } else {
                        zzb.zzj("BillingClient", "Connection to Billing service is blocked.");
                        i = 39;
                    }
                }
            }
        }
        this.zza = 0;
        zzb.zzi("BillingClient", "Billing service unavailable on device.");
        zzar zzarVar3 = this.zzf;
        BillingResult billingResult3 = zzat.zzc;
        zzarVar3.zza(zzaq.zza(i, 6, billingResult3));
        billingClientStateListener.onBillingSetupFinished(billingResult3);
    }

    final /* synthetic */ void zzH(BillingResult billingResult) {
        if (this.zzd.zzc() != null) {
            this.zzd.zzc().onPurchasesUpdated(billingResult, null);
        } else {
            this.zzd.zzb();
            zzb.zzj("BillingClient", "No valid listener is set in BroadcastManager");
        }
    }

    final /* synthetic */ void zzI(ConsumeResponseListener consumeResponseListener, ConsumeParams consumeParams) {
        zzar zzarVar = this.zzf;
        BillingResult billingResult = zzat.zzn;
        zzarVar.zza(zzaq.zza(24, 4, billingResult));
        consumeResponseListener.onConsumeResponse(billingResult, consumeParams.getPurchaseToken());
    }

    final /* synthetic */ void zzJ(ProductDetailsResponseListener productDetailsResponseListener) {
        zzar zzarVar = this.zzf;
        BillingResult billingResult = zzat.zzn;
        zzarVar.zza(zzaq.zza(24, 7, billingResult));
        productDetailsResponseListener.onProductDetailsResponse(billingResult, new ArrayList());
    }

    final /* synthetic */ void zzL(PurchasesResponseListener purchasesResponseListener) {
        zzar zzarVar = this.zzf;
        BillingResult billingResult = zzat.zzn;
        zzarVar.zza(zzaq.zza(24, 9, billingResult));
        purchasesResponseListener.onQueryPurchasesResponse(billingResult, com.google.android.gms.internal.play_billing.zzu.zzk());
    }

    final /* synthetic */ Bundle zzc(int i, String str, String str2, BillingFlowParams billingFlowParams, Bundle bundle) {
        return this.zzg.zzg(i, this.zze.getPackageName(), str, str2, null, bundle);
    }

    final /* synthetic */ Bundle zzd(String str, String str2) {
        return this.zzg.zzf(3, this.zze.getPackageName(), str, str2, null);
    }

    final /* synthetic */ Object zzk(ConsumeParams consumeParams, ConsumeResponseListener consumeResponseListener) {
        int iZza;
        String strZzf;
        String purchaseToken = consumeParams.getPurchaseToken();
        try {
            zzb.zzi("BillingClient", "Consuming purchase with token: " + purchaseToken);
            if (this.zzn) {
                zze zzeVar = this.zzg;
                String packageName = this.zze.getPackageName();
                boolean z = this.zzn;
                String str = this.zzb;
                Bundle bundle = new Bundle();
                if (z) {
                    bundle.putString("playBillingLibraryVersion", str);
                }
                Bundle bundleZze = zzeVar.zze(9, packageName, purchaseToken, bundle);
                iZza = bundleZze.getInt("RESPONSE_CODE");
                strZzf = zzb.zzf(bundleZze, "BillingClient");
            } else {
                iZza = this.zzg.zza(3, this.zze.getPackageName(), purchaseToken);
                strZzf = "";
            }
            BillingResult.Builder builderNewBuilder = BillingResult.newBuilder();
            builderNewBuilder.setResponseCode(iZza);
            builderNewBuilder.setDebugMessage(strZzf);
            BillingResult billingResultBuild = builderNewBuilder.build();
            if (iZza == 0) {
                zzb.zzi("BillingClient", "Successfully consumed purchase.");
            } else {
                zzb.zzj("BillingClient", "Error consuming purchase with token. Response code: " + iZza);
                this.zzf.zza(zzaq.zza(23, 4, billingResultBuild));
            }
            consumeResponseListener.onConsumeResponse(billingResultBuild, purchaseToken);
            return null;
        } catch (Exception e) {
            zzb.zzk("BillingClient", "Error consuming purchase!", e);
            zzar zzarVar = this.zzf;
            BillingResult billingResult = zzat.zzm;
            zzarVar.zza(zzaq.zza(29, 4, billingResult));
            consumeResponseListener.onConsumeResponse(billingResult, purchaseToken);
            return null;
        }
    }

    final /* synthetic */ Object zzl(QueryProductDetailsParams queryProductDetailsParams, ProductDetailsResponseListener productDetailsResponseListener) {
        String strZzf;
        int iZzb;
        int i;
        zze zzeVar;
        int i2;
        String packageName;
        Bundle bundle;
        com.google.android.gms.internal.play_billing.zzu zzuVar;
        zzar zzarVar;
        zzfb zzfbVarZza;
        zzar zzarVar2;
        zzfb zzfbVarZza2;
        ArrayList arrayList = new ArrayList();
        String strZzb = queryProductDetailsParams.zzb();
        com.google.android.gms.internal.play_billing.zzu zzuVarZza = queryProductDetailsParams.zza();
        int size = zzuVarZza.size();
        int i3 = 0;
        while (true) {
            if (i3 >= size) {
                strZzf = "";
                iZzb = 0;
                break;
            }
            int i4 = i3 + 20;
            ArrayList arrayList2 = new ArrayList(zzuVarZza.subList(i3, i4 > size ? size : i4));
            ArrayList<String> arrayList3 = new ArrayList<>();
            int size2 = arrayList2.size();
            for (int i5 = 0; i5 < size2; i5++) {
                arrayList3.add(((QueryProductDetailsParams.Product) arrayList2.get(i5)).zza());
            }
            Bundle bundle2 = new Bundle();
            bundle2.putStringArrayList("ITEM_ID_LIST", arrayList3);
            bundle2.putString("playBillingLibraryVersion", this.zzb);
            try {
                zzeVar = this.zzg;
                i2 = true != this.zzw ? 17 : 20;
                packageName = this.zze.getPackageName();
                String str = this.zzb;
                if (TextUtils.isEmpty(null)) {
                    this.zze.getPackageName();
                }
                bundle = new Bundle();
                bundle.putString("playBillingLibraryVersion", str);
                bundle.putBoolean("enablePendingPurchases", true);
                bundle.putString("SKU_DETAILS_RESPONSE_FORMAT", "PRODUCT_DETAILS");
                ArrayList<String> arrayList4 = new ArrayList<>();
                ArrayList<String> arrayList5 = new ArrayList<>();
                int size3 = arrayList2.size();
                zzuVar = zzuVarZza;
                int i6 = 0;
                boolean z = false;
                boolean z2 = false;
                while (i6 < size3) {
                    QueryProductDetailsParams.Product product = (QueryProductDetailsParams.Product) arrayList2.get(i6);
                    ArrayList arrayList6 = arrayList2;
                    arrayList4.add(null);
                    z |= !TextUtils.isEmpty(null);
                    String strZzb2 = product.zzb();
                    int i7 = size3;
                    if (strZzb2.equals("first_party")) {
                        com.google.android.gms.internal.play_billing.zzm.zzc(null, "Serialized DocId is required for constructing ExtraParams to query ProductDetails for all first party products.");
                        arrayList5.add(null);
                        z2 = true;
                    }
                    i6++;
                    size3 = i7;
                    arrayList2 = arrayList6;
                }
                if (z) {
                    bundle.putStringArrayList("SKU_OFFER_ID_TOKEN_LIST", arrayList4);
                }
                if (!arrayList5.isEmpty()) {
                    bundle.putStringArrayList("SKU_SERIALIZED_DOCID_LIST", arrayList5);
                }
                if (z2 && !TextUtils.isEmpty(null)) {
                    bundle.putString("accountName", null);
                }
                i = 7;
            } catch (Exception e) {
                e = e;
                i = 7;
            }
            try {
                Bundle bundleZzl = zzeVar.zzl(i2, packageName, strZzb, bundle2, bundle);
                strZzf = "Item is unavailable for purchase.";
                if (bundleZzl == null) {
                    zzb.zzj("BillingClient", "queryProductDetailsAsync got empty product details response.");
                    zzarVar = this.zzf;
                    BillingResult.Builder builderNewBuilder = BillingResult.newBuilder();
                    builderNewBuilder.setResponseCode(4);
                    builderNewBuilder.setDebugMessage("Item is unavailable for purchase.");
                    zzfbVarZza = zzaq.zza(44, 7, builderNewBuilder.build());
                    break;
                }
                if (bundleZzl.containsKey("DETAILS_LIST")) {
                    ArrayList<String> stringArrayList = bundleZzl.getStringArrayList("DETAILS_LIST");
                    if (stringArrayList == null) {
                        zzb.zzj("BillingClient", "queryProductDetailsAsync got null response list");
                        zzarVar = this.zzf;
                        zzfbVarZza = zzaq.zza(46, 7, zzat.zzB);
                        break;
                    }
                    for (int i8 = 0; i8 < stringArrayList.size(); i8++) {
                        try {
                            ProductDetails productDetails = new ProductDetails(stringArrayList.get(i8));
                            zzb.zzi("BillingClient", "Got product details: ".concat(productDetails.toString()));
                            arrayList.add(productDetails);
                        } catch (JSONException e2) {
                            zzb.zzk("BillingClient", "Got a JSON exception trying to decode ProductDetails. \n Exception: ", e2);
                            zzarVar2 = this.zzf;
                            BillingResult.Builder builderNewBuilder2 = BillingResult.newBuilder();
                            builderNewBuilder2.setResponseCode(6);
                            strZzf = "Error trying to decode SkuDetails.";
                            builderNewBuilder2.setDebugMessage("Error trying to decode SkuDetails.");
                            zzfbVarZza2 = zzaq.zza(47, 7, builderNewBuilder2.build());
                            zzarVar2.zza(zzfbVarZza2);
                            iZzb = 6;
                            BillingResult.Builder builderNewBuilder3 = BillingResult.newBuilder();
                            builderNewBuilder3.setResponseCode(iZzb);
                            builderNewBuilder3.setDebugMessage(strZzf);
                            productDetailsResponseListener.onProductDetailsResponse(builderNewBuilder3.build(), arrayList);
                            return null;
                        }
                    }
                    i3 = i4;
                    zzuVarZza = zzuVar;
                } else {
                    iZzb = zzb.zzb(bundleZzl, "BillingClient");
                    strZzf = zzb.zzf(bundleZzl, "BillingClient");
                    if (iZzb != 0) {
                        zzb.zzj("BillingClient", "getSkuDetails() failed for queryProductDetailsAsync. Response code: " + iZzb);
                        this.zzf.zza(zzaq.zza(23, 7, zzat.zza(iZzb, strZzf)));
                    } else {
                        zzb.zzj("BillingClient", "getSkuDetails() returned a bundle with neither an error nor a product detail list for queryProductDetailsAsync.");
                        zzarVar2 = this.zzf;
                        BillingResult.Builder builderNewBuilder4 = BillingResult.newBuilder();
                        builderNewBuilder4.setResponseCode(6);
                        builderNewBuilder4.setDebugMessage(strZzf);
                        zzfbVarZza2 = zzaq.zza(45, 7, builderNewBuilder4.build());
                    }
                }
            } catch (Exception e3) {
                e = e3;
                zzb.zzk("BillingClient", "queryProductDetailsAsync got a remote exception (try to reconnect).", e);
                this.zzf.zza(zzaq.zza(43, i, zzat.zzj));
                strZzf = "An internal error occurred.";
                iZzb = 6;
                BillingResult.Builder builderNewBuilder32 = BillingResult.newBuilder();
                builderNewBuilder32.setResponseCode(iZzb);
                builderNewBuilder32.setDebugMessage(strZzf);
                productDetailsResponseListener.onProductDetailsResponse(builderNewBuilder32.build(), arrayList);
                return null;
            }
        }
        zzarVar.zza(zzfbVarZza);
        iZzb = 4;
        BillingResult.Builder builderNewBuilder322 = BillingResult.newBuilder();
        builderNewBuilder322.setResponseCode(iZzb);
        builderNewBuilder322.setDebugMessage(strZzf);
        productDetailsResponseListener.onProductDetailsResponse(builderNewBuilder322.build(), arrayList);
        return null;
    }
}
