package com.google.firebase.components;

import java.util.Arrays;
import java.util.List;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes.dex */
public class DependencyCycleException extends DependencyException {
    private final List componentsInCycle;

    public DependencyCycleException(List list) {
        super("Dependency cycle detected: " + Arrays.toString(list.toArray()));
        this.componentsInCycle = list;
    }
}
