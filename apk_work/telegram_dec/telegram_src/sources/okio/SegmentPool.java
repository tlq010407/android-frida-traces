package okio;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes3.dex */
abstract class SegmentPool {
    static long byteCount;
    static Segment next;

    static void recycle(Segment segment) {
        if (segment.next != null || segment.prev != null) {
            throw new IllegalArgumentException();
        }
        if (segment.shared) {
            return;
        }
        synchronized (SegmentPool.class) {
            try {
                long j = byteCount;
                if (j + 8192 > 65536) {
                    return;
                }
                byteCount = j + 8192;
                segment.next = next;
                segment.limit = 0;
                segment.pos = 0;
                next = segment;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    static Segment take() {
        synchronized (SegmentPool.class) {
            try {
                Segment segment = next;
                if (segment == null) {
                    return new Segment();
                }
                next = segment.next;
                segment.next = null;
                byteCount -= 8192;
                return segment;
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
