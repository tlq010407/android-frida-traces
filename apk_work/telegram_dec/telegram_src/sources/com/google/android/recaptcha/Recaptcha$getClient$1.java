package com.google.android.recaptcha;

import kotlin.Result;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.coroutines.jvm.internal.ContinuationImpl;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes.dex */
final class Recaptcha$getClient$1 extends ContinuationImpl {
    /* synthetic */ Object zza;
    final /* synthetic */ Recaptcha zzb;
    int zzc;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    Recaptcha$getClient$1(Recaptcha recaptcha, Continuation continuation) {
        super(continuation);
        this.zzb = recaptcha;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.zza = obj;
        this.zzc |= Integer.MIN_VALUE;
        Object objM132getClientBWLJW6A = this.zzb.m132getClientBWLJW6A(null, null, 0L, this);
        return objM132getClientBWLJW6A == IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED() ? objM132getClientBWLJW6A : Result.m187boximpl(objM132getClientBWLJW6A);
    }
}
