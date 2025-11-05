package io.reactivex.rxjava3.subjects;

import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.core.Observer;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes3.dex */
public abstract class Subject extends Observable implements Observer {
    public final Subject toSerialized() {
        return this instanceof SerializedSubject ? this : new SerializedSubject(this);
    }
}
