package org.apache.commons.compress;

import java.io.IOException;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes3.dex */
public class MemoryLimitException extends IOException {
    private final int memoryLimitInKb;
    private final long memoryNeededInKb;

    public MemoryLimitException(long j, int i) {
        super(buildMessage(j, i));
        this.memoryNeededInKb = j;
        this.memoryLimitInKb = i;
    }

    private static String buildMessage(long j, int i) {
        return j + " kb of memory would be needed; limit was " + i + " kb. If the file is not corrupt, consider increasing the memory limit.";
    }
}
